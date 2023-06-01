def get_unique_list_f(lst):
    """
    Takes a list as an argument and returns a new list with unique elements from the first list.

    Parameters:
    lst (list): The input list.

    Returns:
    list: A new list with unique elements from the input list.
    """
    # your code goes here
    
    #output_list = []
    
    #out_list.append(set(lst))
    #return ("this is a unique list:" + set(lst))
    
    output_list = set(lst)
    return (output_list)

def count_case_f(string):
    str={'Upper case count' :0, 'Lower case count':0}
    for i in string:
        if i.isupper():
           str['Upper case count']+=1
        elif i.islower():
           str['Lower case count']+=1
        else:
           pass
    return (str)
count_case_f('Hello World')


import string

def remove_punctuation_f(sentence):
    """
    Removes all punctuation marks (commas, periods, exclamation marks, question marks) from a sentence.

    Parameters:
    sentence (str): A string representing a sentence.

    Returns:
    str: The sentence without any punctuation marks.
    """
    # your code goes here
 
  
 
    new_sentence = sentence.translate(str.maketrans('', '', string.punctuation))
    
    return (new_sentence)


    import string

def word_count_f(sentence):
    """
    Counts the number of words in a given sentence. To do this properly, first it removes punctuation from the sentence.
    Note: A word is defined as a sequence of characters separated by spaces. We can assume that there will be no leading or trailing spaces in the input sentence.
    
    Parameters:
    sentence (str): A string representing a sentence.

    Returns:
    int: The number of words in the sentence.
    """
    # your code goes here
    
    without= remove_punctuation(sentence)
    countentence = str(len(without.split()))
    
    
    
   # given_sentence_counts = len(given_sentence)
    
    return ("would give you as expected output:" + str(countentence))