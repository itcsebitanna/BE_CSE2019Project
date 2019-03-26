
# coding: utf-8

# In[1]:


import pandas as pd
import numpy as np
from nltk.tokenize import word_tokenize
from nltk import pos_tag
from nltk.corpus import stopwords
from nltk.stem import WordNetLemmatizer
from sklearn.preprocessing import LabelEncoder
from collections import defaultdict
from nltk.corpus import wordnet as wn
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn import model_selection, naive_bayes, svm
from sklearn.metrics import accuracy_score


# In[2]:


np.random.seed(500)


# In[3]:


train=pd.read_csv('tweet_train.csv')


# In[4]:


from nltk.corpus import stopwords
stop = stopwords.words('english')
train['TWEET'] = train['TWEET'].apply(lambda x: " ".join(x for x in x.split() if x not in stop))
train['TWEET'].head()


# In[5]:


freq = pd.Series(' '.join(train['TWEET']).split()).value_counts()[:10]
freq


# In[6]:


freq = list(freq.index)
train['TWEET'] = train['TWEET'].apply(lambda x: " ".join(x for x in x.split() if x not in freq))
train['TWEET'].head()


# In[7]:


freq = pd.Series(' '.join(train['TWEET']).split()).value_counts()[-10:]
freq


# In[12]:


from textblob import TextBlob
TextBlob(train['TWEET'][1]).words


# In[13]:


from nltk.stem import PorterStemmer
st = PorterStemmer()
train['TWEET'][:5].apply(lambda x: " ".join([st.stem(word) for word in x.split()]))


# In[14]:


from textblob import Word
train['TWEET'] = train['TWEET'].apply(lambda x: " ".join([Word(word).lemmatize() for word in x.split()]))
train['TWEET'].head()


# In[15]:


from nltk import pos_tag
text=train['TWEET'].str.split().map(pos_tag)
text.head()
                                


# In[16]:


train['sentiment'] = train['TWEET'].apply(lambda x: TextBlob(x).sentiment[0] )
train[['TWEET','sentiment']].head()


# In[17]:


Train_X, Test_X, Train_Y, Test_Y = model_selection.train_test_split(train['TWEET'],train['POLARITY'],test_size=0.3)


# In[18]:


Encoder = LabelEncoder()
Train_Y = Encoder.fit_transform(Train_Y)
Test_Y = Encoder.fit_transform(Test_Y)


# In[19]:


Tfidf_vect = TfidfVectorizer(max_features=1500)
Tfidf_vect.fit(train['TWEET'])
Train_X_Tfidf = Tfidf_vect.transform(Train_X)
Test_X_Tfidf = Tfidf_vect.transform(Test_X)


# In[20]:


print(Tfidf_vect.vocabulary_)


# In[21]:


print(Train_X_Tfidf)


# In[22]:


Naive = naive_bayes.MultinomialNB()
Naive.fit(Train_X_Tfidf,Train_Y)
predictions_NB = Naive.predict(Test_X_Tfidf)
print("Naive Bayes Accuracy Score -> ",accuracy_score(predictions_NB, Test_Y)*100)


# In[23]:


SVM = svm.SVC(C=1.0, kernel='linear', degree=3, gamma='auto')
SVM.fit(Train_X_Tfidf,Train_Y)
predictions_SVM = SVM.predict(Test_X_Tfidf)
print("SVM Accuracy Score -> ",accuracy_score(predictions_SVM, Test_Y)*100)


# In[24]:


from sklearn.metrics import confusion_matrix 
from sklearn.metrics import accuracy_score 
from sklearn.metrics import classification_report 
actual = Test_Y
predicted = predictions_SVM
results = confusion_matrix(actual, predicted) 
print ('Confusion Matrix :')
print(results) 
print ('Accuracy Score :',accuracy_score(actual, predicted)) 
print ('Report : ')
print (classification_report(actual, predicted)) 

