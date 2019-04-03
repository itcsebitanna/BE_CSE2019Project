from flask import Flask, render_template, request, redirect, url_for
import numpy as np

app = Flask(__name__)

# X = (hours studying, hours sleeping), y = score on test, xPredicted = 4 hours studying & 8 hours sleeping (input data for prediction)
X = np.array(([2, 9], [1, 5], [3, 6], [5,7]), dtype=float)

#print("axis 0:",np.amax(X, axis=0))
y = np.array(([92], [86], [89], [95]), dtype=float)
xPredicted = np.array(([4,8]), dtype=float)


# scale units
X = X/np.amax(X, axis=0) # maximum of X array

#print(np.amax(xPredicted, axis=0))

xPredicted = xPredicted/np.amax(xPredicted, axis=0) # maximum of xPredicted (our input data for the prediction)

y = y/100 # max test score is 100

class Neural_Network(object):
  def __init__(self):
  #parameters
    self.inputSize = 2
    self.outputSize = 1
    self.hiddenLayer1 = 20
    self.hiddenLayer2 = 20

  #weights                                        
    self.W1 = np.random.randn(self.inputSize, self.hiddenLayer1) # (3x2) weight matrix from input to hidden layer
    #print("W1:",self.W1)
    self.W2 = np.random.randn(self.hiddenLayer1, self.hiddenLayer2) # (3x1) weight matrix from hidden to output layer
    #print("W2:",self.W2)
    self.W3 = np.random.randn(self.hiddenLayer2, self.outputSize)


    
  def forward(self, X):
    #forward propagation through our network
    self.z = np.dot(X, self.W1) # dot product of X (input) and first set of 3x2 weights
    self.z2 = self.sigmoid(self.z)
    self.z3 = np.dot(self.z2, self.W2)
    self.z4 = self.sigmoid(self.z3) # activation function
    self.z5 = np.dot(self.z4, self.W3) # dot product of hidden layer (z2) and second set of 3x1 weights
    o = self.sigmoid(self.z5) # final activation function
    return o

  def sigmoid(self, s):
    # activation function
    return 1/(1+np.exp(-s))

  def sigmoidPrime(self, s):
    #derivative of sigmoid
    return s * (1 - s)

  def backward(self, X, y, o):
    # backward propagate through the network
    self.o_error = y - o # error in output
    self.o_delta = self.o_error*self.sigmoidPrime(o) # applying derivative of sigmoid to error

    self.z4_error = self.o_delta.dot(self.W3.T)
    self.z4_delta = self.z4_error*self.sigmoidPrime(self.z4)
    
    self.z2_error = self.z4_delta.dot(self.W2.T) # z2 error: how much our hidden layer weights contributed to output error
    self.z2_delta = self.z2_error*self.sigmoidPrime(self.z2) # applying derivative of sigmoid to z2 error

    self.W1 += X.T.dot(
      self.z2_delta) # adjusting first set (input --> hidden) weights
    self.W2 += self.z2.T.dot(self.z4_delta) # adjusting second set (hidden --> output) weights
    self.W3 += self.z2.T.dot(self.o_delta)


  def train(self, X, y):
    o = self.forward(X)
    self.backward(X, y, o)

  def saveWeights(self):
    np.savetxt("w1.txt", self.W1, fmt="%s")
    np.savetxt("w2.txt", self.W2, fmt="%s")

  def predict(self):
    print("Predicted data based on trained weights:" )
    print("Input (scaled): \n" + str(xPredicted)) 
    print("Output: \n" + str(self.forward(xPredicted)))
 
NN = Neural_Network()
out = NN.forward(xPredicted)

@app.route('/')
def login():
  
  return render_template('login2.html')

@app.route('/login', methods=['GET', 'POST'])
def login1():
  if request.form['nm']=='admin' and request.form['password']=='admin':
     return redirect(url_for('neural_test'))
  else:
    return render_template('error.html')

p = []
c = []
d = []
@app.route('/neural', methods=['GET','POST'])
def neural_test():
  
     for i in range(1000): # trains the NN 1,000 times
        print("# " + str(i) + "\n")
        print("Input (scaled): \n" + str(X))
        print("Actual Output: \n" + str(y))
        p.append(NN.forward(X))
        print("Predicted Output: \n" + str(NN.forward(X)))
        print("Loss: \n" + str(np.mean(np.square(y - NN.forward(X))))) # mean sum squared loss
        print("\n")
        NN.train(X, y)
     for i in range(5):
         c.append(p[i])
          
     for i in range(len(p)):
         if i>994:
            d.append(p[i])
             
     return render_template('train.html', name = c, out =d)
           
     print(np.square(y - NN.forward(X)))
     NN.saveWeights()
     NN.predict()



@app.route('/new', methods=['GET','POST'])
def new_fun():
    #out = NN.forward(xPredicted)
    if request.method == 'POST':
        return render_template('predict.html' ,name = out)

if __name__ == '__main__':
    app.run(debug=True)

