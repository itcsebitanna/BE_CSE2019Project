
# coding: utf-8

# In[1]:


import pandas as pd
from sklearn.metrics import accuracy_score
from sklearn.metrics import confusion_matrix
from sklearn.metrics import classification_report
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn.linear_model import LogisticRegression
from sklearn.neighbors import KNeighborsClassifier
from sklearn.svm import SVC
from sklearn.naive_bayes import GaussianNB
from sklearn.ensemble import RandomForestClassifier
import matplotlib.pyplot as plt
import numpy as np


# In[2]:


data=pd.read_csv("D:\snt.csv")
data.head()


# In[3]:


data.shape


# In[4]:


data.info


# In[5]:


edu_mapping={'yes':1,'no':0}
data.crops_yield=data.crops_yield.map(edu_mapping)


# In[6]:


data.head()


# In[7]:


data.duplicated()


# In[8]:


x=data[['P_ppm','K_ppm','N_ppm']]
y=data['crops_yield']


# In[9]:


x


# In[10]:


y


# In[11]:


from sklearn.model_selection import train_test_split 


# In[12]:


x_train,x_test,y_train,y_test=train_test_split(x,y,test_size=0.3)


# In[13]:


x_train


# In[14]:


x_test


# In[15]:


y_test


# In[16]:


y_train


# In[17]:



from sklearn.linear_model import LogisticRegression
logreg = LogisticRegression()
logreg.fit(x_train, y_train)
print('Accuracy of Logistic regression classifier on training set: {:.2f}'
     .format(logreg.score(x_train, y_train)))
print('Accuracy of Logistic regression classifier on test set: {:.2f}'
     .format(logreg.score(x_test, y_test)))


# In[18]:


from sklearn.svm import SVC
svm = SVC()
svm.fit(x_train, y_train)
print('Accuracy of SVM classifier on training set: {:.2f}'
     .format(svm.score(x_train, y_train)))
print('Accuracy of SVM classifier on test set: {:.2f}'
     .format(svm.score(x_test, y_test)))


# In[19]:


from sklearn.neighbors import KNeighborsClassifier
knn = KNeighborsClassifier()
knn.fit(x_train, y_train)
print('Accuracy of K-NN classifier on training set: {:.2f}'
     .format(knn.score(x_train, y_train)))
print('Accuracy of K-NN classifier on test set: {:.2f}'
     .format(knn.score(x_test, y_test)))


# In[20]:



from sklearn.metrics import classification_report
from sklearn.metrics import confusion_matrix
pred = knn.predict(x_test)
print(confusion_matrix(y_test, pred))
print(classification_report(y_test, pred))


# In[21]:


pred


# In[22]:


x_test.shape


# In[ ]:




