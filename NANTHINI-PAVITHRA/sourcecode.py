
# coding: utf-8

# In[2]:


import pandas as pd
df=pd.read_csv("villasrvey.csv")
df.head()


# In[3]:


import matplotlib.pyplot as plt
get_ipython().run_line_magic('matplotlib', 'inline')


# In[7]:


plt.scatter(df['villagename'],df['Education'])


# In[8]:


plt.scatter(df['villagename'],df['schoolcollegedifficulties'])


# In[9]:


plt.scatter(df['villagename'],df['healthcare'])


# In[10]:


plt.scatter(df['villagename'],df['waterfacility'])


# In[11]:


plt.scatter(df['villagename'],df['cleanwaterdifficulties'])


# In[12]:


plt.scatter(df['villagename'],df['transport'])


# In[13]:


plt.scatter(df['villagename'],df['difficultiesinsocialactivities'])


# In[14]:


plt.scatter(df['villagename'],df['socialsolidarity'])


# In[15]:


plt.scatter(df['villagename'],df['roadfacilities'])


# In[16]:


plt.scatter(df['villagename'],df['electricity'])


# In[17]:


plt.scatter(df['villagename'],df['governmentoffer'])


# In[18]:


plt.scatter(df['villagename'],df['managementfacilities'])


# In[19]:


plt.scatter(df['villagename'],df['employmentdifficulties'])


# In[20]:


plt.scatter(df['villagename'],df['awaresocialmedia'])


# In[21]:


plt.scatter(df['villagename'],df['library'])


# In[22]:


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
from sklearn.svm import LinearSVC
from sklearn.ensemble import RandomForestClassifier
import matplotlib.pyplot as plt
import numpy as np


# In[24]:


df.head()


# In[26]:


df.shape


# In[28]:


df.info


# In[30]:


edu_mapping={'yes':1,'medium':2,'no':0}
df.Education =df.Education.map(edu_mapping)


# In[31]:


df.head()


# In[32]:


dif_mapping={'yes':1,'medium':2,'no':0}
df.schoolcollegedifficulties =df.schoolcollegedifficulties.map(dif_mapping)


# In[33]:


edu_mapping={'yes':1,'medium':2,'no':0}
df.healthcare =df.healthcare.map(edu_mapping)


# In[34]:


edu_mapping={'yes':1,'medium':2,'no':0}
df.waterfacility =df.waterfacility.map(edu_mapping)


# In[35]:


df.head()


# In[36]:


edu_mapping={'yes':1,'medium':2,'no':0}
df.cleanwaterdifficulties =df.cleanwaterdifficulties.map(edu_mapping)


# In[37]:


edu_mapping={'yes':1,'medium':2,'no':0}
df.transport =df.transport.map(edu_mapping)


# In[38]:


edu_mapping={'yes':1,'medium':2,'no':0}
df.difficultiesinsocialactivities =df.difficultiesinsocialactivities.map(edu_mapping)


# In[39]:


edu_mapping={'yes':1,'medium':2,'no':0}
df.socialsolidarity =df.socialsolidarity.map(edu_mapping)


# In[40]:


edu_mapping={'yes':1,'medium':2,'no':0}
df.roadfacilities =df.roadfacilities.map(edu_mapping)


# In[41]:


edu_mapping={'yes':1,'medium':2,'no':0}
df.electricity =df.electricity.map(edu_mapping)


# In[42]:


edu_mapping={'yes':1,'medium':2,'no':0}
df.governmentoffer =df.governmentoffer.map(edu_mapping)


# In[43]:


edu_mapping={'yes':1,'medium':2,'no':0}
df.managementfacilities =df.managementfacilities.map(edu_mapping)


# In[44]:


edu_mapping={'yes':1,'medium':2,'no':0}
df.employmentdifficulties =df.employmentdifficulties.map(edu_mapping)


# In[45]:


edu_mapping={'yes':1,'medium':2,'no':0}
df.awaresocialmedia =df.awaresocialmedia.map(edu_mapping)


# In[46]:


edu_mapping={'yes':1,'medium':2,'no':0}
df.library =df.library.map(edu_mapping)


# In[47]:


edu_mapping={'yes':1,'medium':2,'no':0}
df.sanitation =df.sanitation.map(edu_mapping)


# In[49]:


df.head()


# In[50]:


result_mapping={'yes':1,'no':0}
df.smart =df.smart.map(result_mapping)


# In[51]:


df.head()


# In[53]:


df.duplicated()


# In[56]:


x=df[['S.No','Education','schoolcollegedifficulties','healthcare','waterfacility','cleanwaterdifficulties','transport','difficultiesinsocialactivities','socialsolidarity','roadfacilities','roadfacilities','electricity','governmentoffer','managementfacilities','employmentdifficulties','awaresocialmedia','library','sanitation']]
y=df['smart']


# In[57]:


x


# In[58]:


y


# In[59]:


from sklearn.model_selection import train_test_split


# In[60]:


x_train, x_test, y_train, y_test =train_test_split(x,y,test_size=0.3)


# In[61]:


x_train


# In[62]:


y_train


# In[63]:


x_test


# In[64]:


y_test


# In[66]:


x_train[x_train.dtypes[(x_train.dtypes=="float64")|(y_train.dtypes=="int64")].index.values].hist(figsize=[11,11])


# In[67]:


from sklearn.svm import SVC


# In[68]:


model_all=SVC()


# In[69]:


model_all.fit(x_train,y_train)


# In[70]:


y_pred=model_all.predict(x_test)


# In[71]:


confusion_matrix(y_test,y_pred)


# In[72]:


y_pred


# In[73]:


accuracy_score(y_test,y_pred)


# In[77]:


from sklearn.neighbors import KNeighborsClassifier
knn=KNeighborsClassifier(n_neighbors=5)
knn.fit(x_train[['S.No','Education','schoolcollegedifficulties','healthcare','waterfacility','cleanwaterdifficulties','transport','difficultiesinsocialactivities','socialsolidarity','roadfacilities','roadfacilities','electricity','governmentoffer','managementfacilities','employmentdifficulties','awaresocialmedia','library','sanitation']],y_train)
from sklearn.metrics import accuracy_score
accuracy_score(y_test,knn.predict(x_test[['S.No','Education','schoolcollegedifficulties','healthcare','waterfacility','cleanwaterdifficulties','transport','difficultiesinsocialactivities','socialsolidarity','roadfacilities','roadfacilities','electricity','governmentoffer','managementfacilities','employmentdifficulties','awaresocialmedia','library','sanitation']]))


# In[78]:


from sklearn.neighbors import KNeighborsClassifier


# In[79]:



knn=KNeighborsClassifier(n_neighbors=5)


# In[80]:


knn.fit(x_train[['S.No','Education','schoolcollegedifficulties','healthcare','waterfacility','cleanwaterdifficulties','transport','difficultiesinsocialactivities','socialsolidarity','roadfacilities','roadfacilities','electricity','governmentoffer','managementfacilities','employmentdifficulties','awaresocialmedia','library','sanitation']],y_train)


# In[81]:


from sklearn.metrics import accuracy_score


# In[82]:


from sklearn.metrics import accuracy_score
accuracy_score(y_test,knn.predict(x_test[['S.No','Education','schoolcollegedifficulties','healthcare','waterfacility','cleanwaterdifficulties','transport','difficultiesinsocialactivities','socialsolidarity','roadfacilities','roadfacilities','electricity','governmentoffer','managementfacilities','employmentdifficulties','awaresocialmedia','library','sanitation']]))

