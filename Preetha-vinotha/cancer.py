
# coding: utf-8

# In[2]:


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score, classification_report, confusion_matrix


# In[4]:


raw_data=pd.read_csv('breast-cancer-wisconsin-data.csv',delimiter=',')
raw_data.head(10)


# In[12]:


raw_data.shape


# In[13]:


raw_data.info()


# In[15]:


sns.pairplot(raw_data,hue='Diagnosis',vars=['Mean Radius','Mean Texture','Mean Perimeter','Mean Area','Mean Smoothness','Mean Compactness', 
'Mean Concavity','Mean Concave points','Mean Symmetry','Mean Fractal dimension'])         


# In[16]:


sns.countplot(raw_data['Diagnosis'])


# In[17]:


plt.figure(figsize=(20,9))
sns.heatmap(raw_data.corr(),annot=True)


# In[19]:


cancer_mapping={'Benign':0,'Malign':1}
raw_data.Diagnosis= raw_data.Diagnosis.map(cancer_mapping)
raw_data.duplicated()


# In[20]:


y=raw_data['Diagnosis']
x=raw_data[['Mean Radius','Mean Texture','Mean Perimeter','Mean Area','Mean Smoothness','Mean Compactness','Mean Concavity','Mean Concave points','Mean Symmetry','Mean Fractal dimension']]


# In[22]:


from sklearn.model_selection import train_test_split 
x_train, x_test, y_train, y_test=train_test_split(x, y, test_size=0.2)


# In[29]:


from sklearn.neighbors import KNeighborsClassifier
from sklearn.datasets import load_breast_cancer
from sklearn.model_selection import train_test_split
cancer=load_breast_cancer()
knn=KNeighborsClassifier()
knn.fit(x_train,y_train)
print('accuracy of KNN n=5, on the training set:(:,3f)',format(knn.score (x_train,y_train)))
print('accuracy of KNN n=5, on the test set:(:,3f)',format(knn.score(x_test,y_test)))


# In[46]:


from sklearn.datasets import load_breast_cancer
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt
get_ipython().run_line_magic('matplotlib', 'inline')
cancer=load_breast_cancer()
x_train,x_test,y_train,y_test=train_test_split(cancer.data,cancer.target, stratify= cancer.target,random_state=42)
forest=RandomForestClassifier(n_estimators=100,random_state=0)
forest.fit(x_train,y_train)

print('accuracy on the training subset:(:,3f)',format(forest.score (x_train,y_train)))
print('accuracy on the test subset:(:,3f)',format(forest.score(x_test,y_test)))


# In[50]:


from sklearn.datasets import load_breast_cancer
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt
get_ipython().run_line_magic('matplotlib', 'inline')
cancer=load_breast_cancer()
log_reg=LogisticRegression()
log_reg.fit(x_train,y_train)
print('accuracy on the training subset:(:,3f)',format
(log_reg.score(x_train,y_train)))
print('accuracy on the test subset:(:,3f)',format
(log_reg.score(x_test,y_test)))


# In[51]:


from sklearn.datasets import load_breast_cancer
from sklearn.tree import DecisionTreeClassifier
from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt
get_ipython().run_line_magic('matplotlib', 'inline')
cancer=load_breast_cancer()
tree=DecisionTreeClassifier(random_state=0)
tree.fit(x_train,y_train)
print('accuracy on the training subset:(:,3f)',format
(tree.score(x_train,y_train)))
print('accuracy on the test subset:(:,3f)',format(tree.score(x_test,y_test)))


# In[52]:


from sklearn.datasets import load_breast_cancer
from sklearn.neural_network import MLPClassifier
from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt
get_ipython().run_line_magic('matplotlib', 'inline')
cancer=load_breast_cancer()
mlp=MLPClassifier(random_state=42)
mlp.fit(x_train,y_train)
print('accuracy on the training subset:(:,3f)',format(mlp.score(x_train,y_train)))
print('accuracy on the test subset:(:,3f)',format(mlp.score(x_test,y_test)))


# In[55]:


from sklearn.datasets import load_breast_cancer
from sklearn.svm import SVC
from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt
get_ipython().run_line_magic('matplotlib', 'inline')
cancer=load_breast_cancer()
svm=SVC()
svm.fit(x_train,y_train)

print('accuracy on the training subset:(:,3f)',format (svm.score (x_train, y_train)))
print('accuracy on the test subset: (:,3f)',format(svm.score(x_test, y_test)))

