import csv

file_path = input()
file_path = file_path[1:] # to eliminate weird start of path when getting it from shell script -> "\t\t/home/" 

definitions = []
terms = []
definition = ""

with open(file_path) as d_md:
    for line in d_md:
        if line.startswith("**"):
            line = line.replace('*', '')
            terms.append(line)
            definitions.append(definition)
            definition = ""
        else:
            if line != '\n':
                line = line.replace('"', "'")
                if definition == "":
                    definition += line
                else:
                    definition += "<br>" + line

header = definitions.pop(0)

with open(file_path+"-anki.csv", 'w', newline='') as csvfile:
    definitions_csv = csv.writer(csvfile, delimiter=',', quoting=csv.QUOTE_MINIMAL)
    for term, definition in zip(terms, definitions):
        definitions_csv.writerow([term, definition])
