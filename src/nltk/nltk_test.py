
from nltk.corpus import wordnet as wn
from nltk.stem.wordnet import WordNetLemmatizer
from nltk import word_tokenize, pos_tag
from collections import defaultdict

from nltk.corpus import stopwords

tag_map = defaultdict(lambda : wn.NOUN)
tag_map['J'] = wn.ADJ
tag_map['V'] = wn.VERB
tag_map['R'] = wn.ADV

stopwords = set(stopwords.words('english'))

print(tag_map)

text = " is a totally new kind of learning experience."
text = text.replace(".","")

tokens = word_tokenize(text)
tokens = [w for w in tokens if not w in stopwords]
lemma_function = WordNetLemmatizer()

print(tokens)

for token, tag in pos_tag(tokens):
	lemma = lemma_function.lemmatize(token, tag_map[tag[0]])
	print(token, "=>", lemma)