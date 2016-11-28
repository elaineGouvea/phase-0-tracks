festival = {
	band_1:{
		band_name: 'Band of the Lonely Voice',
		integrants: {
			singer: 'John Gohn',
			drummer: 'Sheyla Jones',
			bass: 'Ashton Fillmore',
			guitar: 'Jeannie Felton',
			clarinet: 'Felix Smith',
			sax: 'Gilbert Zanne'
		},
		instruments: [
			'drum', 
			'conga', 
			'bass', 
			'electric guitar',
			'7-string guitar',
			'clarinet',
			'saxophone'
		],
		genre: 'Emo rock',
	},
	band_2: {
		band_name: 'Sound of Souls',
		integrants: {
			singer: 'David Goslin',
			xylophone: 'Steve Hanson',
			bass: 'Ryan Henessy',
			cello: 'Tyler Franz',
			violin: 'Andie Croix'
		},
		instruments: [
			'xylophone', 
			'bass', 
			'cello',
			'violin'
		],
		genre: 'Opera pop',
	},
	band_3: {
		band_name: 'Forro do Bom',
		integrants: {
			singer: 'Everton Silva',
			triangle: 'Jose Guimaraes',
			percussion: 'Jose Guimaraes',
			concertina: 'Celestino Souza'
		},
		instruments: [
			'triangle', 
			'concertina', 
			'bass drum'
		],
		genre: 'Forro',
	},
}

puts festival[:band_1][:band_name]

puts festival[:band_2][:instruments][0]

puts festival[:band_3][:integrants][:concertina]

puts festival[:band_1][:instruments]

puts festival[:band_3][:genre]

# Print all hash keys
puts festival.keys

# Print all hash values
puts festival.values

