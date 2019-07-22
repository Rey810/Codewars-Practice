#Enumerable collect

#changes each character in string to a letter 13 places down the alphabet
def rot13(secret_messages)
    secret_messages.map { |char| char.tr("a-z", n-za-m") }
end