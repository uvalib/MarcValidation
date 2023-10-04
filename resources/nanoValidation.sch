<?xml version="1.0" encoding="UTF-8"?>
<!-- Schema based on MARC 21 Format for Bibliographic Data Field List, 1999 edition,
update no. 32 (2021-06) -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron"
  xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
  xmlns:xlink="http://www.w3.org/1999/xlink" queryBinding="xslt2">
  <ns uri="http://www.w3.org/1999/xlink" prefix="xlink"/>
  <!-- GLOBAL VARIABLES -->
  <let name="marcCountryCodesStrict"
    value="'^(aa |abc|aca|ae |af |ag |ai |aj |aku|alu|am |an |ao |aq |aru|as |at |au |aw |ay |azu|ba |bb |bcc|bd |be |bf |bg |bh |bi |bl |bm |bn |bo |bp |br |bs |bt |bu |bv |bw |bx |ca |cau|cb |cc |cd |ce |cf |cg |ch |ci |cj |ck |cl |cm |co |cou|cq |cr |ctu|cu |cv |cw |cx |cy |dcu|deu|dk |dm |dq |dr |ea |ec |eg |em |enk|er |es |et |fa |fg |fi |fj |fk |flu|fm |fp |fr |fs |ft |gau|gb |gd |gg |gh |gi |gl |gm |go |gp |gr |gs |gt |gu |gv |gw |gy |gz |hiu|hm |ho |ht |hu |iau|ic |idu|ie |ii |ilu|im |inu|io |iq |ir |is |it |iv |iy |ja |je |ji |jm |jo |ke |kg |kn |ko |ksu|ku |kv |kyu|kz |lau|lb |le |lh |li |lo |ls |lu |lv |ly |mau|mbc|mc |mdu|meu|mf |mg |miu|mj |mk |ml |mm |mnu|mo |mou|mp |mq |mr |msu|mtu|mu |mv |mw |mx |my |mz |nbu|ncu|ndu|ne |nfc|ng |nhu|nik|nju|nkc|nl |nmu|nn |no |np |nq |nr |nsc|ntc|nu |nuc|nvu|nw |nx |nyu|nz |ohu|oku|onc|oru|ot |pau|pc |pe |pf |pg |ph |pic|pk |pl |pn |po |pp |pr |pw |py |qa |qea|quc|rb |re |rh |riu|rm |ru |rw |sa |sc |scu|sd |sdu|se |sf |sg |sh |si |sj |sl |sm |sn |snc|so |sp |sq |sr |ss |st |stk|su |sw |sx |sy |sz |ta |tc |tg |th |ti |tk |tl |tma|tnu|to |tr |ts |tu |tv |txu|tz |ua |uc |ug |un |up |utu|uv |uy |uz |vau|vb |vc |ve |vi |vm |vp |vra|vtu|wau|wea|wf |wiu|wj |wk |wlk|ws |wvu|wyu|xa |xb |xc |xd |xe |xf |xga|xh |xj |xk |xl |xm |xn |xna|xo |xoa|xp |xr |xra|xs |xv |xx |xxc|xxk|xxu|ye |ykc|za )$'"/>
  <let name="marcCountryCodesLoose"
    value="'^(aa |abc|aca|ae |af |ag |ai |aj |aku|alu|am |an |ao |aq |aru|as |at |au |aw |ay |azu|ba |bb |bcc|bd |be |bf |bg |bh |bi |bl |bm |bn |bo |bp |br |bs |bt |bu |bv |bw |bx |ca |cau|cb |cc |cd |ce |cf |cg |ch |ci |cj |ck |cl |cm |co |cou|cq |cr |ctu|cu |cv |cw |cx |cy |dcu|deu|dk |dm |dq |dr |ea |ec |eg |em |enk|er |es |et |fa |fg |fi |fj |fk |flu|fm |fp |fr |fs |ft |gau|gb |gd |gg |gh |gi |gl |gm |go |gp |gr |gs |gt |gu |gv |gw |gy |gz |hiu|hm |ho |ht |hu |iau|ic |idu|ie |ii |ilu|im |inu|io |iq |ir |is |it |iv |iy |ja |je |ji |jm |jo |ke |kg |kn |ko |ksu|ku |kv |kyu|kz |lau|lb |le |lh |li |lo |ls |lu |lv |ly |mau|mbc|mc |mdu|meu|mf |mg |miu|mj |mk |ml |mm |mnu|mo |mou|mp |mq |mr |msu|mtu|mu |mv |mw |mx |my |mz |nbu|ncu|ndu|ne |nfc|ng |nhu|nik|nju|nkc|nl |nmu|nn |no |np |nq |nr |nsc|ntc|nu |nuc|nvu|nw |nx |nyu|nz |ohu|oku|onc|oru|ot |pau|pc |pe |pf |pg |ph |pic|pk |pl |pn |po |pp |pr |pw |py |qa |qea|quc|rb |re |rh |riu|rm |ru |rw |sa |sc |scu|sd |sdu|se |sf |sg |sh |si |sj |sl |sm |sn |snc|so |sp |sq |sr |ss |st |stk|su |sw |sx |sy |sz |ta |tc |tg |th |ti |tk |tl |tma|tnu|to |tr |ts |tu |tv |txu|tz |ua |uc |ug |un |up |utu|uv |uy |uz |vau|vb |vc |ve |vi |vm |vp |vra|vtu|wau|wea|wf |wiu|wj |wk |wlk|ws |wvu|wyu|xa |xb |xc |xd |xe |xf |xga|xh |xj |xk |xl |xm |xn |xna|xo |xoa|xp |xr |xra|xs |xv |xx |xxc|xxk|xxu|ye |ykc|za |ac |ai |air|ajr|bwr|cn |cp |cs |cz |err|ge |gn |gsr|hk |iu |iw |jn |kgr|kzr|lir|ln |lvr|mh |mvr|na |nm |pt |rur|ry |sb |sk |sv |tar|tkr|tt |ui |uik|uk |unr|ur |us |uzr|vn |vs |wb |xi |xxr|ys |yu |\p{Zs}{3}|\\{3}|\|{3})$'"/>
  <let name="marcCountryCodes"
    value="'^(aa |abc|aca|ae |af |ag |ai |aj |aku|alu|am |an |ao |aq |aru|as |at |au |aw |ay |azu|ba |bb |bcc|bd |be |bf |bg |bh |bi |bl |bm |bn |bo |bp |br |bs |bt |bu |bv |bw |bx |ca |cau|cb |cc |cd |ce |cf |cg |ch |ci |cj |ck |cl |cm |co |cou|cq |cr |ctu|cu |cv |cw |cx |cy |dcu|deu|dk |dm |dq |dr |ea |ec |eg |em |enk|er |es |et |fa |fg |fi |fj |fk |flu|fm |fp |fr |fs |ft |gau|gb |gd |gg |gh |gi |gl |gm |go |gp |gr |gs |gt |gu |gv |gw |gy |gz |hiu|hm |ho |ht |hu |iau|ic |idu|ie |ii |ilu|im |inu|io |iq |ir |is |it |iv |iy |ja |je |ji |jm |jo |ke |kg |kn |ko |ksu|ku |kv |kyu|kz |lau|lb |le |lh |li |lo |ls |lu |lv |ly |mau|mbc|mc |mdu|meu|mf |mg |miu|mj |mk |ml |mm |mnu|mo |mou|mp |mq |mr |msu|mtu|mu |mv |mw |mx |my |mz |nbu|ncu|ndu|ne |nfc|ng |nhu|nik|nju|nkc|nl |nmu|nn |no |np |nq |nr |nsc|ntc|nu |nuc|nvu|nw |nx |nyu|nz |ohu|oku|onc|oru|ot |pau|pc |pe |pf |pg |ph |pic|pk |pl |pn |po |pp |pr |pw |py |qa |qea|quc|rb |re |rh |riu|rm |ru |rw |sa |sc |scu|sd |sdu|se |sf |sg |sh |si |sj |sl |sm |sn |snc|so |sp |sq |sr |ss |st |stk|su |sw |sx |sy |sz |ta |tc |tg |th |ti |tk |tl |tma|tnu|to |tr |ts |tu |tv |txu|tz |ua |uc |ug |un |up |utu|uv |uy |uz |vau|vb |vc |ve |vi |vm |vp |vra|vtu|wau|wea|wf |wiu|wj |wk |wlk|ws |wvu|wyu|xa |xb |xc |xd |xe |xf |xga|xh |xj |xk |xl |xm |xn |xna|xo |xoa|xp |xr |xra|xs |xv |xx |xxc|xxk|xxu|ye |ykc|za |ac |ai |air|ajr|bwr|cn |cp |cs |cz |err|ge |gn |gsr|hk |iu |iw |jn |kgr|kzr|lir|ln |lvr|mh |mvr|na |nm |pt |rur|ry |sb |sk |sv |tar|tkr|tt |ui |uik|uk |unr|ur |us |uzr|vn |vs |wb |xi |xxr|ys |yu |\p{Zs}{3}|\\{3}|\|{3})$'"/>
  <let name="marcLangCodesStrict"
    value="'^(aar|abk|ace|ach|ada|ady|afa|afh|afr|ain|aka|akk|alb|ale|alg|alt|amh|ang|anp|apa|ara|arc|arg|arm|arn|arp|art|arw|asm|ast|ath|aus|ava|ave|awa|aym|aze|bad|bai|bak|bal|bam|ban|baq|bas|bat|bej|bel|bem|ben|ber|bho|bih|bik|bin|bis|bla|bnt|bos|bra|bre|btk|bua|bug|bul|bur|byn|cad|cai|car|cat|cau|ceb|cel|cha|chb|che|chg|chi|chk|chm|chn|cho|chp|chr|chu|chv|chy|cmc|cnr|cop|cor|cos|cpe|cpf|cpp|cre|crh|crp|csb|cus|cze|dak|dan|dar|day|del|den|dgr|din|div|doi|dra|dsb|dua|dum|dut|dyu|dzo|efi|egy|eka|elx|eng|enm|epo|est|ewe|ewo|fan|fao|fat|fij|fil|fin|fiu|fon|fre|frm|fro|frr|frs|fry|ful|fur|gaa|gay|gba|gem|geo|ger|gez|gil|gla|gle|glg|glv|gmh|goh|gon|gor|got|grb|grc|gre|grn|gsw|guj|gwi|hai|hat|hau|haw|heb|her|hil|him|hin|hit|hmn|hmo|hrv|hsb|hun|hup|iba|ibo|ice|ido|iii|ijo|iku|ile|ilo|ina|inc|ind|ine|inh|ipk|ira|iro|ita|jav|jbo|jpn|jpr|jrb|kaa|kab|kac|kal|kam|kan|kar|kas|kau|kaw|kaz|kbd|kha|khi|khm|kho|kik|kin|kir|kmb|kok|kom|kon|kor|kos|kpe|krc|krl|kro|kru|kua|kum|kur|kut|lad|lah|lam|lao|lat|lav|lez|lim|lin|lit|lol|loz|ltz|lua|lub|lug|lui|lun|luo|lus|mac|mad|mag|mah|mai|mak|mal|man|mao|map|mar|mas|may|mdf|mdr|men|mga|mic|min|mis|mkh|mlg|mlt|mnc|mni|mno|moh|mon|mos|mul|mun|mus|mwl|mwr|myn|myv|nah|nai|nap|nau|nav|nbl|nde|ndo|nds|nep|new|nia|nic|niu|nno|nob|nog|non|nor|nqo|nso|nub|nwc|nya|nym|nyn|nyo|nzi|oci|oji|ori|orm|osa|oss|ota|oto|paa|pag|pal|pam|pan|pap|pau|peo|per|phi|phn|pli|pol|pon|por|pra|pro|pus|que|raj|rap|rar|roa|roh|rom|rum|run|rup|rus|sad|sag|sah|sai|sal|sam|san|sas|sat|scn|sco|sel|sem|sga|sgn|shn|sid|sin|sio|sit|sla|slo|slv|sma|sme|smi|smj|smn|smo|sms|sna|snd|snk|sog|som|son|sot|spa|srd|srn|srp|srr|ssa|ssw|suk|sun|sus|sux|swa|swe|syc|syr|tah|tai|tam|tat|tel|tem|ter|tet|tgk|tgl|tha|tib|tig|tir|tiv|tkl|tlh|tli|tmh|tog|ton|tpi|tsi|tsn|tso|tuk|tum|tup|tur|tut|tvl|twi|tyv|udm|uga|uig|ukr|umb|und|urd|uzb|vai|ven|vie|vol|vot|wak|wal|war|was|wel|wen|wln|wol|xal|xho|yao|yap|yid|yor|ypk|zap|zbl|zen|zha|znd|zul|zun|zxx|zza)$'"/>
  <let name="marcLangCodesLoose"
    value="'^(aar|abk|ace|ach|ada|ady|afa|afh|afr|ain|aka|akk|alb|ale|alg|alt|amh|ang|anp|apa|ara|arc|arg|arm|arn|arp|art|arw|asm|ast|ath|aus|ava|ave|awa|aym|aze|bad|bai|bak|bal|bam|ban|baq|bas|bat|bej|bel|bem|ben|ber|bho|bih|bik|bin|bis|bla|bnt|bos|bra|bre|btk|bua|bug|bul|bur|byn|cad|cai|car|cat|cau|ceb|cel|cha|chb|che|chg|chi|chk|chm|chn|cho|chp|chr|chu|chv|chy|cmc|cnr|cop|cor|cos|cpe|cpf|cpp|cre|crh|crp|csb|cus|cze|dak|dan|dar|day|del|den|dgr|din|div|doi|dra|dsb|dua|dum|dut|dyu|dzo|efi|egy|eka|elx|eng|enm|epo|est|ewe|ewo|fan|fao|fat|fij|fil|fin|fiu|fon|fre|frm|fro|frr|frs|fry|ful|fur|gaa|gay|gba|gem|geo|ger|gez|gil|gla|gle|glg|glv|gmh|goh|gon|gor|got|grb|grc|gre|grn|gsw|guj|gwi|hai|hat|hau|haw|heb|her|hil|him|hin|hit|hmn|hmo|hrv|hsb|hun|hup|iba|ibo|ice|ido|iii|ijo|iku|ile|ilo|ina|inc|ind|ine|inh|ipk|ira|iro|ita|jav|jbo|jpn|jpr|jrb|kaa|kab|kac|kal|kam|kan|kar|kas|kau|kaw|kaz|kbd|kha|khi|khm|kho|kik|kin|kir|kmb|kok|kom|kon|kor|kos|kpe|krc|krl|kro|kru|kua|kum|kur|kut|lad|lah|lam|lao|lat|lav|lez|lim|lin|lit|lol|loz|ltz|lua|lub|lug|lui|lun|luo|lus|mac|mad|mag|mah|mai|mak|mal|man|mao|map|mar|mas|may|mdf|mdr|men|mga|mic|min|mis|mkh|mlg|mlt|mnc|mni|mno|moh|mon|mos|mul|mun|mus|mwl|mwr|myn|myv|nah|nai|nap|nau|nav|nbl|nde|ndo|nds|nep|new|nia|nic|niu|nno|nob|nog|non|nor|nqo|nso|nub|nwc|nya|nym|nyn|nyo|nzi|oci|oji|ori|orm|osa|oss|ota|oto|paa|pag|pal|pam|pan|pap|pau|peo|per|phi|phn|pli|pol|pon|por|pra|pro|pus|que|raj|rap|rar|roa|roh|rom|rum|run|rup|rus|sad|sag|sah|sai|sal|sam|san|sas|sat|scn|sco|sel|sem|sga|sgn|shn|sid|sin|sio|sit|sla|slo|slv|sma|sme|smi|smj|smn|smo|sms|sna|snd|snk|sog|som|son|sot|spa|srd|srn|srp|srr|ssa|ssw|suk|sun|sus|sux|swa|swe|syc|syr|tah|tai|tam|tat|tel|tem|ter|tet|tgk|tgl|tha|tib|tig|tir|tiv|tkl|tlh|tli|tmh|tog|ton|tpi|tsi|tsn|tso|tuk|tum|tup|tur|tut|tvl|twi|tyv|udm|uga|uig|ukr|umb|und|urd|uzb|vai|ven|vie|vol|vot|wak|wal|war|was|wel|wen|wln|wol|xal|xho|yao|yap|yid|yor|ypk|zap|zbl|zen|zha|znd|zul|zun|zxx|zza|ajm|cam|esk|esp|eth|far|fri|gae|gag|gal|gua|int|iri|kus|lan|lap|max|mla|mol|sao|scc|scr|sho|snh|sso|swz|tag|taj|tar|tru|tsw|\p{Zs}{3}|\\{3}|\|{3})$'"/>
  <let name="marcLangCodes"
    value="'^(aar|abk|ace|ach|ada|ady|afa|afh|afr|ain|aka|akk|alb|ale|alg|alt|amh|ang|anp|apa|ara|arc|arg|arm|arn|arp|art|arw|asm|ast|ath|aus|ava|ave|awa|aym|aze|bad|bai|bak|bal|bam|ban|baq|bas|bat|bej|bel|bem|ben|ber|bho|bih|bik|bin|bis|bla|bnt|bos|bra|bre|btk|bua|bug|bul|bur|byn|cad|cai|car|cat|cau|ceb|cel|cha|chb|che|chg|chi|chk|chm|chn|cho|chp|chr|chu|chv|chy|cmc|cnr|cop|cor|cos|cpe|cpf|cpp|cre|crh|crp|csb|cus|cze|dak|dan|dar|day|del|den|dgr|din|div|doi|dra|dsb|dua|dum|dut|dyu|dzo|efi|egy|eka|elx|eng|enm|epo|est|ewe|ewo|fan|fao|fat|fij|fil|fin|fiu|fon|fre|frm|fro|frr|frs|fry|ful|fur|gaa|gay|gba|gem|geo|ger|gez|gil|gla|gle|glg|glv|gmh|goh|gon|gor|got|grb|grc|gre|grn|gsw|guj|gwi|hai|hat|hau|haw|heb|her|hil|him|hin|hit|hmn|hmo|hrv|hsb|hun|hup|iba|ibo|ice|ido|iii|ijo|iku|ile|ilo|ina|inc|ind|ine|inh|ipk|ira|iro|ita|jav|jbo|jpn|jpr|jrb|kaa|kab|kac|kal|kam|kan|kar|kas|kau|kaw|kaz|kbd|kha|khi|khm|kho|kik|kin|kir|kmb|kok|kom|kon|kor|kos|kpe|krc|krl|kro|kru|kua|kum|kur|kut|lad|lah|lam|lao|lat|lav|lez|lim|lin|lit|lol|loz|ltz|lua|lub|lug|lui|lun|luo|lus|mac|mad|mag|mah|mai|mak|mal|man|mao|map|mar|mas|may|mdf|mdr|men|mga|mic|min|mis|mkh|mlg|mlt|mnc|mni|mno|moh|mon|mos|mul|mun|mus|mwl|mwr|myn|myv|nah|nai|nap|nau|nav|nbl|nde|ndo|nds|nep|new|nia|nic|niu|nno|nob|nog|non|nor|nqo|nso|nub|nwc|nya|nym|nyn|nyo|nzi|oci|oji|ori|orm|osa|oss|ota|oto|paa|pag|pal|pam|pan|pap|pau|peo|per|phi|phn|pli|pol|pon|por|pra|pro|pus|que|raj|rap|rar|roa|roh|rom|rum|run|rup|rus|sad|sag|sah|sai|sal|sam|san|sas|sat|scn|sco|sel|sem|sga|sgn|shn|sid|sin|sio|sit|sla|slo|slv|sma|sme|smi|smj|smn|smo|sms|sna|snd|snk|sog|som|son|sot|spa|srd|srn|srp|srr|ssa|ssw|suk|sun|sus|sux|swa|swe|syc|syr|tah|tai|tam|tat|tel|tem|ter|tet|tgk|tgl|tha|tib|tig|tir|tiv|tkl|tlh|tli|tmh|tog|ton|tpi|tsi|tsn|tso|tuk|tum|tup|tur|tut|tvl|twi|tyv|udm|uga|uig|ukr|umb|und|urd|uzb|vai|ven|vie|vol|vot|wak|wal|war|was|wel|wen|wln|wol|xal|xho|yao|yap|yid|yor|ypk|zap|zbl|zen|zha|znd|zul|zun|zxx|zza|ajm|cam|esk|esp|eth|far|fri|gae|gag|gal|gua|int|iri|kus|lan|lap|max|mla|mol|sao|scc|scr|sho|snh|sso|swz|tag|taj|tar|tru|tsw|\p{Zs}{3}|\\{3}|\|{3})$'"/>
  <!-- 843 REPRODUCTION NOTE -->
  <pattern>
    <title>843 Reproduction note</title>
    <rule
      context="*:datafield[@tag = '843'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^843')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Undefined -->
      <assert test="matches(@ind1, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefmn35678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefmn35678]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'a']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
    </rule>
    <rule context="*:datafield[@tag = '843'][*:subfield[@code = '7']]/*:subfield[@code = '7']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(substring(., 1, 1), '[besikmptnqcdu]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $7 Type of date/publication
        status flag (char 1) must match a letter (b, e, s, i, k, m, p, t, n, q, c, d, or
        u).</assert>
      <assert test="matches(substring(., 2, 4), '[0-9]{4}|[\p{Zs}u\\\|]{4}|[0-9\p{Zs}u\\\|]{4}')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $7 Date 1 (chars 2-5) must match
        4 digits, 4 "fill characters" (space, backslash, pipe, or 'u') or 1 or more digits followed
        by "fill characters".</assert>
      <assert test="matches(substring(., 6, 4), '[0-9]{4}|[\p{Zs}u\\\|]{4}|[0-9\p{Zs}u\\\|]{4}')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $7 Date 2 (chars 6-9) must match
        4 digits, 4 "fill characters" (space, backslash, pipe, or 'u') or 1 or more digits followed
        by "fill characters".</assert>
      <!--    Error here  -->
      <!-- <assert test="matches(substring(., 10, 3), '$marcCountryCodes')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $7 Country code (chars 10-12)
        must match a valid MARC country code.</assert>  -->
      <!--    Error here  -->
      <assert test="matches(substring(., 13, 1), '[\p{Zs}a-kmnqtuwz]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $7 Frequency (char 13) must
        match a space or a letter (a-k, m-n, q, t, u,w, or z).</assert>
      <assert test="matches(substring(., 14, 1), '[\p{Zs}nrxu]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $7 Regularity (char 14) must
        match a space or a letter (n, r, x, or u).</assert>
      <assert test="matches(substring(., 15, 1), '[\p{Zs}a-dfoqrs\|]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $7 Form of item (char 15) must
        match a space, a letter (a-d, f, o, q, r, or s), or a pipe.</assert>
    </rule>
  </pattern>
</schema>
