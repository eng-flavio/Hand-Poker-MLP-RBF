import numpy as np
from sklearn.metrics import confusion_matrix
from scikitplot.metrics import plot_confusion_matrix as confplot
from sklearn.model_selection import cross_val_score
from sklearn.decomposition import PCA
from sklearn.model_selection import cross_val_predict
import matplotlib.pyplot as plt

Banco_Treino = np.load('poker-hand-testing.data') #treino
Banco_Teste = np.load('poker-hand-training-true.data') #teste

Treino = Banco_Treino[:][1:10]
Treino_rotulos = Banco_Treino[:][11]

Teste = Banco_Teste[:][1:10]
Teste_rotulos = Banco_Teste[:][11]


clf = MLPClassifier(solver='adam', activation='logistic', alpha=1e-7, hidden_layer_sizes=(100,)) #MLP




score = cross_val_score(clf,Treino,Treino_rotulos)
print((score))
print(score.mean())
y_pred = cross_val_predict(clf, Banco, rotulos, cv=10)
conf_mat = confusion_matrix(rotulos, y_pred)
print(conf_mat)
confplot(rotulos,y_pred,normalize=True)
plt.show()



#clf.fit(Banco,rotulos)
#plot_confusion_matrix(clf,Banco,rotulos)
#plt.show()
