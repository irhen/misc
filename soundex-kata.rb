def soundex(names)
	names
  	.split(' ')
  	.map { |word|
      word
        .gsub(/(?<!^)[hw]/, '')
        .gsub(/[bfpv]/i, '1')
        .gsub(/[cgjkqsxz]/i, '2')
        .gsub(/[dt]/i, '3')
        .gsub(/[l]/i, '4')
        .gsub(/[mn]/i, '5')
        .gsub(/[r]/i, '6')
        .gsub(/(\d)(\1)+/, '\1') #.squeeze!
        .gsub(/(?<!^)[aeiouy]/, '')
        .gsub(/^./, word[0])
        .capitalize
        .concat('000')[0..3]
    }
    .join(' ')
end
