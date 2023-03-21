#!/usr/bin/env python
# coding: utf-8

# In[31]:


import pandas as pd
import numpy as np


# In[65]:


import csv

# define the dataset as a list of lists

data=pd.read_csv(r"C:\Users\shash\Downloads\farming_tools (1).csv")
numbers = []
for i in range(1, 13):
    numbers.append(i)
data['index']=numbers


# In[69]:


data


# In[70]:


data['Tool'].value_counts()


# In[71]:


# cultivator , rake , plough , sprayer , hoe


# In[73]:


import pandas as pd
import numpy as np
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity

# Load the product data from a CSV file
df_products=data
# Preprocess the product descriptions
tfidf = TfidfVectorizer(stop_words='english')
df_products['Functionality'] = df_products['Functionality'].fillna('')
tfidf_matrix = tfidf.fit_transform(df_products['Functionality'])
cosine_sim = cosine_similarity(tfidf_matrix, tfidf_matrix)

# Define a function to get product recommendations
def get_recommendations(product_id, num_recommendations=5):
    # Get the index of the product
    product_index = df_products[df_products['index'] == product_id].index[0]

    # Get the pairwise similarities between products
    sim_scores = list(enumerate(cosine_sim[product_index]))

    # Sort the products based on their similarity scores
    sim_scores = sorted(sim_scores, key=lambda x: x[1], reverse=True)

    # Get the top recommended products
    top_products = sim_scores[1:num_recommendations+1]
    top_product_indices = [i[0] for i in top_products]
    return df_products.iloc[top_product_indices]['Tool'].values

# Test the recommendation function
from Flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/recommendations')
def get_recommendations():
    product_id = request.args.get('productId')
    # Use the product ID to get the recommended products using your model
    recommended_products = get_recommendations(product_id)
    response = {
        "recommended_products": recommended_products
    }
    return jsonify(response)

if __name__ == '__main__':
    app.run()

#recommended_products = get_recommendations(product_id)
#print(f"Recommended products for {df_products.iloc[product_id]['Tool']}:")
#print(recommended_products)


# In[ ]:





# In[ ]:




