=begin 

algorithm =
- find the longest string combination possible
- iterate through array
- set a new_string var equal to the addition of the current element to the next one
- if the new iteration's value is larger than the current new_str var, replace
  - if it's equal to the longest string combo, return the value


=end

def longest_consec(strarr, k)
    longest_poss_combo = []
    counter = 0
    curr_large_str = ''
    new_large_str = ''

    arr_removed = strarr.sort { |a, b| a.length <=> b.length }
    arr_removed = arr_removed.uniq

    longest_poss_combo << arr_removed[-(k)..-1]
    p longest_poss_combo
    return longest_poss_combo.join('') if k == 1
    return '' if k <= 0
    return '' if k > strarr.size

    longest_poss_combo = longest_poss_combo.join('')

    strarr.each do |word|
      if curr_large_str.length == longest_poss_combo.length
        return curr_large_str
      elsif curr_large_str.length < strarr[counter..counter + (k-1)].join('').length
        curr_large_str = strarr[counter..counter + (k-1)].join('')
        counter += 1
      end
    end
    curr_large_str
end

p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "abigail"], 2)
p longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1)
p longest_consec(["iivvvzzzsvvv", "nddffccnngggzz", "aaayyys", "rrrtttooowaaeiioo", "ssrlljh", "qqqqqohhfffkkoov", "huu", "ikkll", "paalllyytv", "tttqtt", "iirrrrrppwwwttm", "cccylbbb", "eeemmmnnnccceeeddss", "iiiyyywwwvaaah", "zqqgggh", "kkkwwzzpp", "yyydffnnnv", "bkkvhhhcccf", "unwww", "oooppll", "jjjyyfffssjjjaqqq", "fbbbooppqqquulxxx", "fftllmmlnnnkkk", "rcccr", "ssjee", "iimyccte", "mbbeefff", "iiuuaoooodddhhh", "uuuzzuuuiiiwwt", "hhppnniiilfffayyy", "znjjwr", "uuutttffyyyuujjj", "aaccbbqqfff", "tsssqqqyyaaa", "esssllllnnnbbb", "tsssmzz", "oopggg", "bbbggrrfffyys", "qqjjjzzuu", "lnjjj", "yhhdddcccjjyyy", "nneeejvvll", "kkhhii", "ppeeewppqyyygg", "nnbbmmiiilll", "bbbjhhzzppp", "sssuuuczzz", "yyooddd", "qqjjxggu", "wwweeuteegggwwwssuuu", "ggbbbvi", "xrrkkku", "ppggooodddbbbii", "zznnnmmeeebbb", "dgggzoon", "sssllljjbss", "ccnnntaaankpp", "jjjhbbmmmzzxjjjjjj", "kkkootoii", "tteeeooo", "xmmf", "pjoo", "ttvvvxxffrkkk", "emmgd", "ggwwtsixx", "sshhiz", "yykmmmnnnwwvvxx", "ooobvbbbz", "uuukkkssllnnpp", "liiwwuz", "bbbzxqpyyyrrr", "uuufccchhllllllo", "niiifgg", "liifffwwwgjiixx", "mmmqqqzzzccc", "ddwwflllmmiggg", "dxkkkoo", "dkkkqqddcfff", "ddngggww", "ddwvvvrrrww", "zzggtlllkkkzzz", "uccdtpe", "qqqqqqsssgmmm", "vvvlnkkdddd", "jjjkuuu", "cccmmffjjjmmmp", "ccnncc", "ibaaddd", "ooieehrrr", "wwwuuuoottyye", "zznnrrrs", "yyyfffyyyqnnnllqqq", "cbbzfffqqqtt", "qqqxjab", "vvppppguvv", "nqqqfggg", "vvzzzjzzyyzu", "rrpppsrrr", "jjjppdddiiaaa", "gggdtyppp", "wwwonnnmmmuuunnnfff", "jjjbbppkkkttt", "ooolllppphhff", "kkknniaaarrr", "ddddaazz", "cao", "fffmvbrrr", "llletttaaff", "dddjjjooovvhhkhhhrrr", "ddiiiyyyrb", "rxxxiitrrr", "jjjcccddqq", "jjjrrgg", "txxxvnnnoobic", "rrrusstt", "ghxxxrrmnhh", "rveppzzrr", "oooeqmmmkkk", "xgggucx", "kscccpppkkkyy", "llfffiiigiiixxxxx", "iiiyyyddqqhhh", "rrmmffaaa", "hhhsssnnxxxll", "ssjjjgrrtyyyuuuiii", "xviiinr", "iigllccwww", "ggieeebbbtttjjj", "pvhhsssim", "wwwwwwjjbxxxww", "kkhhiitttuuucc", "ggvvvxaaa", "lllmhqquuulluuaaa", "ddmmmzvvv", "cwyyyqqq", "nnnullb", "mmmdddaaap", "bqqc", "fjjjyyl", "binoee", "ssqqrrll", "ccohhhjjppxxx", "ggkkkllczzzz", "xzzllb", "bbbvtttzzzmmm", "xxxqqqjjjooozb", "uiiddnzzzaalll", "eeeqqqmrrz", "qiaaaavvg", "udkyyym", "zzzgguuppiimmm", "llvvrlll", "weeuuuff", "nnnqggix", "mmlwwwdll", "xgggqqgiixxqaa", "jjxnxxbjjbb", "aallsp", "zzbqz", "eann", "llfuuu", "rrjjjhhha", "tttdhhhmb", "lippcclllee", "dgll", "qqqeejjjaaaoo", "gggqqooomggww", "rrrvvvqqtttrrvvvxt", "ooocccoopppooobwww", "cckkklzzy", "aayxuuu", "zzjjxxh", "dkkkwpff", "gguccnnnuuuuaaallb", "aajjcrriiixxxzzza", "bbcclaammxx", "wwwyyxxxkk"], 6)
