import glob
import urllib

sources = [
	'http://phasmida.myspecies.info/interactions.txt',
        'http://phthiraptera.info/interactions.txt',
        'http://britishfleas.myspecies.info/interactions.txt',
	'http://hosts.myspecies.info/interactions.txt'
	]

i = 0;
for source in sources:
	dl = urllib.URLopener();
	dl.retrieve(source, 'files/'+str(i)+'.csv')
	i += 1

dl_files = glob.glob("files/*.csv") 

header_saved = False
with open('output.csv','wb') as fout:
    for filename in dl_files:
        with open(filename) as fin:
            header = next(fin)
            if not header_saved:
                fout.write(header)
                header_saved = True
            for line in fin:
                fout.write(line)
