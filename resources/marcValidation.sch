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
  <!-- ALLOWED FIELDS -->
  <pattern>
    <title>Valid fields</title>
    <rule context="*:record/*[matches(local-name(), 'controlfield|datafield')]">
      <let name="localName" value="local-name()"/>
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <assert
        test="matches(@tag, '^((0([0-9A-Z][0-9A-Z])|0([1-9a-z][0-9a-z]))|(([1-9A-Z][0-9A-Z]{2})|([1-9a-z][0-9a-z]{2})))$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('invalid ', lower-case($localName), ' ', @tag, '.')"/>
      </assert>
    </rule>
  </pattern>
  <!-- SUBFIELD CONSTRAINTS -->
  <pattern>
    <title>Subfield 6 (value pattern)</title>
    <rule context="*:subfield[@code = '6']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <assert test="matches(., '^\d{3}-\d{2}(/(\([BNS23]|\$1|\d{3}|[A-Za-z]{4})(/r)?)?$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../*:datafield/@tag)"/> subfield $6 must match regex:
        '^\d{3}-\d{2}(/(\([BNS23]|\$1|\d{3}|[A-Za-z]{4})(/r)?)?$'.</assert>
    </rule>
  </pattern>
  <pattern>
    <title>Subfield 8 (matching linking number)</title>
    <rule context="*:subfield[@code = '8'][matches(., '^[0-9]')]">
      <let name="linkingNumber" value="replace(., '^([0-9]+).*$', '$1')"/>
      <let name="recordID" value="generate-id(ancestor::*:record)"/>
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <assert
        test="count(preceding::*:subfield[generate-id(ancestor::*:record) = $recordID][@code = '8'][matches(substring(., 1, string-length($linkingNumber)), $linkingNumber)]) + count(following::*:subfield[generate-id(ancestor::*:record) = $recordID][@code = '8'][matches(substring(., 1, string-length($linkingNumber)), $linkingNumber)]) &gt; 0"
        role="warning">
        <value-of select="concat($record001, ' :: ')"/>There are usually at least two subfield 8s
        with the same linkingNumber (<value-of select="$linkingNumber"/>).</assert>
    </rule>
  </pattern>
  <pattern>
    <title>Subfield 8 (unique sequence number)</title>
    <rule context="*:subfield[@code = '8'][matches(., '^[0-9]+\.[0-9]+')]">
      <let name="linkingSequence" value="replace(., '^([0-9]+\.[0-9]+).*$', '$1')"/>
      <let name="recordID" value="generate-id(ancestor::*:record)"/>
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <assert
        test="count(preceding::*:subfield[generate-id(ancestor::*:record) = $recordID][@code = '8'][matches(substring(., 1, string-length($linkingSequence)), $linkingSequence)]) + count(following::*:subfield[generate-id(ancestor::*:record) = $recordID][@code = '8'][matches(substring(., 1, string-length($linkingSequence)), $linkingSequence)]) = 0">
        <value-of select="concat($record001, ' :: ')"/>Linking sequence (<value-of
          select="$linkingSequence"/>) is not unique.</assert>
    </rule>
  </pattern>
  <pattern>
    <title>Subfield 8 (value pattern)</title>
    <rule context="*:subfield[@code = '8']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <assert test="matches(., '^[0-9]+(\.[0-9]+)?(\\[apux])?$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../*:datafield/@tag)"/> subfield 8 must match regex:
        '^[0-9]+(\.[0-9]+)?(\\[apux])?$'.</assert>
    </rule>
  </pattern>
  <pattern>
    <title>Unicode replacement character</title>
    <rule context="*:subfield">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <report test="contains(., '�')" role="warning">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/>, subfield $<value-of select="@code"/>
        contains Unicode replacement character (U+FFFD)</report>
    </rule>
  </pattern>
  <!-- RECORD CONSTRAINTS -->
  <pattern>
    <title>Record</title>
    <rule context="*:record">
      <let name="record001" value="*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="*:leader">
        <value-of select="concat($record001, ':: ')"/>Leader is required.</assert>
      <assert test="*:controlfield[@tag = '001']">
        <value-of select="concat($record001, ':: ')"/>Controlfield 001 is required.</assert>
      <assert test="*:controlfield[@tag = '003']">
        <value-of select="concat($record001, ':: ')"/>Controlfield 003 is required.</assert>
      <assert test="*:controlfield[@tag = '008']">
        <value-of select="concat($record001, ':: ')"/>Controlfield 008 is required.</assert>
      <assert test="*:datafield[@tag = '245']">
        <value-of select="concat($record001, ':: ')"/>Datafield 245 is required.</assert>
      <report test="count(*:datafield[matches(@tag, '100|110|111|130')]) &gt; 1">
        <value-of select="concat($record001, ' :: ')"/>Only one 1XX datafield is allowed per
        record.</report>
      <!-- Recommendations -->
      <report
        test="*:leader[not(matches(substring(., 8, 1), '[bis]'))] and count(*:datafield[matches(@tag, '300')]) &lt; 1"
        role="warning">
        <value-of select="concat($record001, ' :: ')"/>Datafield 300 is recommended for a non-serial
        record.</report>
      <assert test="count(*:datafield[matches(@tag, '260|264')]) &gt; 0" role="warning">
        <value-of select="concat($record001, ' :: ')"/>Datafield 260 or 264 is recommended.</assert>
      <assert test="*:datafield[@tag = '035'][*:subfield[@code = 'a'][matches(., 'OCo?LC', 'i')]]"
        role="warning">
        <value-of select="concat($record001, ' :: ')"/>Datafield 035 with OCLC number is
        recommended.</assert>
    </rule>
  </pattern>
  <!-- LEADER CONSTRAINTS -->
  <pattern>
    <title>Leader</title>
    <rule context="*:leader">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 24">
        <value-of select="concat($record001, ' :: ')"/>Leader contains <value-of
          select="$currentLength"/> characters, expected 24.</assert>
      <assert test="matches(substring(., 1, 5), '[0-9]{5}')">
        <value-of select="concat($record001, ' :: ')"/>Record length (char position 1, 5) must match
        '[0-9]{5}'.</assert>
      <assert test="matches(substring(., 6, 1), '[acdnp]')">
        <value-of select="concat($record001, ' :: ')"/>Record status code (char position 6, 1) must
        match '[acdnp]'.</assert>
      <assert test="matches(substring(., 7, 1), '[acdefgijkmoprt]')">
        <value-of select="concat($record001, ' :: ')"/>Bibl type code (char position 7, 1) must
        match '[acdefgijkmoprt]'.</assert>
      <assert test="matches(substring(., 8, 1), '[a-dims]')">
        <value-of select="concat($record001, ' :: ')"/>Bibl level code (char position 8, 1) must
        match '[a-dims]'.</assert>
      <assert test="matches(substring(., 9, 1), '[\p{Zs}a]')">
        <value-of select="concat($record001, ' :: ')"/>Type of control (char position 9, 1) must
        match '[\p{Zs}a]'.</assert>
      <assert test="matches(substring(., 10, 1), '[\p{Zs}a]')">
        <value-of select="concat($record001, ' :: ')"/>Character encoding scheme (char position 10,
        1) must match '[\p{Zs}a]'.</assert>
      <assert test="matches(substring(., 11, 1), '2')">
        <value-of select="concat($record001, ' :: ')"/>Indicator count (char position 11, 1) must
        match '2'.</assert>
      <assert test="matches(substring(., 12, 1), '2')">
        <value-of select="concat($record001, ' :: ')"/>Subfield code count (char position 12, 1)
        must match '2'.</assert>
      <assert test="matches(substring(., 13, 4), '[0-9]{4}')">
        <value-of select="concat($record001, ' :: ')"/>Base address of data (char position 13, 4)
        must match '[0-9]{4}'.</assert>
      <assert test="matches(substring(., 18, 1), '[\p{Zs}1234578uzIKLMEJ]')">
        <value-of select="concat($record001, ' :: ')"/>Encoding level code (char position 18, 1)
        must match '[\p{Zs}1234578uzIKLMEJ]'.</assert>
      <assert test="matches(substring(., 19, 1), '[\p{Zs}acinu]')">
        <value-of select="concat($record001, ' :: ')"/>Descriptive standard code (char position 19,
        1) must match '[\p{Zs}acinu]'.</assert>
      <assert test="matches(substring(., 20, 1), '[\p{Zs}abc]')">
        <value-of select="concat($record001, ' :: ')"/>Multipart resource record level (char
        position 20, 1) must match '[\p{Zs}abc]'.</assert>
      <assert test="matches(substring(., 21, 4), '4500')">
        <value-of select="concat($record001, ' :: ')"/>Length of field (char position 21, 4) must
        match '4500'.</assert>
    </rule>
  </pattern>
  <pattern>
    <title>Leader co-constraint with 008/06</title>
    <rule context="*:leader[matches(substring(text(), 8, 1), 'm')]">
      <let name="record001" value="../*:controlfield[@tag = '001']"/>
      <assert
        test="not(../*:controlfield[@tag = '008'][matches(substring(text(), 7, 1), '[cdiku]')])">
        <value-of select="concat($record001, ' :: ')"/>When Leader 07 matches 'm', 008/06 (Type of
        date/publication status flag) cannot match '[cdiku]'.</assert>
    </rule>
  </pattern>
  <!-- CONTROLFIELD CONSTRAINTS -->
  <!-- 001 CONTROL NUMBER -->
  <pattern>
    <title>001 Control number</title>
    <rule context="*:controlfield[@tag = '001']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="not(count(../*:controlfield[matches(@tag, '001')]) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Controlfield ', @tag)"/> is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 002 LOCALLY DEFINED (UNOFFICIAL) -->
  <pattern>
    <title>002 Locally defined (unofficial)</title>
    <rule context="*:controlfield[@tag = '002']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="not(count(../*:controlfield[matches(@tag, '002')]) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Controlfield ', @tag)"/> is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 003 CONTROL NUMBER IDENTIFIER -->
  <pattern>
    <title>003 Control number identifier</title>
    <rule context="*:controlfield[@tag = '003']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="not(count(../*:controlfield[matches(@tag, '003')]) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Controlfield ', @tag)"/> is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 005 DATE AND TIME OF LATEST TRANSACTION -->
  <pattern>
    <title>005 Date and time of latest transaction</title>
    <rule context="*:controlfield[@tag = '005']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="not(count(../*:controlfield[matches(@tag, '005')]) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Controlfield ', @tag)"/> is not repeatable.</assert>
      <assert test="matches(., '^\d{14}\.\d$')">
        <value-of select="concat('Controlfield ', @tag)"/> Date and time of latest transaction must
        match 'YYYYMMDDHHMMSS.F'.</assert>
    </rule>
  </pattern>
  <!-- 006 ADDITIONAL MATERIAL CHARACTERISTICS -->
  <pattern>
    <title>006 Additional material characteristics</title>
    <rule context="*:controlfield[@tag = '006']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 18">
        <value-of select="concat($record001, ' :: ')"/>006 contains <value-of
          select="$currentLength"/> characters, expected 18.</assert>
      <assert test="matches(substring(., 1, 1), '[ac-gijkmoprst]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Controlfield ', @tag)"/> Form of material (char position 1, 1)
        must match '[ac-gijkmoprst]'.</assert>
    </rule>
  </pattern>
  <!-- 006 BOOK -->
  <pattern>
    <title>006 Book</title>
    <rule context="*:controlfield[@tag = '006'][matches(substring(., 1, 1), '[at]')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert
        test="matches(substring(., 2, 4), '\p{Zs}{4}|[a-mop]{4}|\|{4}|[a-mop]{3}\p{Zs}|[a-mop]{2}\p{Zs}{2}|[a-mop]\p{Zs}{3}')">
        <value-of select="concat($record001, ' :: ')"/>Illustrations (char position 2, 4) must match
        '\p{Zs}{4}|[a-mop]{4}|\|{4}|[a-mop]{3}\p{Zs}|[a-mop]{2}\p{Zs}{2}|[a-mop]\p{Zs}{3}'.</assert>
      <assert test="matches(substring(., 6, 1), '[\p{Zs}a-gj\|]')">
        <value-of select="concat($record001, ' :: ')"/>Target audience (char position 6, 1) must
        match '[\p{Zs}a-gj\|]'.</assert>
      <assert test="matches(substring(., 7, 1), '[\p{Zs}a-dfoqrs\|]')">
        <value-of select="concat($record001, ' :: ')"/>Form of item (char position 7, 1) must match
        '[\p{Zs}a-dfoqrs\|]'.</assert>
      <assert
        test="matches(substring(., 8, 4), '\|{4}|\p{Zs}{4}|[a-gij-wyz256]{4}|[a-gij-wyz256]{3}(\p{Zs}|\|)|[a-gij-wyz256]{2}(\p{Zs}{2}|\|{2})|[a-gij-wyz256](\p{Zs}{3}|\|{3})')">
        <value-of select="concat($record001, ' :: ')"/>Nature of contents (char position 8, 4) must
        match
        '\|{4}|\p{Zs}{4}|[a-gij-wyz256]{4}|[a-gij-wyz256]{3}(\p{Zs}|\|)|[a-gij-wyz256]{2}(\p{Zs}{2}|\|{2})|[a-gij-wyz256](\p{Zs}{3}|\|{3})'.</assert>
      <assert test="matches(substring(., 12, 1), '[\p{Zs}acfilmosuz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Government publication (char position 12, 1)
        must match '[\p{Zs}acfilmosuz\|]'.</assert>
      <assert test="matches(substring(., 13, 1), '[01\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Conference publication (char position 13, 1)
        must match '[01\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 14, 1), '[01\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Festschrift (char position 14, 1) must match
        '[01\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 15, 1), '[01\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Index (char position 15, 1) must match
        '[01\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 16, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 16, 1) must match
        '[\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 17, 1), '[01defhijmpsu\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Literary form (char position 17, 1) must
        match '[01defhijmpsu\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 18, 1), '[\p{Zs}a-d\|]')">
        <value-of select="concat($record001, ' :: ')"/>Biography (char position 18, 1) must match
        '[\p{Zs}a-d\|]'.</assert>
    </rule>
  </pattern>
  <!-- 006 COMPUTER FILE -->
  <pattern>
    <title>006 Computer file</title>
    <rule context="*:controlfield[@tag = '006'][matches(substring(., 1, 1), 'm')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(substring(., 2, 4), '[\p{Zs}\|]{4}')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 2, 4) must match
        '[\p{Zs}\|]{4}'.</assert>
      <assert test="matches(substring(., 6, 1), '[\p{Zs}a-gj\|]')">
        <value-of select="concat($record001, ' :: ')"/>Target audience (char position 6, 1) must
        match '[\p{Zs}a-gj\|]'.</assert>
      <assert test="matches(substring(., 7, 1), '[\p{Zs}oq\|]')">
        <value-of select="concat($record001, ' :: ')"/>Form of item (char position 7, 1) must match
        '[\p{Zs}oq\|]'.</assert>
      <assert test="matches(substring(., 8, 2), '[\p{Zs}\|]{2}')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 8, 2) must match
        '[\p{Zs}\|]{2}'.</assert>
      <assert test="matches(substring(., 10, 1), '[a-jmuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Type of file (char position 10, 1) must match
        '[a-jmuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 11, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 11, 1) must match
        '[\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 12, 1), '[\p{Zs}acfilmosuz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Government publication (char position 12, 1)
        must match '[\p{Zs}acfilmosuz\|]'.</assert>
      <assert test="matches(substring(., 13, 6), '[\p{Zs}\|]{6}')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 13, 6) must match
        '[\p{Zs}\|]{6}'.</assert>
    </rule>
  </pattern>
  <!-- 006 MAP -->
  <pattern>
    <title>006 Map</title>
    <rule context="*:controlfield[@tag = '006'][matches(substring(., 1, 1), '[ef]')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert
        test="matches(substring(., 2, 4), '\p{Zs}{4}|\|{4}|[a-gijkmz]{4}|[a-gijkmz]{3}\p{Zs}|[a-gijkmz]{2}\p{Zs}{2}|[a-gijkmz]\p{Zs}{3}')">
        <value-of select="concat($record001, ' :: ')"/>Relief (char position 2, 4) must match
        '\p{Zs}{4}|\|{4}|[a-gijkmz]{4}|[a-gijkmz]{3}\p{Zs}|[a-gijkmz]{2}\p{Zs}{2}|[a-gijkmz]\p{Zs}{3}'.</assert>
      <assert
        test="matches(substring(., 6, 2), '(\p{Zs}\p{Zs}|aa|ab|ac|ad|ae|af|ag|am|an|ap|au|az|ba|bb|bc|bd|be|bf|bg|bh|bi|bj|bk|bl|bo|br|bs|bu|bz|ca|cb|cc|ce|cp|cu|cz|da|db|dc|dd|de|df|dg|dh|dl|zz|\|\|)')">
        <value-of select="concat($record001, ' :: ')"/>Projection (char position 6, 2) must match
        '(\p{Zs}\p{Zs}|aa|ab|ac|ad|ae|af|ag|am|an|ap|au|az|ba|bb|bc|bd|be|bf|bg|bh|bi|bj|bk|bl|bo|br|bs|bu|bz|ca|cb|cc|ce|cp|cu|cz|da|db|dc|dd|de|df|dg|dh|dl|zz|\|\|)'.</assert>
      <assert test="matches(substring(., 8, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 8, 1) must match
        '[\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 9, 1), '[a-guz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Type of cartographic material (char position
        9, 1) must match '[a-guz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 10, 2), '[\p{Zs}\|]{2}')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 10, 2) must match
        '[\p{Zs}\|]{2}'.</assert>
      <assert test="matches(substring(., 12, 1), '[\p{Zs}acfilmosuz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Government publication (char position 12, 1)
        must match '[\p{Zs}acfilmosuz\|]'.</assert>
      <assert test="matches(substring(., 13, 1), '[\p{Zs}a-dfoqrs\|]')">
        <value-of select="concat($record001, ' :: ')"/>Form of item (char position 13, 1) must match
        '[\p{Zs}a-dfoqrs\|]'.</assert>
      <assert test="matches(substring(., 14, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 14, 1) must match
        '[\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 15, 1), '[01\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Index (char position 15, 1) must match
        '[01\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 16, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 16, 1) must match
        '[\p{Zs}\|]'.</assert>
      <assert
        test="matches(substring(., 17, 2), '\p{Zs}{2}|\|{2}|[ejklnoprz]{2}|[ejklnoprz]{1}\p{Zs}')">
        <value-of select="concat($record001, ' :: ')"/>Special format characteristics (char position
        17, 2) must match '\p{Zs}{2}|\|{2}|[ejklnoprz]{2}|[ejklnoprz]{1}\p{Zs}'.</assert>
    </rule>
  </pattern>
  <!-- 006 MUSIC -->
  <pattern>
    <title>006 Music</title>
    <rule context="*:controlfield[@tag = '006'][matches(substring(., 1, 1), '[cdij]')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert
        test="matches(substring(., 2, 2), '(an|bd|bg|bl|bt|ca|cb|cc|cg|ch|cl|cn|co|cp|cr|cs|ct|cy|cz|df|dv|fg|fl|fm|ft|gm|hy|jz|mc|md|mi|mo|mp|mr|ms|mu|mz|nc|nn|op|or|ov|pg|pm|po|pp|pr|ps|pt|pv|rc|rd|rg|ri|rp|rq|sd|sg|sn|sp|st|su|sy|tc|tl|ts|uu|vi|vr|wz|za|zz|\|\||\p{Zs}\p{Zs})')">
        <value-of select="concat($record001, ' :: ')"/>Form of composition (char position 2, 2) must
        match
        '(an|bd|bg|bl|bt|ca|cb|cc|cg|ch|cl|cn|co|cp|cr|cs|ct|cy|cz|df|dv|fg|fl|fm|ft|gm|hy|jz|mc|md|mi|mo|mp|mr|ms|mu|mz|nc|nn|op|or|ov|pg|pm|po|pp|pr|ps|pt|pv|rc|rd|rg|ri|rp|rq|sd|sg|sn|sp|st|su|sy|tc|tl|ts|uu|vi|vr|wz|za|zz|\|\||\p{Zs}\p{Zs})'.</assert>
      <assert test="matches(substring(., 4, 1), '[a-eg-npuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Format of music (char position 4, 1) must
        match '[a-eg-npuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 5, 1), '[\p{Zs}defnu\|]')">
        <value-of select="concat($record001, ' :: ')"/>Music parts (char position 5, 1) must match
        '[\p{Zs}defnu\|]'.</assert>
      <assert test="matches(substring(., 6, 1), '[\p{Zs}a-gj\|]')">
        <value-of select="concat($record001, ' :: ')"/>Target audience (char position 6, 1) must
        match '[\p{Zs}a-gj\|]'.</assert>
      <assert test="matches(substring(., 7, 1), '[\p{Zs}a-dfoqrs\|]')">
        <value-of select="concat($record001, ' :: ')"/>Form of item (char position 7, 1) must match
        '[\p{Zs}a-dfoqrs\|]'.</assert>
      <assert
        test="matches(substring(., 8, 6), '[a-ikrsz]{6}|[\p{Zs}\|]{6}|[a-ikrsz]{5}[\p{Zs}\|]|[a-ikrsz]{4}[\p{Zs}\|]{2}|[a-ikrsz]{3}[\p{Zs}\|]{3}|[a-ikrsz]{2}[\p{Zs}\|]{4}|[a-ikrsz][\p{Zs}\|]{5}')">
        <value-of select="concat($record001, ' :: ')"/>Accompanying matter (char position 8, 6) must
        match
        '[a-ikrsz]{6}|[\p{Zs}\|]{6}|[a-ikrsz]{5}[\p{Zs}\|]|[a-ikrsz]{4}[\p{Zs}\|]{2}|[a-ikrsz]{3}[\p{Zs}\|]{3}|[a-ikrsz]{2}[\p{Zs}\|]{4}|[a-ikrsz][\p{Zs}\|]{5}'.</assert>
      <assert test="matches(substring(., 14, 2), '\p{Zs}{2}|[a-prstz]{2}|\|{2}|[a-prstz]\p{Zs}')">
        <value-of select="concat($record001, ' :: ')"/>Literary text for sound recordings (char
        position 14, 2) must match '\p{Zs}{2}|[a-prstz]{2}|\|{2}|[a-prstz]\p{Zs}'.</assert>
      <assert test="matches(substring(., 16, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 16, 1) must match
        '[\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 17, 1), '[\p{Zs}abcnu\|]')">
        <value-of select="concat($record001, ' :: ')"/>Transposition and arrangement (char position
        17, 1) must match '[\p{Zs}abcnu\|]'.</assert>
      <assert test="matches(substring(., 18, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 18, 1) must match
        '[\p{Zs}\|]'.</assert>
    </rule>
  </pattern>
  <!-- 006 CONTINUING RESOURCE -->
  <pattern>
    <title>006 Continuing resource</title>
    <rule context="*:controlfield[@tag = '006'][matches(substring(., 1, 1), 's')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(substring(., 2, 1), '[\p{Zs}a-kmqstuwz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Frequency (char position 2, 1) must match
        '[\p{Zs}a-kmqstuwz\|]'.</assert>
      <assert test="matches(substring(., 3, 1), '[nrux\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Regularity (char position 3, 1) must match
        '[nrux\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 4, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 4, 1) must match
        '[\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 5, 1), '[\p{Zs}dghjlmnptstw\|]')">
        <value-of select="concat($record001, ' :: ')"/>Type of continuing resource (char position 5,
        1) must match '[\p{Zs}dghjlmnptstw\|]'.</assert>
      <assert test="matches(substring(., 6, 1), '[\p{Zs}a-foqs\|]')">
        <value-of select="concat($record001, ' :: ')"/>Form of original item (char position 6, 1)
        must match '[\p{Zs}a-foqs\|]'.</assert>
      <assert test="matches(substring(., 7, 1), '[\p{Zs}a-dfoqrs\|]')">
        <value-of select="concat($record001, ' :: ')"/>Form of item (char position 7, 1) must match
        '[\p{Zs}a-dfoqrs\|]'.</assert>
      <assert test="matches(substring(., 8, 1), '[\p{Zs}a-ik-wyz56\|]')">
        <value-of select="concat($record001, ' :: ')"/>Nature of entire work (char position 8, 1)
        must match '[\p{Zs}a-ik-wyz56\|]'.</assert>
      <assert
        test="matches(substring(., 9, 3), '\p{Zs}{3}|\|{3}|[a-ik-wyz56]{3}|[a-ik-wyz56]{2}\p{Zs}|[a-ik-wyz56]\p{Zs}{2}')">
        <value-of select="concat($record001, ' :: ')"/>Nature of contents (char position 9, 3) must
        match
        '\p{Zs}{3}|\|{3}|[a-ik-wyz56]{3}|[a-ik-wyz56]{2}\p{Zs}|[a-ik-wyz56]\p{Zs}{2}'.</assert>
      <assert test="matches(substring(., 12, 1), '[\p{Zs}acfilmosuz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Government publication (char position 12, 1)
        must match '[\p{Zs}acfilmosuz\|]'.</assert>
      <assert test="matches(substring(., 13, 1), '[01\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Conference publication (char position 13, 1)
        must match '[01\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 14, 3), '[\p{Zs}\|]{3}')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 14, 3) must match
        '[\p{Zs}\|]{3}'.</assert>
      <assert test="matches(substring(., 17, 1), '[\p{Zs}a-luz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Original alphabet or script of title (char
        position 17, 1) must match '[\p{Zs}a-luz\|]'.</assert>
      <assert test="matches(substring(., 18, 1), '[012\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Entry convention (char position 18, 1) must
        match '[012\|\p{Zs}]'.</assert>
    </rule>
  </pattern>
  <!-- 006 VISUAL MATERIAL -->
  <pattern>
    <title>006 Visual material</title>
    <rule context="*:controlfield[@tag = '006'][matches(substring(., 1, 1), '[gkor]')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(substring(., 2, 3), '(nnn|\|\|\||00[0-9]|0[1-9][0-9]|[1-9][0-9][0-9])')">
        <value-of select="concat($record001, ' :: ')"/>Running time (char position 2, 3) must match
        '(nnn|\|\|\||00[0-9]|0[1-9][0-9]|[1-9][0-9][0-9])'.</assert>
      <assert test="matches(substring(., 5, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 5, 1) must match
        '[\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 6, 1), '[\p{Zs}a-gj\|]')">
        <value-of select="concat($record001, ' :: ')"/>Target audience (char position 6, 1) must
        match '[\p{Zs}a-gj\|]'.</assert>
      <assert test="matches(substring(., 7, 5), '[\p{Zs}\|]{5}')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 7, 5) must match
        '[\p{Zs}\|]{5}'.</assert>
      <assert test="matches(substring(., 12, 1), '[\p{Zs}acfilmosuz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Government publication (char position 12, 1)
        must match '[\p{Zs}acfilmosuz\|]'.</assert>
      <assert test="matches(substring(., 13, 1), '[\p{Zs}a-dfoqrs\|]')">
        <value-of select="concat($record001, ' :: ')"/>Form of item (char position 13, 1) must match
        '[\p{Zs}a-dfoqrs\|]'.</assert>
      <assert test="matches(substring(., 14, 3), '[\p{Zs}\|]{3}')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 14, 3) must match
        '[\p{Zs}\|]{3}'.</assert>
      <assert test="matches(substring(., 17, 1), '[a-dfgik-tvwz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Type of visual material (char position 17, 1)
        must match '[a-dfgik-tvwz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 18, 1), '[aclnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Technique (char position 18, 1) must match
        '[aclnuz\|\p{Zs}]'.</assert>
    </rule>
  </pattern>
  <!-- 006 MIXED MATERIAL -->
  <pattern>
    <title>006 Mixed material</title>
    <rule context="*:controlfield[@tag = '006'][matches(substring(., 1, 1), 'p')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(substring(., 2, 5), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 2, 5) must match
        '[\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 7, 1), '[\p{Zs}a-dfoqrs\|]')">
        <value-of select="concat($record001, ' :: ')"/>Form of item (char position 7, 1) must match
        '[\p{Zs}a-dfoqrs\|]'.</assert>
      <assert test="matches(substring(., 8, 11), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 8, 11) must match
        '[\p{Zs}\|]'.</assert>
    </rule>
  </pattern>
  <!-- 007 PHYSICAL DESCRIPTION FIXED FIELD -->
  <pattern>
    <title>007 Physical description fixed field</title>
    <rule context="*:controlfield[@tag = '007']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(substring(., 1, 1), '[acdfghkmoqrstvz]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Controlfield ', @tag)"/> Category of material code (char position
        1, 1) must match '[acdfghkmoqrstvz]'.</assert>
    </rule>
  </pattern>
  <!-- 007 MAP -->
  <pattern>
    <title>007 Map</title>
    <rule context="*:controlfield[@tag = '007'][matches(substring(., 1, 1), 'a')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 8">
        <value-of select="concat($record001, ' :: ')"/>007 contains <value-of
          select="$currentLength"/> characters, expected 8.</assert>
      <assert test="matches(substring(., 2, 1), '[dgjkqrsuyz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>SMD code (char position 2, 1) must match
        '[dgjkqrsuyz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 3, 1), '[\p{Zs}\\\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 3, 1) must match
        '[\p{Zs}\\\|]'.</assert>
      <assert test="matches(substring(., 4, 1), '[ac\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Color code (char position 4, 1) must match
        '[ac\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 5, 1), '[a-gijlnp-z\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Physical medium code (char position 5, 1)
        must match '[a-gijlnp-z\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 6, 1), '[fnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Type of reproduction code (char position 6,
        1) must match '[fnuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 7, 1), '[a-duz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Production/reproduction details code (char
        position 7, 1) must match '[a-duz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 8, 1), '[abmn\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Positive/negative aspect code (char position
        8, 1) must match '[abmn\|\p{Zs}]'.</assert>
    </rule>
  </pattern>
  <!-- 007 ELECTRONIC RESOURCE -->
  <pattern>
    <title>007 Electronic resource</title>
    <rule context="*:controlfield[@tag = '007'][matches(substring(., 1, 1), 'c')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 14">
        <value-of select="concat($record001, ' :: ')"/>007 contains <value-of
          select="$currentLength"/> characters, expected 14.</assert>
      <assert test="matches(substring(., 2, 1), '[a-fhjkmoruz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>SMD code (char position 2, 1) must match
        '[a-fhjkmoruz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 3, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 3, 1) must match
        '[\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 4, 1), '[abcgmnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Color code (char position 4, 1) must match
        '[abcgmnuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 5, 1), '[aegijnouvz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Dimensions code (char position 5, 1) must
        match '[aegijnouvz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 6, 1), '[\p{Zs}au\|]')">
        <value-of select="concat($record001, ' :: ')"/>Sound code (char position 6, 1) must match
        '[\p{Zs}au\|]'.</assert>
      <assert test="matches(substring(., 7, 3), '\d{3}|mmm|nnn|---|\|\|\||[\p{Zs}]{3}')">
        <value-of select="concat($record001, ' :: ')"/>Image bit depth code (char position 7, 3)
        must match '\d{3}|mmm|nnn|---|\|\|\||[\p{Zs}]{3}'.</assert>
      <assert test="matches(substring(., 10, 1), '[amu\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>File formats code (char position 10, 1) must
        match '[amu\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 11, 1), '[anpu\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Quality assurance target code (char position
        11, 1) must match '[anpu\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 12, 1), '[a-dmnu\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Antecedent/source code (char position 12, 1)
        must match '[a-dmnu\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 13, 1), '[abdmu\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Level of compression code (char position 13,
        1) must match '[abdmu\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 14, 1), '[anpru\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Reformatting quality code (char position 14,
        1) must match '[anpru\|\p{Zs}]'.</assert>
    </rule>
  </pattern>
  <!-- 007 GLOBE -->
  <pattern>
    <title>007 Globe</title>
    <rule context="*:controlfield[@tag = '007'][matches(substring(., 1, 1), 'd')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 6">
        <value-of select="concat($record001, ' :: ')"/>007 contains <value-of
          select="$currentLength"/> characters, expected 6.</assert>
      <assert test="matches(substring(., 2, 1), '[a-ceuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>SMD code (char position 2, 1) must match
        '[a-ceuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 3, 1), '[\p{Zs}\\\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 3, 1) must match
        '[\p{Zs}\\\|]'.</assert>
      <assert test="matches(substring(., 4, 1), '[ac\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Color code (char position 4, 1) must match
        '[ac\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 5, 1), '[a-gijlnpu-z\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Physical medium code (char position 5, 1)
        must match '[a-gijlnpu-z\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 6, 1), '[fnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Type of reproduction code (char position 6,
        1) must match '[fnuz\|\p{Zs}]'.</assert>
    </rule>
  </pattern>
  <!-- 007 TACTILE MATERIAL -->
  <pattern>
    <title>007 Tactile material</title>
    <rule context="*:controlfield[@tag = '007'][matches(substring(., 1, 1), 'f')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 10">
        <value-of select="concat($record001, ' :: ')"/>007 contains <value-of
          select="$currentLength"/> characters, expected 10.</assert>
      <assert test="matches(substring(., 2, 1), '[a-duz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>SMD code (char position 2, 1) must match
        '[a-duz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 3, 1), '[\p{Zs}\\\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 3, 1) must match
        '[\p{Zs}\\\|]'.</assert>
      <assert test="matches(substring(., 4, 2), '[a-emnuz][a-emnuz\p{Zs}]|\|{2}')">
        <value-of select="concat($record001, ' :: ')"/>Class of braille writing code (char position
        4, 2) must match '[a-emnuz][a-emnuz\p{Zs}]|\|{2}'.</assert>
      <assert test="matches(substring(., 6, 1), '[abmnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Level of contraction code (char position 6,
        1) must match '[abmnuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 7, 3), '[a-lnuz][a-lnuz\p{Zs}]{2}|\|{3}')">
        <value-of select="concat($record001, ' :: ')"/>Braille music format code (char position 7,
        3) must match '[a-lnuz][a-lnuz\p{Zs}]{2}|\|{3}'.</assert>
      <assert test="matches(substring(., 10, 1), '[abnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Special physical characteristics code (char
        position 10, 1) must match '[abnuz\|\p{Zs}]'.</assert>
    </rule>
  </pattern>
  <!-- 007 PROJECTED GRAPHIC -->
  <pattern>
    <title>007 Projected graphic</title>
    <rule context="*:controlfield[@tag = '007'][matches(substring(., 1, 1), 'g')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 9">
        <value-of select="concat($record001, ' :: ')"/>007 contains <value-of
          select="$currentLength"/> characters, expected 9.</assert>
      <assert test="matches(substring(., 2, 1), '[cdfos-uz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>SMD code (char position 2, 1) must match
        '[cdfos-uz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 3, 1), '[\p{Zs}\\\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 3, 1) must match
        '[\p{Zs}\\\|]'.</assert>
      <assert test="matches(substring(., 4, 1), '[a-chmnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Color code (char position 4, 1) must match
        '[a-chmnuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 5, 1), '[dejkmou\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Base of emulsion code (char position 5, 1)
        must match '[dejkmou\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 6, 1), '[abu\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Sound on medium or separate code (char
        position 6, 1) must match '[abu\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 7, 1), '[a-iuz\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Medium for sound code (char position 7, 1)
        must match '[a-iuz\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 8, 1), '[a-gjks-z\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Dimensions code (char position 8, 1) must
        match '[a-gjks-z\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 9, 1), '[c-ehjkmuz\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Secondary support material code (char
        position 9, 1) must match '[c-ehjkmuz\p{Zs}\|]'.</assert>
    </rule>
  </pattern>
  <!-- 007 MICROFORM -->
  <pattern>
    <title>007 Microform</title>
    <rule context="*:controlfield[@tag = '007'][matches(substring(., 1, 1), 'h')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 13">
        <value-of select="concat($record001, ' :: ')"/>007 contains <value-of
          select="$currentLength"/> characters, expected 13.</assert>
      <assert test="matches(substring(., 2, 1), '[a-hjuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>SMD code (char position 2, 1) must match
        '[a-hjuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 3, 1), '[\p{Zs}\\\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 3, 1) must match
        '[\p{Zs}\\\|]'.</assert>
      <assert test="matches(substring(., 4, 1), '[abmu\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Positive/negative aspect code (char position
        4, 1) must match '[abmu\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 5, 1), '[adfghlmopuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Dimensions code (char position 5, 1) must
        match '[adfghlmopuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 6, 1), '[a-euv\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Reduction ratio range code (char position 6,
        1) must match '[a-euv\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 7, 3), '\p{Zs}{3}|\d{3}|\d{2}-|\d--|-{3}|\|{3}')">
        <value-of select="concat($record001, ' :: ')"/>Reduction ratio code (char position 7, 3)
        must match '\p{Zs}{3}|\d{3}|\d{2}-|\d--|-{3}|\|{3}'.</assert>
      <assert test="matches(substring(., 10, 1), '[bcmuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Color code (char position 10, 1) must match
        '[bcmuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 11, 1), '[abcmnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Emulsion on film code (char position 11, 1)
        must match '[abcmnuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 12, 1), '[abcmu\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Generation code (char position 12, 1) must
        match '[abcmu\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 13, 1), '[acdimnprtuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Base of film code (char position 13, 1) must
        match '[acdimnprtuz\|\p{Zs}]'.</assert>
    </rule>
  </pattern>
  <!-- 007 NONPROJECTED GRAPHIC -->
  <pattern>
    <title>007 Nonprojected graphic</title>
    <rule context="*:controlfield[@tag = '007'][matches(substring(., 1, 1), 'k')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 6">
        <value-of select="concat($record001, ' :: ')"/>007 contains <value-of
          select="$currentLength"/> characters, expected 6.</assert>
      <assert test="matches(substring(., 2, 1), '[ac-ln-suvz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>SMD code (char position 2, 1) must match
        '[ac-ln-suvz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 3, 1), '[\p{Zs}\\\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 3, 1) must match
        '[\p{Zs}\\\|]'.</assert>
      <assert test="matches(substring(., 4, 1), '[abchm\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Color code (char position 4, 1) must match
        '[abchm\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 5, 1), '[a-il-wz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Primary support material code (char position
        5, 1) must match '[a-il-wz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 6, 1), '[\p{Zs}a-il-wz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Secondary support material code (char
        position 6, 1) must match '[\p{Zs}a-il-wz\|]'.</assert>
    </rule>
  </pattern>
  <!-- 007 MOTION PICTURE -->
  <pattern>
    <title>007 Motion picture</title>
    <rule context="*:controlfield[@tag = '007'][matches(substring(., 1, 1), 'm')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 23">
        <value-of select="concat($record001, ' :: ')"/>007 contains <value-of
          select="$currentLength"/> characters, expected 23.</assert>
      <assert test="matches(substring(., 2, 1), '[cforuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>SMD code (char position 2, 1) must match
        '[cforuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 3, 1), '[\p{Zs}\\\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 3, 1) must match
        '[\p{Zs}\\\|]'.</assert>
      <assert test="matches(substring(., 4, 1), '[bchmnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Color code (char position 4, 1) must match
        '[bchmnuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 5, 1), '[a-fuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Motion picture presentation format code (char
        position 5, 1) must match '[a-fuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 6, 1), '[\p{Zs}abu\|]')">
        <value-of select="concat($record001, ' :: ')"/>Sound on medium or separate code (char
        position 6, 1) must match '[\p{Zs}abu\|]'.</assert>
      <assert test="matches(substring(., 7, 1), '[\p{Zs}a-iuz]')">
        <value-of select="concat($record001, ' :: ')"/>Medium for sound code (char position 7, 1)
        must match '[\p{Zs}a-iuz]'.</assert>
      <assert test="matches(substring(., 8, 1), '[a-guz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Dimensions code (char position 8, 1) must
        match '[a-guz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 9, 1), '[kmnqsuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Configuration of playback channels code (char
        position 9, 1) must match '[kmnqsuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 10, 1), '[a-gnz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Production elements code (char position 10,
        1) must match '[a-gnz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 11, 1), '[abnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Positive/negative aspect code (char position
        11, 1) must match '[abnuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 12, 1), '[deoruz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Generation code (char position 12, 1) must
        match '[deoruz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 13, 1), '[acdimnprtuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Base of film code (char position 13, 1) must
        match '[acdimnprtuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 14, 1), '[a-np-vz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Refined categories of color code (char
        position 14, 1) must match '[a-np-vz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 15, 1), '[a-dnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Kind of color stock or print code (char
        position 15, 1) must match '[a-dnuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 16, 1), '[a-hklm\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Deterioration stage code (char position 16,
        1) must match '[a-hklm\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 17, 1), '[cinu\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Completeness code (char position 17, 1) must
        match '[cinu\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 18, 6), '([0-9]{4}([0-9]{2}|[\-]{2}))|[\-\|]{6}')">
        <value-of select="concat($record001, ' :: ')"/>Film inspection date (char position 18, 6)
        must match '([0-9]{4}([0-9]{2}|[\-]{2}))|[\-\|]{6}'.</assert>
    </rule>
  </pattern>
  <!-- 007 KIT -->
  <pattern>
    <title>007 Kit</title>
    <rule context="*:controlfield[@tag = '007'][matches(substring(., 1, 1), 'o')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 2">
        <value-of select="concat($record001, ' :: ')"/>007 contains <value-of
          select="$currentLength"/> characters, expected 2.</assert>
      <assert test="matches(substring(., 2, 1), '[u\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>SMD code (char position 2, 1) must match
        '[u\|\p{Zs}]'.</assert>
    </rule>
  </pattern>
  <!-- 007 NOTATED MUSIC -->
  <pattern>
    <title>007 Notated music</title>
    <rule context="*:controlfield[@tag = '007'][matches(substring(., 1, 1), 'q')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 2">
        <value-of select="concat($record001, ' :: ')"/>007 contains <value-of
          select="$currentLength"/> characters, expected 2.</assert>
      <assert test="matches(substring(., 2, 1), '[u\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>SMD code (char position 2, 1) must match
        '[u\|\p{Zs}]'.</assert>
    </rule>
  </pattern>
  <!-- 007 REMOTE-SENSING IMAGE -->
  <pattern>
    <title>007 Remote-sensing image</title>
    <rule context="*:controlfield[@tag = '007'][matches(substring(., 1, 1), 'r')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 11">
        <value-of select="concat($record001, ' :: ')"/>007 contains <value-of
          select="$currentLength"/> characters, expected 11.</assert>
      <assert test="matches(substring(., 2, 1), '[u\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>SMD code (char position 2, 1) must match
        '[u\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 3, 1), '[\p{Zs}\\\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 3, 1) must match
        '[\p{Zs}\\\|]'.</assert>
      <assert test="matches(substring(., 4, 1), '[abcnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Altitude of sensor code (char position 4, 1)
        must match '[abcnuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 5, 1), '[abcnu\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Attitude of sensor code (char position 5, 1)
        must match '[abcnu\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 6, 1), '[0-9nu\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Cloud cover code (char position 6, 1) must
        match '[0-9nu\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 7, 1), '[a-inuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Platform construction type code (char
        position 7, 1) must match '[a-inuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 8, 1), '[abcmnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Platform use category code (char position 8,
        1) must match '[abcmnuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 9, 1), '[abuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Sensor type code (char position 9, 1) must
        match '[abuz\|\p{Zs}]'.</assert>
      <assert
        test="matches(substring(., 10, 2), '(aa|da|db|dc|dd|de|df|dv|dz|ga|gb|gc|gd|ge|gf|gg|gu|gz|ja|jb|jc|jv|ma|mb|mm|nn|pa|pb|pc|pd|pe|pz|ra|rb|rc|rd|sa|ta|uu|zz|\|\|)')">
        <value-of select="concat($record001, ' :: ')"/>Data type code (char position 10, 2) must
        match
        '(aa|da|db|dc|dd|de|df|dv|dz|ga|gb|gc|gd|ge|gf|gg|gu|gz|ja|jb|jc|jv|ma|mb|mm|nn|pa|pb|pc|pd|pe|pz|ra|rb|rc|rd|sa|ta|uu|zz|\|\|)'.</assert>
    </rule>
  </pattern>
  <!-- 007 SOUND RECORDING -->
  <pattern>
    <title>007 Sound recording</title>
    <rule context="*:controlfield[@tag = '007'][matches(substring(., 1, 1), 's')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 14">
        <value-of select="concat($record001, ' :: ')"/>007 contains <value-of
          select="$currentLength"/> characters, expected 14.</assert>
      <assert test="matches(substring(., 2, 1), '[degiqstuwz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>SMD code (char position 2, 1) must match
        '[degiqstuwz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 3, 1), '[\p{Zs}\\\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 3, 1) must match
        '[\p{Zs}\\\|]'.</assert>
      <assert test="matches(substring(., 4, 1), '[a-fhiklmopruz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Speed code (char position 4, 1) must match
        '[a-fhiklmopruz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 5, 1), '[mqsuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Configuration of playback channels code (char
        position 5, 1) must match '[mqsuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 6, 1), '[mnsuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Groove width or pitch code (char position 6,
        1) must match '[mnsuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 7, 1), '[a-gjosnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Dimensions code (char position 7, 1) must
        match '[a-gjosnuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 8, 1), '[l-puz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Tape width code (char position 8, 1) must
        match '[l-puz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 9, 1), '[a-fnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Tape configuration code (char position 9, 1)
        must match '[a-fnuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 10, 1), '[abdimnrstuz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Kind of disc, cylinder or tape (char position
        10, 1) must match '[abdimnrstuz\|]'.</assert>
      <assert test="matches(substring(., 11, 1), '[abcgilmnprswuz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Kind of material (char position 11, 1) must
        match '[abcgilmnprswuz\|]'.</assert>
      <assert test="matches(substring(., 12, 1), '[hlnu\|]')">
        <value-of select="concat($record001, ' :: ')"/>Kind of cutting (char position 12, 1) must
        match '[hlnu\|]'.</assert>
      <assert test="matches(substring(., 13, 1), '[a-hnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Special playback code (char position 13, 1)
        must match '[a-hnuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 14, 1), '[abdeuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Capture and storage code (char position 14,
        1) must match '[abdeuz\|\p{Zs}]'.</assert>
    </rule>
  </pattern>
  <!-- 007 TEXT -->
  <pattern>
    <title>007 Text</title>
    <rule context="*:controlfield[@tag = '007'][matches(substring(., 1, 1), 't')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 2">
        <value-of select="concat($record001, ' :: ')"/>007 contains <value-of
          select="$currentLength"/> characters, expected 2.</assert>
      <assert test="matches(substring(., 2, 1), '[a-duz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>SMD code (char position 2, 1) must match
        '[a-duz\|\p{Zs}]'.</assert>
    </rule>
  </pattern>
  <!-- 007 VIDEORECORDING -->
  <pattern>
    <title>007 Videorecording</title>
    <rule context="*:controlfield[@tag = '007'][matches(substring(., 1, 1), 'v')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 9">
        <value-of select="concat($record001, ' :: ')"/>007 contains <value-of
          select="$currentLength"/> characters, expected 9.</assert>
      <assert test="matches(substring(., 2, 1), '[acdfnruz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>SMD code (char position 2, 1) must match
        '[acdfnruz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 3, 1), '[\p{Zs}\\\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 3, 1) must match
        '[\p{Zs}\\\|]'.</assert>
      <assert test="matches(substring(., 4, 1), '[bcmnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Color code (char position 4, 1) must match
        '[bcmnuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 5, 1), '[a-km-qsuvz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Videorecording format code (char position 5,
        1) must match '[a-km-qsuvz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 6, 1), '[\p{Zs}abu\|]')">
        <value-of select="concat($record001, ' :: ')"/>Sound on medium code (char position 6, 1)
        must match '[\p{Zs}abu\|]'.</assert>
      <assert test="matches(substring(., 7, 1), '[\p{Zs}a-iuz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Medium of sound code (char position 7, 1)
        must match '[\p{Zs}a-iuz\|]'.</assert>
      <assert test="matches(substring(., 8, 1), '[amo-ruz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Dimensions code (char position 8, 1) must
        match '[amo-ruz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 9, 1), '[kmnqsuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Configuration of playback channels code (char
        position 9, 1) must match '[kmnqsuz\|\p{Zs}]'.</assert>
    </rule>
  </pattern>
  <!-- 007 UNSPECIFIED -->
  <pattern>
    <title>007 Unspecified</title>
    <rule context="*:controlfield[@tag = '007'][matches(substring(., 1, 1), 'z')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 2">
        <value-of select="concat($record001, ' :: ')"/>007 contains <value-of
          select="$currentLength"/> characters, expected 2.</assert>
      <assert test="matches(substring(., 2, 1), '[muz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>SMD code (char position 2, 1) must match
        '[muz\|\p{Zs}]'.</assert>
    </rule>
  </pattern>
  <!-- 008 FIXED-LENGTH DATA ELEMENTS -->
  <pattern>
    <title>008 Fixed-length data elements</title>
    <rule context="*:controlfield[@tag = '008']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <let name="currentLength" value="string-length(.)"/>
      <assert test="string-length(.) = 40">
        <value-of select="concat($record001, ' :: ')"/>008 contains <value-of
          select="$currentLength"/> characters, expected 40.</assert>
      <assert test="not(count(../*:controlfield[matches(@tag, '008')]) &gt; 1)">
        <value-of select="concat('Controlfield ', @tag)"/> is not repeatable.</assert>
      <assert test="matches(substring(., 1, 6), '[0-9]{6}')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Controlfield ', @tag)"/> Date entered (char position 1, 6) must
        match '[0-9]{6}'.</assert>
      <assert test="matches(substring(., 7, 1), '[bcdeikmnpqrstu\|]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Controlfield ', @tag)"/> Type of date/publication status flag
        (char position 7, 1) must match '[bcdeikmnpqrstu\|]'.</assert>
      <assert test="matches(substring(., 8, 4), '[0-9]{4}|[\p{Zs}u\\\|]{4}|[0-9\p{Zs}u\\\|]{4}')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Controlfield ', @tag)"/> Date 1 (char position 8, 4) must match
        '[0-9]{4}|[\p{Zs}u\\\|]{4}|[0-9\p{Zs}u\\\|]{4}'.</assert>
      <assert test="matches(substring(., 12, 4), '[0-9]{4}|[\p{Zs}u\\\|]{4}|[0-9\p{Zs}u\\\|]{4}')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Controlfield ', @tag)"/> Date 2 (char position 12, 4) must match
        '[0-9]{4}|[\p{Zs}u\\\|]{4}|[0-9\p{Zs}u\\\|]{4}'.</assert>
      <assert test="matches(substring(., 40, 1), '[\p{Zs}\\\|cdu]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Controlfield ', @tag)"/> Cataloging source flag (char position 40,
        1) must match '[\p{Zs}\\\|cdu]'.</assert>
    </rule>
  </pattern>
  <pattern>
    <title>Co-constraint with leader</title>
    <rule context="*:controlfield[@tag = '008'][matches(substring(text(), 7, 1), '[cdiku]')]">
      <let name="record001" value="../*:controlfield[@tag = '001']"/>
      <assert test="preceding-sibling::*:leader[not(matches(substring(text(), 8, 1), 'm'))]">
        <value-of select="concat($record001, ' :: ')"/>When 008/06 (Type of date/publication status
        flag) matches '[cdiku]', Leader 07 (Bibliographic level) cannot match 'm'.</assert>
    </rule>
  </pattern>
  <pattern>
    <title>Co-constraint with 6xx</title>
    <rule
      context="*:controlfield[@tag = '008'][not(matches(substring(., 34, 1), '[1dfhijpu\|]'))][matches(substring(../*:leader, 7, 1), '[at]') and matches(substring(../*:leader, 8, 1), '[acdm]')]">
      <let name="record001" value="../*:controlfield[@tag = '001']"/>
      <assert test="following-sibling::*:datafield[matches(@tag, '^6')]" role="warning">
        <value-of select="concat($record001, ' :: ')"/>Non-fiction text material typically has at
        least one subject heading.</assert>
    </rule>
  </pattern>
  <pattern>
    <title>Country code</title>
    <rule context="*:controlfield[@tag = '008']">
      <let name="record001" value="../*:controlfield[@tag = '001']"/>
      <assert test="matches(substring(., 16, 3), $marcCountryCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Controlfield ', @tag)"/> Place of publication (position 15-17)
        must match a valid MARC country code.</assert>
    </rule>
  </pattern>
  <pattern>
    <title>Language code</title>
    <rule context="*:controlfield[@tag = '008']">
      <let name="record001" value="../*:controlfield[@tag = '001']"/>
      <assert test="matches(substring(., 36, 3), $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Controlfield ', @tag)"/> Language (position 35-37) must match a
        valid MARC language code.</assert>
    </rule>
  </pattern>
  <!-- 008 BOOK -->
  <pattern>
    <title>008 Book</title>
    <rule
      context="*:controlfield[@tag = '008'][matches(substring(../*:leader, 7, 1), '[at]') and matches(substring(../*:leader, 8, 1), '[acdm]')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert
        test="matches(substring(., 19, 4), '\p{Zs}{4}|\|{4}|[a-mop]{4}|[a-mop]{3}\p{Zs}|[a-mop]{2}\p{Zs}{2}|[a-mop]\p{Zs}{3}')">
        <value-of select="concat($record001, ' :: ')"/>Illustrations (char position 19, 4) must
        match
        '\p{Zs}{4}|\|{4}|[a-mop]{4}|[a-mop]{3}\p{Zs}|[a-mop]{2}\p{Zs}{2}|[a-mop]\p{Zs}{3}'.</assert>
      <assert test="matches(substring(., 23, 1), '[\p{Zs}a-gj\|]')">
        <value-of select="concat($record001, ' :: ')"/>Target audience (char position 23, 1) must
        match '[\p{Zs}a-gj\|]'.</assert>
      <assert test="matches(substring(., 24, 1), '[\p{Zs}a-dfoqrs\|]')">
        <value-of select="concat($record001, ' :: ')"/>Form of item (char position 24, 1) must match
        '[\p{Zs}a-dfoqrs\|]'.</assert>
      <assert
        test="matches(substring(., 25, 4), '[a-gij-wyz256]{4}|\|{4}|\p{Zs}{4}|[a-gij-wyz256]{3}(\p{Zs}|\|)|[a-gij-wyz256]{2}(\p{Zs}{2}|\|{2})|[a-gij-wyz256](\p{Zs}{3}|\|{3})')">
        <value-of select="concat($record001, ' :: ')"/>Nature of contents (char position 25, 4) must
        match
        '[a-gij-wyz256]{4}|\|{4}|\p{Zs}{4}|[a-gij-wyz256]{3}(\p{Zs}|\|)|[a-gij-wyz256]{2}(\p{Zs}{2}|\|{2})|[a-gij-wyz256](\p{Zs}{3}|\|{3})'.</assert>
      <assert test="matches(substring(., 29, 1), '[\p{Zs}acfilmosuz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Government publication (char position 29, 1)
        must match '[\p{Zs}acfilmosuz\|]'.</assert>
      <assert test="matches(substring(., 30, 1), '[01\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Conference publication (char position 30, 1)
        must match '[01\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 31, 1), '[01\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Festschrift (char position 31, 1) must match
        '[01\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 32, 1), '[01\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Index (char position 32, 1) must match
        '[01\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 33, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 33, 1) must match
        '[\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 34, 1), '[01defhijmpsu\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Literary form (char position 34, 1) must
        match '[01defhijmpsu\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 35, 1), '[\p{Zs}a-d\|]')">
        <value-of select="concat($record001, ' :: ')"/>Biography (char position 35, 1) must match
        '[\p{Zs}a-d\|]'.</assert>
    </rule>
  </pattern>
  <!-- 008 COMPUTER FILE -->
  <pattern>
    <title>008 Computer file</title>
    <rule context="*:controlfield[@tag = '008'][matches(substring(../*:leader, 7, 1), 'm')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(substring(., 19, 4), '[\p{Zs}\|]{4}')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 19, 4) must match
        '[\p{Zs}\|]{4}'.</assert>
      <assert test="matches(substring(., 23, 1), '[\p{Zs}a-gj\|]')">
        <value-of select="concat($record001, ' :: ')"/>Target audience (char position 23, 1) must
        match '[\p{Zs}a-gj\|]'.</assert>
      <assert test="matches(substring(., 24, 1), '[\p{Zs}oq\|]')">
        <value-of select="concat($record001, ' :: ')"/>Form of item (char position 24, 1) must match
        '[\p{Zs}oq\|]'.</assert>
      <assert test="matches(substring(., 25, 2), '[\p{Zs}\|]{2}')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 25, 2) must match
        '[\p{Zs}\|]{2}'.</assert>
      <assert test="matches(substring(., 27, 1), '[a-jmuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Type of file (char position 27, 1) must match
        '[a-jmuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 28, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 28, 1) must match
        '[\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 29, 1), '[\p{Zs}acfilmosuz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Government publication (char position 29, 1)
        must match '[\p{Zs}acfilmosuz\|]'.</assert>
      <assert test="matches(substring(., 30, 6), '[\p{Zs}\|]{6}')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 30, 6) must match
        '[\p{Zs}\|]{6}'.</assert>
    </rule>
  </pattern>
  <!-- 008 MAP -->
  <pattern>
    <title>008 Map</title>
    <rule context="*:controlfield[@tag = '008'][matches(substring(../*:leader, 7, 1), '[ef]')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert
        test="matches(substring(., 19, 4), '[a-gijkmz]{4}|\|{4}|\p{Zs}{4}|[a-gijkmz]{3}\p{Zs}|[a-gijkmz]{2}\p{Zs}{2}|[a-gijkmz]\p{Zs}{3}')">
        <value-of select="concat($record001, ' :: ')"/>Relief (char position 19, 4) must match
        '[a-gijkmz]{4}|\|{4}|\p{Zs}{4}|[a-gijkmz]{3}\p{Zs}|[a-gijkmz]{2}\p{Zs}{2}|[a-gijkmz]\p{Zs}{3}'.</assert>
      <assert
        test="matches(substring(., 23, 2), '(\p{Zs}\p{Zs}|aa|ab|ac|ad|ae|af|ag|am|an|ap|au|az|ba|bb|bc|bd|be|bf|bg|bh|bi|bj|bk|bl|bo|br|bs|bu|bz|ca|cb|cc|ce|cp|cu|cz|da|db|dc|dd|de|df|dg|dh|dl|zz|\|\|)')">
        <value-of select="concat($record001, ' :: ')"/>Projection (char position 23, 2) must match
        '(\p{Zs}\p{Zs}|aa|ab|ac|ad|ae|af|ag|am|an|ap|au|az|ba|bb|bc|bd|be|bf|bg|bh|bi|bj|bk|bl|bo|br|bs|bu|bz|ca|cb|cc|ce|cp|cu|cz|da|db|dc|dd|de|df|dg|dh|dl|zz|\|\|)'.</assert>
      <assert test="matches(substring(., 25, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 25, 1) must match
        '[\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 26, 1), '[a-guz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Type of cartographic material (char position
        26, 1) must match '[a-guz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 27, 2), '[\p{Zs}\|]{2}')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 27, 2) must match
        '[\p{Zs}\|]{2}'.</assert>
      <assert test="matches(substring(., 29, 1), '[\p{Zs}acfilmosuz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Government publication (char position 29, 1)
        must match '[\p{Zs}acfilmosuz\|]'.</assert>
      <assert test="matches(substring(., 30, 1), '[\p{Zs}a-dfoqrs\|]')">
        <value-of select="concat($record001, ' :: ')"/>Form of item (char position 30, 1) must match
        '[\p{Zs}a-dfoqrs\|]'.</assert>
      <assert test="matches(substring(., 31, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 31, 1) must match
        '[\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 32, 1), '[01\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Index (char position 32, 1) must match
        '[01\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 33, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 33, 1) must match
        '[\p{Zs}\|]'.</assert>
      <assert
        test="matches(substring(., 34, 2), '[ejklnoprz]{2}|\|{2}|\p{Zs}{2}|[ejklnoprz]{1}\p{Zs}')">
        <value-of select="concat($record001, ' :: ')"/>Special format characteristics (char position
        34, 2) must match '[ejklnoprz]{2}|\|{2}|\p{Zs}{2}|[ejklnoprz]{1}\p{Zs}'.</assert>
    </rule>
  </pattern>
  <!-- 008 MUSIC -->
  <pattern>
    <title>008 Music</title>
    <rule context="*:controlfield[@tag = '008'][matches(substring(../*:leader, 7, 1), '[cdij]')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert
        test="matches(substring(., 19, 2), '(an|bd|bg|bl|bt|ca|cb|cc|cg|ch|cl|cn|co|cp|cr|cs|ct|cy|cz|df|dv|fg|fl|fm|ft|gm|hy|jz|mc|md|mi|mo|mp|mr|ms|mu|mz|nc|nn|op|or|ov|pg|pm|po|pp|pr|ps|pt|pv|rc|rd|rg|ri|rp|rq|sd|sg|sn|sp|st|su|sy|tc|tl|ts|uu|vi|vr|wz|za|zz|\|\||\p{Zs}\p{Zs})')">
        <value-of select="concat($record001, ' :: ')"/>Form of composition (char position 19, 2)
        must match
        '(an|bd|bg|bl|bt|ca|cb|cc|cg|ch|cl|cn|co|cp|cr|cs|ct|cy|cz|df|dv|fg|fl|fm|ft|gm|hy|jz|mc|md|mi|mo|mp|mr|ms|mu|mz|nc|nn|op|or|ov|pg|pm|po|pp|pr|ps|pt|pv|rc|rd|rg|ri|rp|rq|sd|sg|sn|sp|st|su|sy|tc|tl|ts|uu|vi|vr|wz|za|zz|\|\||\p{Zs}\p{Zs})'.</assert>
      <assert test="matches(substring(., 21, 1), '[a-eg-npuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Format of music (char position 21, 1) must
        match '[a-eg-npuz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 22, 1), '[\p{Zs}defnu\|]')">
        <value-of select="concat($record001, ' :: ')"/>Music parts (char position 22, 1) must match
        '[\p{Zs}defnu\|]'.</assert>
      <assert test="matches(substring(., 23, 1), '[\p{Zs}a-gj\|]')">
        <value-of select="concat($record001, ' :: ')"/>Target audience (char position 23, 1) must
        match '[\p{Zs}a-gj\|]'.</assert>
      <assert test="matches(substring(., 24, 1), '[\p{Zs}a-dfoqrs\|]')">
        <value-of select="concat($record001, ' :: ')"/>Form of item (char position 24, 1) must match
        '[\p{Zs}a-dfoqrs\|]'.</assert>
      <assert
        test="matches(substring(., 25, 6), '[a-ikrsz]{6}|[\p{Zs}\|]{6}|[a-ikrsz]{5}[\p{Zs}\|]|[a-ikrsz]{4}[\p{Zs}\|]{2}|[a-ikrsz]{3}[\p{Zs}\|]{3}|[a-ikrsz]{2}[\p{Zs}\|]{4}|[a-ikrsz][\p{Zs}\|]{5}')">
        <value-of select="concat($record001, ' :: ')"/>Accompanying matter (char position 25, 6)
        must match
        '[a-ikrsz]{6}|[\p{Zs}\|]{6}|[a-ikrsz]{5}[\p{Zs}\|]|[a-ikrsz]{4}[\p{Zs}\|]{2}|[a-ikrsz]{3}[\p{Zs}\|]{3}|[a-ikrsz]{2}[\p{Zs}\|]{4}|[a-ikrsz][\p{Zs}\|]{5}'.</assert>
      <assert test="matches(substring(., 31, 2), '[a-prstz]{2}|\|{2}|\p{Zs}{2}|[a-prstz]\p{Zs}')">
        <value-of select="concat($record001, ' :: ')"/>Literary text for sound recordings (char
        position 31, 2) must match '[a-prstz]{2}|\|{2}|\p{Zs}{2}|[a-prstz]\p{Zs}'.</assert>
      <assert test="matches(substring(., 33, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 33, 1) must match
        '[\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 34, 1), '[\p{Zs}abcnu\|]')">
        <value-of select="concat($record001, ' :: ')"/>Transposition and arrangement (char position
        34, 1) must match '[\p{Zs}abcnu\|]'.</assert>
      <assert test="matches(substring(., 35, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 35, 1) must match
        '[\p{Zs}\|]'.</assert>
    </rule>
  </pattern>
  <!-- 008 CONTINUING RESOURCE -->
  <pattern>
    <title>008 Continuing resource</title>
    <rule
      context="*:controlfield[@tag = '008'][matches(substring(../*:leader, 7, 1), 'a') and matches(substring(../*:leader, 8, 1), '[bis]')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(substring(., 19, 1), '[\p{Zs}a-kmqstuwz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Frequency (char position 19, 1) must match
        '[\p{Zs}a-kmqstuwz\|]'.</assert>
      <assert test="matches(substring(., 20, 1), '[nrux\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Regularity (char position 20, 1) must match
        '[nrux\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 21, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 21, 1) must match
        '[\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 22, 1), '[\p{Zs}dghjlmnprstw\|]')">
        <value-of select="concat($record001, ' :: ')"/>Type of continuing resource (char position
        22, 1) must match '[\p{Zs}dghjlmnprstw\|]'.</assert>
      <assert test="matches(substring(., 23, 1), '[\p{Zs}a-foqs\|]')">
        <value-of select="concat($record001, ' :: ')"/>Form of original item (char position 23, 1)
        must match '[\p{Zs}a-foqs\|]'.</assert>
      <assert test="matches(substring(., 24, 1), '[\p{Zs}a-dfoqrs\|]')">
        <value-of select="concat($record001, ' :: ')"/>Form of item (char position 24, 1) must match
        '[\p{Zs}a-dfoqrs\|]'.</assert>
      <assert test="matches(substring(., 25, 1), '[\p{Zs}a-ik-wyz56\|]')">
        <value-of select="concat($record001, ' :: ')"/>Nature of entire work (char position 25, 1)
        must match '[\p{Zs}a-ik-wyz56\|]'.</assert>
      <assert
        test="matches(substring(., 26, 3), '[a-ik-wyz56]{3}|\|{3}|\p{Zs}{3}|[a-ik-wyz56]{2}\p{Zs}|[a-ik-wyz56]\p{Zs}{2}')">
        <value-of select="concat($record001, ' :: ')"/>Nature of contents (char position 26, 3) must
        match
        '[a-ik-wyz56]{3}|\|{3}|\p{Zs}{3}|[a-ik-wyz56]{2}\p{Zs}|[a-ik-wyz56]\p{Zs}{2}'.</assert>
      <assert test="matches(substring(., 29, 1), '[\p{Zs}acfilmosuz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Government publication (char position 29, 1)
        must match '[\p{Zs}acfilmosuz\|]'.</assert>
      <assert test="matches(substring(., 30, 1), '[01\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Conference publication (char position 30, 1)
        must match '[01\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 31, 3), '[\p{Zs}\|]{3}')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 31, 3) must match
        '[\p{Zs}\|]{3}'.</assert>
      <assert test="matches(substring(., 34, 1), '[\p{Zs}a-luz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Original alphabet or script of title (char
        position 34, 1) must match '[\p{Zs}a-luz\|]'.</assert>
      <assert test="matches(substring(., 35, 1), '[012\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Entry convention (char position 35, 1) must
        match '[012\|\p{Zs}]'.</assert>
    </rule>
  </pattern>
  <!-- 008 VISUAL MATERIAL -->
  <pattern>
    <title>008 Visual material</title>
    <rule context="*:controlfield[@tag = '008'][matches(substring(../*:leader, 7, 1), '[gkor]')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert
        test="matches(substring(., 19, 3), '(nnn|\|\|\||00[0-9]|0[1-9][0-9]|[1-9][0-9][0-9])')">
        <value-of select="concat($record001, ' :: ')"/>Running time (char position 19, 3) must match
        '(nnn|\|\|\||00[0-9]|0[1-9][0-9]|[1-9][0-9][0-9])'.</assert>
      <assert test="matches(substring(., 22, 1), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 22, 1) must match
        '[\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 23, 1), '[\p{Zs}a-gj\|]')">
        <value-of select="concat($record001, ' :: ')"/>Target audience (char position 23, 1) must
        match '[\p{Zs}a-gj\|]'.</assert>
      <assert test="matches(substring(., 24, 5), '[\p{Zs}\|]{5}')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 24, 5) must match
        '[\p{Zs}\|]{5}'.</assert>
      <assert test="matches(substring(., 29, 1), '[\p{Zs}acfilmosuz\|]')">
        <value-of select="concat($record001, ' :: ')"/>Government publication (char position 29, 1)
        must match '[\p{Zs}acfilmosuz\|]'.</assert>
      <assert test="matches(substring(., 30, 1), '[\p{Zs}a-dfoqrs\|]')">
        <value-of select="concat($record001, ' :: ')"/>Form of item (char position 30, 1) must match
        '[\p{Zs}a-dfoqrs\|]'.</assert>
      <assert test="matches(substring(., 31, 3), '[\p{Zs}\|]{3}')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 31, 3) must match
        '[\p{Zs}\|]{3}'.</assert>
      <assert test="matches(substring(., 34, 1), '[a-dfgik-tvwz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Type of visual material (char position 34, 1)
        must match '[a-dfgik-tvwz\|\p{Zs}]'.</assert>
      <assert test="matches(substring(., 35, 1), '[aclnuz\|\p{Zs}]')">
        <value-of select="concat($record001, ' :: ')"/>Technique (char position 35, 1) must match
        '[aclnuz\|\p{Zs}]'.</assert>
    </rule>
  </pattern>
  <!-- 008 MIXED MATERIAL -->
  <pattern>
    <title>008 Mixed material</title>
    <rule context="*:controlfield[@tag = '008'][matches(substring(../*:leader, 7, 1), 'p')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(substring(., 19, 5), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 19, 5) must match
        '[\p{Zs}\|]'.</assert>
      <assert test="matches(substring(., 24, 1), '[\p{Zs}a-dfoqrs\|]')">
        <value-of select="concat($record001, ' :: ')"/>Form of item (char position 24, 1) must match
        '[\p{Zs}a-dfoqrs\|]'.</assert>
      <assert test="matches(substring(., 25, 11), '[\p{Zs}\|]')">
        <value-of select="concat($record001, ' :: ')"/>Undefined (char position 25, 11) must match
        '[\p{Zs}\|]'.</assert>
    </rule>
  </pattern>
  <!-- DATAFIELD CONSTRAINTS -->
  <!-- 010 LIBRARY OF CONGRESS CONTROL NUMBER -->
  <pattern>
    <title>010 Library of congress control number</title>
    <rule
      context="*:datafield[@tag = '010'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^010')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '010']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[abz8]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abz8]$'))]/@code, ', ')"/>
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
    </rule>
  </pattern>
  <!-- 013 PATENT CONTROL INFORMATION -->
  <pattern>
    <title>013 Patent control information</title>
    <rule
      context="*:datafield[@tag = '013'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^013')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdef68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdef68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 015 NATIONAL BIBLIOGRAPHY NUMBER -->
  <pattern>
    <title>015 National bibliography number</title>
    <rule
      context="*:datafield[@tag = '015'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^015')]">
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
      <report test="*:subfield[not(matches(@code, '^[aqz268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[aqz268]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 016 NATIONAL BIBLIOGRAPHIC AGENCY CONTROL NUMBER -->
  <pattern>
    <title>016 National bibliographic agency control number</title>
    <rule
      context="*:datafield[@tag = '016'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^016')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: National bibliographic agency -->
      <assert test="matches(@ind1, '^[ 7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s7]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[az28]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[az28]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 017 COPYRIGHT OR LEGAL DEPOSIT NUMBER -->
  <pattern>
    <title>017 Copyright or legal deposit number</title>
    <rule
      context="*:datafield[@tag = '017'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^017')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Undefined -->
      <assert test="matches(@ind1, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s]".</assert>
      <!-- ind2: Display constant controller -->
      <assert test="matches(@ind2, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s8]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abdiz268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abdiz268]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 018 COPYRIGHT ARTICLE-FEE CODE -->
  <pattern>
    <title>018 Copyright article-fee code</title>
    <rule
      context="*:datafield[@tag = '018'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^018')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '018']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 019 OCLC CONTROL NUMBER CROSS-REFERENCE -->
  <pattern>
    <title>019 OCLC control number cross-reference</title>
    <rule
      context="*:datafield[@tag = '019'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^019')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '019']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[a]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
    </rule>
  </pattern>
  <!-- 020 INTERNATIONAL STANDARD BOOK NUMBER -->
  <pattern>
    <title>020 International standard book number</title>
    <rule
      context="*:datafield[@tag = '020'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^020')]">
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
      <report test="*:subfield[not(matches(@code, '^[acqz68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[acqz68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 022 INTERNATIONAL STANDARD SERIAL NUMBER -->
  <pattern>
    <title>022 International standard serial number</title>
    <rule
      context="*:datafield[@tag = '022'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^022')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Level of international interest -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[almyz01268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[almyz01268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 024 OTHER STANDARD IDENTIFIER -->
  <pattern>
    <title>024 Other standard identifier</title>
    <rule
      context="*:datafield[@tag = '024'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^024')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of standard number or code -->
      <assert test="matches(@ind1, '^[0123478]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[0123478]".</assert>
      <!-- ind2: Difference indicator -->
      <assert test="matches(@ind2, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s01]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[acdzq268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[acdzq268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 025 OVERSEAS ACQUISITION NUMBER -->
  <pattern>
    <title>025 Overseas acquisition number</title>
    <rule
      context="*:datafield[@tag = '025'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^025')]">
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
      <report test="*:subfield[not(matches(@code, '^[a8]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a8]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
    </rule>
  </pattern>
  <!-- 026 FINGERPRINT IDENTIFIER -->
  <pattern>
    <title>026 Fingerprint identifier</title>
    <rule
      context="*:datafield[@tag = '026'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^026')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcde2568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcde2568]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 027 STANDARD TECHNICAL REPORT NUMBER -->
  <pattern>
    <title>027 Standard technical report number</title>
    <rule
      context="*:datafield[@tag = '027'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^027')]">
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
      <report test="*:subfield[not(matches(@code, '^[aqz68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[aqz68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 028 PUBLISHER NUMBER -->
  <pattern>
    <title>028 Publisher number</title>
    <rule
      context="*:datafield[@tag = '028'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^028')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of publisher number -->
      <assert test="matches(@ind1, '^[0-6]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[0-6]".</assert>
      <!-- ind2: Note/added entry controller -->
      <assert test="matches(@ind2, '^[0-3]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-3]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abq68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abq68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 029 OTHER SYSTEM CONTROL NUMBER -->
  <pattern>
    <title>029 Other system control number</title>
    <rule
      context="*:datafield[@tag = '029'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^029')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of system control number -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abct]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abct]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 030 CODEN DESIGNATION -->
  <pattern>
    <title>030 Coden designation</title>
    <rule
      context="*:datafield[@tag = '030'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^030')]">
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
      <report test="*:subfield[not(matches(@code, '^[az68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[az68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 031 MUSICAL INCIPITS INFORMATION -->
  <pattern>
    <title>031 Musical incipits information</title>
    <rule
      context="*:datafield[@tag = '031'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^031')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdegmnopqrstuyz268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdegmnopqrstuyz268]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'n']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $n is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'p']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $p is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 032 POSTAL REGISTRATION NUMBER -->
  <pattern>
    <title>032 Postal registration number</title>
    <rule
      context="*:datafield[@tag = '032'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^032')]">
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
      <report test="*:subfield[not(matches(@code, '^[ab68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 033 DATE/TIME AND PLACE OF AN EVENT -->
  <pattern>
    <title>033 Date/time and place of an event</title>
    <rule
      context="*:datafield[@tag = '033'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^033')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of date in subfield $a -->
      <assert test="matches(@ind1, '^[ 012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s012]".</assert>
      <!-- ind2: Type of event -->
      <assert test="matches(@ind2, '^[ 012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s012]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcp368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcp368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 034 CODED CARTOGRAPHIC MATHEMATICAL DATA -->
  <pattern>
    <title>034 Coded cartographic mathematical data</title>
    <rule
      context="*:datafield[@tag = '034'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^034')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of scale -->
      <assert test="matches(@ind1, '^[013]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[013]".</assert>
      <!-- ind2: Type of ring -->
      <assert test="matches(@ind2, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s01]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghjkmnprstxyz012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghjkmnprstxyz012368]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'j']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $j is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'k']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $k is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'n']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $n is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'p']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $p is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'z']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $z is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 035 SYSTEM CONTROL NUMBER -->
  <pattern>
    <title>035 System control number</title>
    <rule
      context="*:datafield[@tag = '035'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^035')]">
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
      <report test="*:subfield[not(matches(@code, '^[abz68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abz68]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <assert test="*:subfield[@code = 'a']">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is required.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'a']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 036 ORIGINAL STUDY NUMBER FOR COMPUTER DATA FILES -->
  <pattern>
    <title>036 Original study number for computer data files</title>
    <rule
      context="*:datafield[@tag = '036'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^036')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '036']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[ab68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 037 SOURCE OF ACQUISITION -->
  <pattern>
    <title>037 Source of acquisition</title>
    <rule
      context="*:datafield[@tag = '037'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^037')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Source of acquisition sequence -->
      <assert test="matches(@ind1, '^[ 23]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s23]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcfgn3568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcfgn3568]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 038 RECORD CONTENT LICENSOR -->
  <pattern>
    <title>038 Record content licensor</title>
    <rule
      context="*:datafield[@tag = '038'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^038')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '038']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 040 CATALOGING SOURCE -->
  <pattern>
    <title>040 Cataloging source</title>
    <rule
      context="*:datafield[@tag = '040'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^040')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '040']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[abcde68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcde68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
    <rule context="*:datafield[@tag = '040'][*:subfield[@code = 'b']]/*:subfield[@code = 'b']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $b must match a valid MARC
        language code.</assert>
    </rule>
  </pattern>
  <!-- 041 LANGUAGE CODE -->
  <pattern>
    <title>041 Language code</title>
    <rule
      context="*:datafield[@tag = '041'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^041')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Translation indication -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Source of code -->
      <assert test="matches(@ind2, '^[ 7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abdefghijkmnpqrt268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abdefghijkmnpqrt268]$'))]/@code, ', ')"
        />
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '041' and @ind2 != '7'][*:subfield[@code = 'a']]/*:subfield[@code = 'a']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $a must match a valid MARC
        language code.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '041' and @ind2 != '7'][*:subfield[@code = 'b']]/*:subfield[@code = 'b']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $b must match a valid MARC
        language code.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '041' and @ind2 != '7'][*:subfield[@code = 'd']]/*:subfield[@code = 'd']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $d must match a valid MARC
        language code.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '041' and @ind2 != '7'][*:subfield[@code = 'e']]/*:subfield[@code = 'e']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $e must match a valid MARC
        language code.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '041' and @ind2 != '7'][*:subfield[@code = 'f']]/*:subfield[@code = 'f']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $f must match a valid MARC
        language code.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '041' and @ind2 != '7'][*:subfield[@code = 'g']]/*:subfield[@code = 'g']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $g must match a valid MARC
        language code.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '041' and @ind2 != '7'][*:subfield[@code = 'h']]/*:subfield[@code = 'h']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $h must match a valid MARC
        language code.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '041' and @ind2 != '7'][*:subfield[@code = 'i']]/*:subfield[@code = 'i']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $i must match a valid MARC
        language code.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '041' and @ind2 != '7'][*:subfield[@code = 'j']]/*:subfield[@code = 'j']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $j must match a valid MARC
        language code.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '041' and @ind2 != '7'][*:subfield[@code = 'k']]/*:subfield[@code = 'k']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $k must match a valid MARC
        language code.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '041' and @ind2 != '7'][*:subfield[@code = 'm']]/*:subfield[@code = 'm']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $m must match a valid MARC
        language code.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '041' and @ind2 != '7'][*:subfield[@code = 'n']]/*:subfield[@code = 'n']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $n must match a valid MARC
        language code.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '041' and @ind2 != '7'][*:subfield[@code = 'p']]/*:subfield[@code = 'p']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $p must match a valid MARC
        language code.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '041' and @ind2 != '7'][*:subfield[@code = 'q']]/*:subfield[@code = 'q']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $q must match a valid MARC
        language code.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '041' and @ind2 != '7'][*:subfield[@code = 'r']]/*:subfield[@code = 'r']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $r must match a valid MARC
        language code.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '041' and @ind2 != '7'][*:subfield[@code = 't']]/*:subfield[@code = 't']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $t must match a valid MARC
        language code.</assert>
    </rule>
  </pattern>
  <pattern>
    <title>041 First $a or $d</title>
    <rule
      context="*:datafield[@tag = '041'][not(matches(substring(ancestor::*:record/*:controlfield[@tag = '008'], 36, 3), 'mul|zxx'))]/*:subfield[matches(@code, '[ad]')][1]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <let name="lang008" value="substring(ancestor::*:record/*:controlfield[@tag = '008'], 36, 3)"/>
      <assert test=". = $lang008" role="warning">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> first subfield $<value-of select="@code"
        /> should match language code in 008/35-37.</assert>
    </rule>
  </pattern>
  <!-- 042 AUTHENTICATION CODE -->
  <pattern>
    <title>042 Authentication code</title>
    <rule
      context="*:datafield[@tag = '042'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^042')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '042']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[a]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
    </rule>
  </pattern>
  <!-- 043 GEOGRAPHIC AREA CODE -->
  <pattern>
    <title>043 Geographic area code</title>
    <rule
      context="*:datafield[@tag = '043'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^043')]">
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
      <report test="*:subfield[not(matches(@code, '^[abc01268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abc01268]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 044 COUNTRY OF PUBLISHING/PRODUCING ENTITY CODE -->
  <pattern>
    <title>044 Country of publishing/producing entity code</title>
    <rule
      context="*:datafield[@tag = '044'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^044')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '044']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[abc268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abc268]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
    <rule context="*:datafield[@tag = '044'][*:subfield[@code = 'a']]/*:subfield[@code = 'a']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcCountryCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $a must match a valid country
        code.</assert>
    </rule>
  </pattern>
  <!-- 045 TIME PERIOD OF CONTENT -->
  <pattern>
    <title>045 Time period of content</title>
    <rule
      context="*:datafield[@tag = '045'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^045')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '045']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
      <!-- Indicators -->
      <!-- ind1: Type of time period in subfield $b or $c -->
      <assert test="matches(@ind1, '^[ 012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s012]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abc68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abc68]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 046 SPECIAL CODED DATES -->
  <pattern>
    <title>046 Special coded dates</title>
    <rule
      context="*:datafield[@tag = '046'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^046')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of entity -->
      <assert test="matches(@ind1, '^[ 123]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s123]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdejklmnopxz2368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdejklmnopxz2368]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'j']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $j is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'k']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $k is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'n']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $n is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'p']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $p is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 047 FORM OF MUSICAL COMPOSITION CODE -->
  <pattern>
    <title>047 Form of musical composition code</title>
    <rule
      context="*:datafield[@tag = '047'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^047')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Undefined -->
      <assert test="matches(@ind1, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s]".</assert>
      <!-- ind2: Source of code -->
      <assert test="matches(@ind2, '^[ 7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[a28]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a28]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 048 NUMBER OF MUSICAL INSTRUMENTS OR VOICES CODE -->
  <pattern>
    <title>048 Number of musical instruments or voices code</title>
    <rule
      context="*:datafield[@tag = '048'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^048')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Undefined -->
      <assert test="matches(@ind1, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s]".</assert>
      <!-- ind2: Source specified in subfield $2 -->
      <assert test="matches(@ind2, '^[ 7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[ab28]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab28]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 049 LOCAL HOLDINGS -->
  <pattern>
    <title>049 Local holdings</title>
    <rule
      context="*:datafield[@tag = '049'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^049')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '049']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
      <!-- Indicators -->
      <!-- ind1: Controls printing -->
      <assert test="matches(@ind1, '^[ 012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s012]".</assert>
      <!-- ind2: Indicates the completeness of holdings data -->
      <assert test="matches(@ind2, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s01]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[acdlmnopqrstuvy]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[acdlmnopqrstuvy]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <assert test="*:subfield[@code = 'a']">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is required.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'n']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $n is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 050 LIBRARY OF CONGRESS CALL NUMBER -->
  <pattern>
    <title>050 Library of congress call number</title>
    <rule
      context="*:datafield[@tag = '050'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^050')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Existence in LC collection -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Source of call number -->
      <assert test="matches(@ind2, '^[ 04]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s04]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abu01368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abu01368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <!-- Recommendations -->
      <assert
        test="matches(normalize-space(string-join(*:subfield, ' ')), '^[A-Z]+\s?\d+(\s?\.\d+)?(\s\d[^\s]+)?(\s?\.[A-Z]+\d+)?(\s\d+[^\s]+)?(\s[A-Z]\d+)?(\s[^\s]+)*$')"
        role="warning">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> suspect value.</assert>
    </rule>
  </pattern>
  <!-- 051 LIBRARY OF CONGRESS COPY, ISSUE, OFFPRINT STATEMENT -->
  <pattern>
    <title>051 Library of congress copy, issue, offprint statement</title>
    <rule
      context="*:datafield[@tag = '051'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^051')]">
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
      <report test="*:subfield[not(matches(@code, '^[abc8]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abc8]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 052 GEOGRAPHIC CLASSIFICATION -->
  <pattern>
    <title>052 Geographic classification</title>
    <rule
      context="*:datafield[@tag = '052'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^052')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Code source -->
      <assert test="matches(@ind1, '^[ 17]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s17]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abd01268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abd01268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 055 CLASSIFICATION NUMBERS ASSIGNED IN CANADA -->
  <pattern>
    <title>055 Classification numbers assigned in canada</title>
    <rule
      context="*:datafield[@tag = '055'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^055')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Existence in LAC collection -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Type, completeness, source of class/call number -->
      <assert test="matches(@ind2, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-9]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[ab01268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab01268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 060 NATIONAL LIBRARY OF MEDICINE CALL NUMBER -->
  <pattern>
    <title>060 National library of medicine call number</title>
    <rule
      context="*:datafield[@tag = '060'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^060')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Existence in NLM collection -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Source of call number -->
      <assert test="matches(@ind2, '^[ 04]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s04]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[ab018]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab018]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 061 NATIONAL LIBRARY OF MEDICINE COPY STATEMENT -->
  <pattern>
    <title>061 National library of medicine copy statement</title>
    <rule
      context="*:datafield[@tag = '061'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^061')]">
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
      <report test="*:subfield[not(matches(@code, '^[abc8]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abc8]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 066 CHARACTER SETS PRESENT -->
  <pattern>
    <title>066 Character sets present</title>
    <rule
      context="*:datafield[@tag = '066'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^066')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '066']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[abc]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abc]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 070 NATIONAL AGRICULTURAL LIBRARY CALL NUMBER -->
  <pattern>
    <title>070 National agricultural library call number</title>
    <rule
      context="*:datafield[@tag = '070'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^070')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Existence in NAL collection -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[ab018]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab018]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 071 NATIONAL AGRICULTURAL LIBRARY COPY STATEMENT -->
  <pattern>
    <title>071 National agricultural library copy statement</title>
    <rule
      context="*:datafield[@tag = '071'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^071')]">
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
      <report test="*:subfield[not(matches(@code, '^[abc8]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abc8]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 072 SUBJECT CATEGORY CODE -->
  <pattern>
    <title>072 Subject category code</title>
    <rule
      context="*:datafield[@tag = '072'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^072')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Undefined -->
      <assert test="matches(@ind1, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s]".</assert>
      <!-- ind2: Source specified in subfield $2 -->
      <assert test="matches(@ind2, '^[ 07]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s07]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[ax268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ax268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 074 GPO ITEM NUMBER -->
  <pattern>
    <title>074 Gpo item number</title>
    <rule
      context="*:datafield[@tag = '074'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^074')]">
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
      <report test="*:subfield[not(matches(@code, '^[az8]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[az8]$'))]/@code, ', ')"/>
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
    </rule>
  </pattern>
  <!-- 080 UNIVERSAL DECIMAL CLASSIFICATION NUMBER -->
  <pattern>
    <title>080 Universal decimal classification number</title>
    <rule
      context="*:datafield[@tag = '080'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^080')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of edition -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abx01268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abx01268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 082 DEWEY DECIMAL CLASSIFICATION NUMBER -->
  <pattern>
    <title>082 Dewey decimal classification number</title>
    <rule
      context="*:datafield[@tag = '082'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^082')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of edition -->
      <assert test="matches(@ind1, '^[ 0217]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s0217]".</assert>
      <!-- ind2: Source of classification number -->
      <assert test="matches(@ind2, '^[ 04]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s04]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abmq268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abmq268]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 083 ADDITIONAL DEWEY DECIMAL CLASSIFICATION NUMBER -->
  <pattern>
    <title>083 Additional dewey decimal classification number</title>
    <rule
      context="*:datafield[@tag = '083'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^083')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of edition -->
      <assert test="matches(@ind1, '^[ 017]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s017]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[acmqyz268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[acmqyz268]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 084 OTHER CLASSIFICATION NUMBER -->
  <pattern>
    <title>084 Other classification number</title>
    <rule
      context="*:datafield[@tag = '084'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^084')]">
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
      <report test="*:subfield[not(matches(@code, '^[abq01268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abq01268]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 085 SYNTHESIZED CLASSIFICATION NUMBER COMPONENTS -->
  <pattern>
    <title>085 Synthesized classification number components</title>
    <rule
      context="*:datafield[@tag = '085'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^085')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcfrstuvwyz0168]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcfrstuvwyz0168]$'))]/@code, ', ')"
        />
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 086 GOVERNMENT DOCUMENT CLASSIFICATION NUMBER -->
  <pattern>
    <title>086 Government document classification number</title>
    <rule
      context="*:datafield[@tag = '086'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^086')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Number source -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[az01268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[az01268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 088 REPORT NUMBER -->
  <pattern>
    <title>088 Report number</title>
    <rule
      context="*:datafield[@tag = '088'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^088')]">
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
      <report test="*:subfield[not(matches(@code, '^[az68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[az68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 090 LOCALLY ASSIGNED LC-TYPE CALL NUMBER -->
  <pattern>
    <title>090 Locally assigned LC-type call number</title>
    <rule
      context="*:datafield[@tag = '090'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^090')]">
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
      <report test="*:subfield[not(matches(@code, '^[abefmq]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abefmq]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <assert test="*:subfield[@code = 'a']">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is required.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <!-- Recommendations -->
      <assert
        test="matches(normalize-space(string-join(*:subfield, ' ')), '^[A-Z]+\s?\d+(\s?\.\d+)?(\s\d[^\s]+)?(\s?\.[A-Z]+\d+)?(\s\d+[^\s]+)?(\s[A-Z]\d+)?(\s[^\s]+)*$')"
        role="warning">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> suspect value.</assert>
    </rule>
  </pattern>
  <!-- 092 LOCALLY ASSIGNED DEWEY CALL NUMBER -->
  <pattern>
    <title>092 Locally assigned dewey call number</title>
    <rule
      context="*:datafield[@tag = '092'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^092')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: DDC edition -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abef2]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abef2]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <assert test="*:subfield[@code = 'a']">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is required.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'a']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 096 LOCALLY ASSIGNED NLM-TYPE CALL NUMBER -->
  <pattern>
    <title>096 Locally assigned nlm-type call number</title>
    <rule
      context="*:datafield[@tag = '096'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^096')]">
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
      <report test="*:subfield[not(matches(@code, '^[abef]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abef]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <assert test="*:subfield[@code = 'a']">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is required.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'a']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 098 OTHER CLASSIFICATION SCHEMES -->
  <pattern>
    <title>098 Other classification schemes</title>
    <rule
      context="*:datafield[@tag = '098'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^098')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: OCLC defined -->
      <assert test="matches(@ind1, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[0-9]".</assert>
      <!-- ind2: OCLC defined -->
      <assert test="matches(@ind2, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-9]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[aef]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[aef]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <assert test="*:subfield[@code = 'a']">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is required.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 099 LOCAL FREE-TEXT CALL NUMBER -->
  <pattern>
    <title>099 Local free-text call number</title>
    <rule
      context="*:datafield[@tag = '099'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^099')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Undefined -->
      <assert test="matches(@ind1, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s]".</assert>
      <!-- ind2: Source of call number -->
      <assert test="matches(@ind2, '^[ 019]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s019]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[aef]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[aef]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <assert test="*:subfield[@code = 'a']">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is required.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 100 MAIN ENTRY — PERSONAL NAME -->
  <pattern>
    <title>100 Main entry — personal name</title>
    <rule
      context="*:datafield[@tag = '100'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^100')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '100']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
      <!-- Indicators -->
      <!-- ind1: Type of personal name entry element -->
      <assert test="matches(@ind1, '^[013]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[013]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefgjklnpqtu012468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefgjklnpqtu012468]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 110 MAIN ENTRY — CORPORATE NAME -->
  <pattern>
    <title>110 Main entry — corporate name</title>
    <rule
      context="*:datafield[@tag = '110'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^110')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '110']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
      <!-- Indicators -->
      <!-- ind1: Type of corporate name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefgklnptu012468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefgklnptu012468]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 111 MAIN ENTRY — MEETING NAME -->
  <pattern>
    <title>111 Main entry — meeting name</title>
    <rule
      context="*:datafield[@tag = '111'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^111')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '111']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
      <!-- Indicators -->
      <!-- ind1: Type of meeting name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[acdefgjklnpqtu012468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[acdefgjklnpqtu012468]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 130 MAIN ENTRY — UNIFORM TITLE -->
  <pattern>
    <title>130 Main entry — uniform title</title>
    <rule
      context="*:datafield[@tag = '130'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^130')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '130']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
      <!-- Indicators -->
      <!-- ind1: Nonfiling characters -->
      <assert test="matches(@ind1, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[0-9]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[adfghklmnoprst01268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[adfghklmnoprst01268]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 210 ABBREVIATED TITLE -->
  <pattern>
    <title>210 Abbreviated title</title>
    <rule
      context="*:datafield[@tag = '210'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^210')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Title added entry -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Type -->
      <assert test="matches(@ind2, '^[ 0]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s0]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[ab268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 222 KEY TITLE -->
  <pattern>
    <title>222 Key title</title>
    <rule
      context="*:datafield[@tag = '222'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^222')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Specifies whether variant title and/or added entry is required -->
      <assert test="matches(@ind1, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s]".</assert>
      <!-- ind2: Nonfiling characters -->
      <assert test="matches(@ind2, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-9]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[ab68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 240 UNIFORM TITLE -->
  <pattern>
    <title>240 Uniform title</title>
    <rule
      context="*:datafield[@tag = '240'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^240')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '240']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
      <!-- Indicators -->
      <!-- ind1: Uniform title printed or displayed -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Nonfiling characters -->
      <assert test="matches(@ind2, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-9]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[adfghklmnoprs01268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[adfghklmnoprs01268]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 242 TRANSLATION OF TITLE BY CATALOGING AGENCY -->
  <pattern>
    <title>242 Translation of title by cataloging agency</title>
    <rule
      context="*:datafield[@tag = '242'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^242')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Title added entry -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Nonfiling characters -->
      <assert test="matches(@ind2, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-9]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abchnpy68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abchnpy68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
    <rule context="*:datafield[@tag = '242'][*:subfield[@code = 'y']]/*:subfield[@code = 'y']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcLangCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $y must match a valid MARC
        language code.</assert>
    </rule>
  </pattern>
  <!-- 243 COLLECTIVE UNIFORM TITLE -->
  <pattern>
    <title>243 Collective uniform title</title>
    <rule
      context="*:datafield[@tag = '243'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^243')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '243']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
      <!-- Indicators -->
      <!-- ind1: Uniform title printed or displayed -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Nonfiling characters -->
      <assert test="matches(@ind2, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-9]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[adfghklmnoprs68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[adfghklmnoprs68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 245 TITLE STATEMENT -->
  <pattern>
    <title>245 Title statement</title>
    <rule
      context="*:datafield[@tag = '245'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^245')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '245']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
      <!-- Indicators -->
      <!-- ind1: Title added entry -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Nonfiling characters -->
      <assert test="matches(@ind2, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-9]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcfghknps68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcfghknps68]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <assert test="*:subfield[@code = 'a']">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is required.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'a']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 246 VARYING FORM OF TITLE -->
  <pattern>
    <title>246 Varying form of title</title>
    <rule
      context="*:datafield[@tag = '246'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^246')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Note/added entry controller -->
      <assert test="matches(@ind1, '^[0-3]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[0-3]".</assert>
      <!-- ind2: Type of title -->
      <assert test="matches(@ind2, '^[ 012345678]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s012345678]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abfghinp568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abfghinp568]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 247 FORMER TITLE -->
  <pattern>
    <title>247 Former title</title>
    <rule
      context="*:datafield[@tag = '247'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^247')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Title added entry -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Note controller -->
      <assert test="matches(@ind2, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[01]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abfghnpx68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abfghnpx68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 250 EDITION STATEMENT -->
  <pattern>
    <title>250 Edition statement</title>
    <rule
      context="*:datafield[@tag = '250'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^250')]">
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
      <report test="*:subfield[not(matches(@code, '^[ab368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab368]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 251 VERSION INFORMATION -->
  <pattern>
    <title>251 Version information</title>
    <rule
      context="*:datafield[@tag = '251'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^251')]">
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
      <report test="*:subfield[not(matches(@code, '^[a012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a012368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 254 MUSICAL PRESENTATION STATEMENT -->
  <pattern>
    <title>254 Musical presentation statement</title>
    <rule
      context="*:datafield[@tag = '254'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^254')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '254']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 255 CARTOGRAPHIC MATHEMATICAL DATA -->
  <pattern>
    <title>255 Cartographic mathematical data</title>
    <rule
      context="*:datafield[@tag = '255'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^255')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefg68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefg68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 256 COMPUTER FILE CHARACTERISTICS -->
  <pattern>
    <title>256 Computer file characteristics</title>
    <rule
      context="*:datafield[@tag = '256'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^256')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '256']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 257 COUNTRY OF PRODUCING ENTITY FOR ARCHIVAL FILMS -->
  <pattern>
    <title>257 Country of producing entity for archival films</title>
    <rule
      context="*:datafield[@tag = '257'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^257')]">
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
      <report test="*:subfield[not(matches(@code, '^[a01268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a01268]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 258 PHILATELIC ISSUE DATE -->
  <pattern>
    <title>258 Philatelic issue date</title>
    <rule
      context="*:datafield[@tag = '258'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^258')]">
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
      <report test="*:subfield[not(matches(@code, '^[ab68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 260 PUBLICATION, DISTRIBUTION, ETC. (IMPRINT) -->
  <pattern>
    <title>260 Publication, distribution, etc. (imprint)</title>
    <rule
      context="*:datafield[@tag = '260'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^260')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Sequence of publishing statements -->
      <assert test="matches(@ind1, '^[ 23]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s23]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefg368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefg368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '260' and matches(substring(../*:leader, 8, 1), '[am]') and not(../*:datafield[@tag = '502'])]">
      <let name="record001" value="../*:controlfield[@tag = '001']"/>
      <assert test="*:subfield[@code = 'a']" role="warning">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="@tag"/> subfield $a is recommended.</assert>
      <assert test="*:subfield[@code = 'b']" role="warning">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="@tag"/> subfield $b is recommended.</assert>
      <assert test="*:subfield[@code = 'c']" role="warning">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="@tag"/> subfield $c is recommended.</assert>
    </rule>
  </pattern>
  <!-- 261 IMPRINT STATEMENT FOR FILMS (PRE-AACR 1 REVISED) -->
  <pattern>
    <title>261 IMPRINT STATEMENT FOR FILMS (Pre-AACR 1 Revised)</title>
    <rule
      context="*:datafield[@tag = '261'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^261')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '261']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[abdef68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abdef68]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 262 IMPRINT STATEMENT FOR SOUND RECORDINGS (PRE-AACR 2) -->
  <pattern>
    <title>262 IMPRINT STATEMENT FOR SOUND RECORDINGS (Pre-AACR 2)</title>
    <rule
      context="*:datafield[@tag = '262'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^262')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '262']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[abckl68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abckl68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'k']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $k is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 263 PROJECTED PUBLICATION DATE -->
  <pattern>
    <title>263 Projected publication date</title>
    <rule
      context="*:datafield[@tag = '263'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^263')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '263']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 264 PRODUCTION, PUBLICATION, DISTRIBUTION, MANUFACTURE, AND     COPYRIGHT NOTICE -->
  <pattern>
    <title>264 Production, publication, distribution, manufacture, and copyright notice</title>
    <rule
      context="*:datafield[@tag = '264'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^264')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Sequence of statements -->
      <assert test="matches(@ind1, '^[ 23]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s23]".</assert>
      <!-- ind2: Function of entity -->
      <assert test="matches(@ind2, '^[0-4]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-4]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abc368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abc368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 270 ADDRESS -->
  <pattern>
    <title>270 Address</title>
    <rule
      context="*:datafield[@tag = '270'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^270')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Level -->
      <assert test="matches(@ind1, '^[ 12]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s12]".</assert>
      <!-- ind2: Type of address -->
      <assert test="matches(@ind2, '^[ 07]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s07]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnpqrz468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnpqrz468]$'))]/@code, ', ')"
        />
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 300 PHYSICAL DESCRIPTION -->
  <pattern>
    <title>300 Physical description</title>
    <rule
      context="*:datafield[@tag = '300'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^300')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcefg368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcefg368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
    <rule
      context="*:datafield[@tag = '300' and matches(substring(../*:leader, 7, 1), '[at]') and matches(substring(../*:leader, 8, 1), '[am]')]">
      <let name="record001" value="../*:controlfield[@tag = '001']"/>
      <assert test="*:subfield[@code = 'a']" role="warning">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="@tag"/> subfield $a is recommended.</assert>
      <assert test="*:subfield[@code = 'c']" role="warning">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="@tag"/> subfield $c is recommended.</assert>
    </rule>
  </pattern>
  <!-- 306 PLAYING TIME -->
  <pattern>
    <title>306 Playing time</title>
    <rule
      context="*:datafield[@tag = '306'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^306')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '306']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 307 HOURS, ETC. -->
  <pattern>
    <title>307 Hours, etc.</title>
    <rule
      context="*:datafield[@tag = '307'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^307')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s8]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[ab68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 310 CURRENT PUBLICATION FREQUENCY -->
  <pattern>
    <title>310 Current publication frequency</title>
    <rule
      context="*:datafield[@tag = '310'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^310')]">
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
      <report test="*:subfield[not(matches(@code, '^[ab01268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab01268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '0']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $0 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 321 FORMER PUBLICATION FREQUENCY -->
  <pattern>
    <title>321 Former publication frequency</title>
    <rule
      context="*:datafield[@tag = '321'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^321')]">
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
      <report test="*:subfield[not(matches(@code, '^[ab01268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab01268]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Recommended subfields -->
      <assert test="*:subfield[@code = 'b']" role="warning">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is recommended.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'a']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '0']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $0 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 334 MODE OF ISSUANCE -->
  <pattern>
    <title>334 Mode of issuance</title>
    <rule
      context="*:datafield[@tag = '334'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^334')]">
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
      <report test="*:subfield[not(matches(@code, '^[ab01268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab01268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 336 CONTENT TYPE -->
  <pattern>
    <title>336 Content type</title>
    <rule
      context="*:datafield[@tag = '336'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^336')]">
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
      <report test="*:subfield[not(matches(@code, '^[ab012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab012368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 337 MEDIA TYPE -->
  <pattern>
    <title>337 Media type</title>
    <rule
      context="*:datafield[@tag = '337'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^337')]">
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
      <report test="*:subfield[not(matches(@code, '^[ab012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab012368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 338 CARRIER TYPE -->
  <pattern>
    <title>338 Carrier type</title>
    <rule
      context="*:datafield[@tag = '338'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^338')]">
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
      <report test="*:subfield[not(matches(@code, '^[ab012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab012368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 340 PHYSICAL MEDIUM -->
  <pattern>
    <title>340 Physical medium</title>
    <rule
      context="*:datafield[@tag = '340'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^340')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnopq012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnopq012368]$'))]/@code, ', ')"
        />
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 341 ACCESSIBILITY CONTENT -->
  <pattern>
    <title>341 Accessibility content</title>
    <rule
      context="*:datafield[@tag = '341'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^341')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Application -->
      <assert test="matches(@ind1, '^[\s01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[\s]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcde2368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcde2368]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 342 GEOSPATIAL REFERENCE DATA -->
  <pattern>
    <title>342 Geospatial reference data</title>
    <rule
      context="*:datafield[@tag = '342'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^342')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Geospatial reference dimension -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Geospatial reference method -->
      <assert test="matches(@ind2, '^[0-8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-8]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmopqrstuvw268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmopqrstuvw268]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'j']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $j is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'k']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $k is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'p']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $p is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'v']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $v is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'w']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $w is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 343 PLANAR COORDINATE DATA -->
  <pattern>
    <title>343 Planar coordinate data</title>
    <rule
      context="*:datafield[@tag = '343'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^343')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefghi68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghi68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 344 SOUND CHARACTERISTICS -->
  <pattern>
    <title>344 Sound characteristics</title>
    <rule
      context="*:datafield[@tag = '344'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^344')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefghi012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghi012368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 345 PROJECTION CHARACTERISTICS OF MOVING IMAGE -->
  <pattern>
    <title>345 Projection characteristics of moving image</title>
    <rule
      context="*:datafield[@tag = '345'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^345')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcd012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcd012368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 346 VIDEO CHARACTERISTICS -->
  <pattern>
    <title>346 Video characteristics</title>
    <rule
      context="*:datafield[@tag = '346'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^346')]">
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
      <report test="*:subfield[not(matches(@code, '^[ab012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab012368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 347 DIGITAL FILE CHARACTERISTICS -->
  <pattern>
    <title>347 Digital file characteristics</title>
    <rule
      context="*:datafield[@tag = '347'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^347')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdef012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdef012368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 348 NOTATED MUSIC CHARACTERISTICS -->
  <pattern>
    <title>348 Notated music characteristics</title>
    <rule
      context="*:datafield[@tag = '348'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^348')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcd012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcd012368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 351 ORGANIZATION AND ARRANGEMENT OF MATERIALS -->
  <pattern>
    <title>351 Organization and arrangement of materials</title>
    <rule
      context="*:datafield[@tag = '351'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^351')]">
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
      <report test="*:subfield[not(matches(@code, '^[abc368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abc368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 352 DIGITAL GRAPHIC REPRESENTATION -->
  <pattern>
    <title>352 Digital graphic representation</title>
    <rule
      context="*:datafield[@tag = '352'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^352')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefgiq68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefgiq68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 353 SUPPLEMENTARY CONTENT CHARACTERISTICS -->
  <pattern>
    <title>353 Supplementary content characteristics</title>
    <rule
      context="*:datafield[@tag = '353'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^353')]">
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
      <report test="*:subfield[not(matches(@code, '^[ab012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab012368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 355 SECURITY CLASSIFICATION CONTROL -->
  <pattern>
    <title>355 Security classification control</title>
    <rule
      context="*:datafield[@tag = '355'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^355')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Controlled element -->
      <assert test="matches(@ind1, '^[0123458]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[0123458]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghj68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghj68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
    <rule context="*:datafield[@tag = '355'][*:subfield[@code = 'f']]/*:subfield[@code = 'f']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcCountryCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $b must match a valid country
        code.</assert>
    </rule>
  </pattern>
  <!-- 357 ORIGINATOR DISSEMINATION CONTROL -->
  <pattern>
    <title>357 Originator dissemination control</title>
    <rule
      context="*:datafield[@tag = '357'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^357')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '357']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[abcg68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcg68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 362 DATES OF PUBLICATION AND/OR SEQUENTIAL DESIGNATION -->
  <pattern>
    <title>362 Dates of publication and/or sequential designation</title>
    <rule
      context="*:datafield[@tag = '362'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^362')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Format of date -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[az68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[az68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'z']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $z is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 363 NORMALIZED DATE AND SEQUENTIAL DESIGNATION -->
  <pattern>
    <title>363 Normalized date and sequential designation</title>
    <rule
      context="*:datafield[@tag = '363'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^363')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Start/End designator -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: State of issuanceUndefined -->
      <assert test="matches(@ind2, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s01]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmuvxz68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmuvxz68]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'j']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $j is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'k']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $k is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'v']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $v is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '8']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $8 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 365 TRADE PRICE -->
  <pattern>
    <title>365 Trade price</title>
    <rule
      context="*:datafield[@tag = '365'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^365')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefghijkm268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijkm268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'j']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $j is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'k']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $k is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
    <rule context="*:datafield[@tag = '365'][*:subfield[@code = 'k']]/*:subfield[@code = 'k']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcCountryCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $k must match a valid MARC
        country code.</assert>
    </rule>
  </pattern>
  <!-- 366 TRADE AVAILABILITY INFORMATION -->
  <pattern>
    <title>366 Trade availability information</title>
    <rule
      context="*:datafield[@tag = '366'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^366')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefgjkm268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefgjkm268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'j']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $j is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'k']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $k is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
    <rule context="*:datafield[@tag = '366'][*:subfield[@code = 'k']]/*:subfield[@code = 'k']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcCountryCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $k must match a valid MARC
        country code.</assert>
    </rule>
  </pattern>
  <!-- 370 ASSOCIATED PLACE -->
  <pattern>
    <title>370 Associated place</title>
    <rule
      context="*:datafield[@tag = '370'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^370')]">
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
      <report test="*:subfield[not(matches(@code, '^[cfgistuv0123468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[cfgistuv0123468]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 377 ASSOCIATED LANGUAGE -->
  <pattern>
    <title>377 Associated language</title>
    <rule
      context="*:datafield[@tag = '377'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^377')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Undefined -->
      <assert test="matches(@ind1, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s]".</assert>
      <!-- ind2: Source of code -->
      <assert test="matches(@ind2, '^[ 7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[al012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[al012368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 380 FORM OF WORK -->
  <pattern>
    <title>380 Form of work</title>
    <rule
      context="*:datafield[@tag = '380'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^380')]">
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
      <report test="*:subfield[not(matches(@code, '^[a012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a012368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 381 OTHER DISTINGUISHING CHARACTERISTICS OF WORK OR EXPRESSION -->
  <pattern>
    <title>381 Other distinguishing characteristics of work or expression</title>
    <rule
      context="*:datafield[@tag = '381'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^381')]">
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
      <report test="*:subfield[not(matches(@code, '^[auv012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[auv012368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 382 MEDIUM OF PERFORMANCE -->
  <pattern>
    <title>382 Medium of performance</title>
    <rule
      context="*:datafield[@tag = '382'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^382')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Access control -->
      <assert test="matches(@ind2, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s01]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abdenprstv012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abdenprstv012368]$'))]/@code, ', ')"
        />
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 383 NUMERIC DESIGNATION OF MUSICAL WORK -->
  <pattern>
    <title>383 Numeric designation of musical work</title>
    <rule
      context="*:datafield[@tag = '383'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^383')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcde2368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcde2368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 384 KEY -->
  <pattern>
    <title>384 Key</title>
    <rule
      context="*:datafield[@tag = '384'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^384')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Key type -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[a368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a368]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 385 AUDIENCE CHARACTERISTICS -->
  <pattern>
    <title>385 Audience characteristics</title>
    <rule
      context="*:datafield[@tag = '385'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^385')]">
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
      <report test="*:subfield[not(matches(@code, '^[abmn012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abmn012368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'n']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $n is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 386 CREATOR/CONTRIBUTOR CHARACTERISTICS -->
  <pattern>
    <title>386 Creator/contributor characteristics</title>
    <rule
      context="*:datafield[@tag = '386'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^386')]">
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
      <report test="*:subfield[not(matches(@code, '^[abimn0123468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abimn0123468]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'n']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $n is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 388 TIME PERIOD OF CREATION -->
  <pattern>
    <title>388 Time period of creation</title>
    <rule
      context="*:datafield[@tag = '388'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^388')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of time period -->
      <assert test="matches(@ind1, '^[ 12]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s12]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[a012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a012368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 400 SERIES STATEMENT/ADDED ENTRY — PERSONAL NAME (PRE RDA) -->
  <pattern>
    <title>400 Series statement/added entry — personal name (pre rda)</title>
    <rule
      context="*:datafield[@tag = '400'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^400')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of personal name entry element -->
      <assert test="matches(@ind1, '^[013]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[013]".</assert>
      <!-- ind2: Pronoun represents main entry -->
      <assert test="matches(@ind2, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[01]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefgklnptuvx468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefgklnptuvx468]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'v']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $v is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 410 SERIES STATEMENT/ADDED ENTRY — CORPORATE NAME (PRE RDA) -->
  <pattern>
    <title>410 Series statement/added entry — corporate name (pre rda)</title>
    <rule
      context="*:datafield[@tag = '410'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^410')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of corporate name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Pronoun represents main entry -->
      <assert test="matches(@ind2, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[01]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefgklnptuvx468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefgklnptuvx468]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'v']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $v is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 411 SERIES STATEMENT/ADDED ENTRY — MEETING NAME (PRE RDA) -->
  <pattern>
    <title>411 Series statement/added entry — meeting name (pre rda)</title>
    <rule
      context="*:datafield[@tag = '411'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^411')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of meeting name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Pronoun represents main entry -->
      <assert test="matches(@ind2, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[01]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[acdefgklnpqtuvx468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[acdefgklnpqtuvx468]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'v']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $v is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 440 SERIES STATEMENT/ADDED ENTRY — TITLE [OBSOLETE] -->
  <pattern>
    <title>440 Series statement/added entry — title [obsolete]</title>
    <rule
      context="*:datafield[@tag = '440'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^440')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Undefined -->
      <assert test="matches(@ind1, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s]".</assert>
      <!-- ind2: Nonfiling characters -->
      <assert test="matches(@ind2, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-9]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[anpvxw068]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[anpvxw068]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'v']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $v is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 490 SERIES STATEMENT -->
  <pattern>
    <title>490 Series statement</title>
    <rule
      context="*:datafield[@tag = '490'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^490')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Series tracing policy -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[alvx368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[alvx368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <pattern>
    <title>Co-constraint with 8xx</title>
    <rule context="*:datafield[@tag = '490' and @ind1 = '1']">
      <let name="record001" value="../*:controlfield[@tag = '001']"/>
      <assert test="../*:datafield[matches(@tag, '800|810|811|830')]">
        <value-of select="concat($record001, ' :: ')"/>When <value-of select="@tag"/> @ind1 = "1", a
        corresponding 8xx field is required.</assert>
    </rule>
  </pattern>
  <!-- 500 GENERAL NOTE -->
  <pattern>
    <title>500 General note</title>
    <rule
      context="*:datafield[@tag = '500'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^500')]">
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
      <report test="*:subfield[not(matches(@code, '^[a3568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a3568]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 501 WITH NOTE -->
  <pattern>
    <title>501 With note</title>
    <rule
      context="*:datafield[@tag = '501'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^501')]">
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
      <report test="*:subfield[not(matches(@code, '^[a568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a568]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 502 DISSERTATION NOTE -->
  <pattern>
    <title>502 Dissertation note</title>
    <rule
      context="*:datafield[@tag = '502'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^502')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdgo68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdgo68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 504 BIBLIOGRAPHY, ETC. NOTE -->
  <pattern>
    <title>504 Bibliography, etc. note</title>
    <rule
      context="*:datafield[@tag = '504'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^504')]">
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
      <report test="*:subfield[not(matches(@code, '^[ab68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 505 FORMATTED CONTENTS NOTE -->
  <pattern>
    <title>505 Formatted contents note</title>
    <rule
      context="*:datafield[@tag = '505'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^505')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[0128]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[0128]".</assert>
      <!-- ind2: Level of content designation -->
      <assert test="matches(@ind2, '^[ 0]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s0]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[agrtu68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[agrtu68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
    <rule context="*:datafield[@tag = '505'][@ind2 eq '0']">
      <let name="record001" value="../*:controlfield[@tag = '001']"/>
      <report test="*:subfield[matches(@code, 'a')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="@tag"/> subfield $a is not permitted in extended contents note</report>
    </rule>
  </pattern>
  <!-- 506 RESTRICTIONS ON ACCESS NOTE -->
  <pattern>
    <title>506 Restrictions on access note</title>
    <rule
      context="*:datafield[@tag = '506'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^506')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Restriction -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefgqu23568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefgqu23568]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 507 SCALE NOTE FOR GRAPHIC MATERIAL -->
  <pattern>
    <title>507 Scale note for graphic material</title>
    <rule
      context="*:datafield[@tag = '507'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^507')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '507']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[ab68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 508 CREATION/PRODUCTION CREDITS NOTE -->
  <pattern>
    <title>508 Creation/production credits note</title>
    <rule
      context="*:datafield[@tag = '508'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^508')]">
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
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 510 CITATION/REFERENCES NOTE -->
  <pattern>
    <title>510 Citation/references note</title>
    <rule
      context="*:datafield[@tag = '510'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^510')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Coverage/location in source -->
      <assert test="matches(@ind1, '^[0-4]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[0-4]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcux368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcux368]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 511 PARTICIPANT OR PERFORMER NOTE -->
  <pattern>
    <title>511 Participant or performer note</title>
    <rule
      context="*:datafield[@tag = '511'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^511')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 513 TYPE OF REPORT AND PERIOD COVERED NOTE -->
  <pattern>
    <title>513 Type of report and period covered note</title>
    <rule
      context="*:datafield[@tag = '513'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^513')]">
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
      <report test="*:subfield[not(matches(@code, '^[ab68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 514 DATA QUALITY NOTE -->
  <pattern>
    <title>514 Data quality note</title>
    <rule
      context="*:datafield[@tag = '514'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^514')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '514']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[abcdefghijkmuz68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijkmuz68]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 515 NUMBERING PECULIARITIES NOTE -->
  <pattern>
    <title>515 Numbering peculiarities note</title>
    <rule
      context="*:datafield[@tag = '515'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^515')]">
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
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 516 TYPE OF COMPUTER FILE OR DATA NOTE -->
  <pattern>
    <title>516 Type of computer file or data note</title>
    <rule
      context="*:datafield[@tag = '516'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^516')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s8]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 518 DATE/TIME AND PLACE OF AN EVENT NOTE -->
  <pattern>
    <title>518 Date/time and place of an event note</title>
    <rule
      context="*:datafield[@tag = '518'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^518')]">
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
      <report test="*:subfield[not(matches(@code, '^[adop012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[adop012368]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 520 SUMMARY, ETC. -->
  <pattern>
    <title>520 Summary, etc.</title>
    <rule
      context="*:datafield[@tag = '520'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^520')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[ 012348]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s012348]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcu2368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcu2368]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 521 TARGET AUDIENCE NOTE -->
  <pattern>
    <title>521 Target audience note</title>
    <rule
      context="*:datafield[@tag = '521'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^521')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[ 012348]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s012348]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[ab368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 522 GEOGRAPHIC COVERAGE NOTE -->
  <pattern>
    <title>522 Geographic coverage note</title>
    <rule
      context="*:datafield[@tag = '522'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^522')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s8]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 524 PREFERRED CITATION OF DESCRIBED MATERIALS NOTE -->
  <pattern>
    <title>524 Preferred citation of described materials note</title>
    <rule
      context="*:datafield[@tag = '524'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^524')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s8]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[a2368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a2368]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 525 SUPPLEMENT NOTE -->
  <pattern>
    <title>525 Supplement note</title>
    <rule
      context="*:datafield[@tag = '525'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^525')]">
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
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 526 STUDY PROGRAM INFORMATION NOTE -->
  <pattern>
    <title>526 Study program information note</title>
    <rule
      context="*:datafield[@tag = '526'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^526')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[08]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[08]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdixz568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdixz568]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 530 ADDITIONAL PHYSICAL FORM AVAILABLE NOTE -->
  <pattern>
    <title>530 Additional physical form available note</title>
    <rule
      context="*:datafield[@tag = '530'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^530')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdu368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdu368]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 532 ACCESSIBILITY NOTE -->
  <pattern>
    <title>532 Accessibility note</title>
    <rule
      context="*:datafield[@tag = '532'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^532')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[0128]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[0128]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 533 REPRODUCTION NOTE -->
  <pattern>
    <title>533 Reproduction note</title>
    <rule
      context="*:datafield[@tag = '533'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^533')]">
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
  </pattern>
  <!-- 534 ORIGINAL VERSION NOTE -->
  <pattern>
    <title>534 Original version note</title>
    <rule
      context="*:datafield[@tag = '534'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^534')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcefklmnoptxz368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcefklmnoptxz368]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'p']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $p is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 535 LOCATION OF ORIGINALS/DUPLICATES NOTE -->
  <pattern>
    <title>535 Location of originals/duplicates note</title>
    <rule
      context="*:datafield[@tag = '535'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^535')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Additional information about custodian -->
      <assert test="matches(@ind1, '^[12]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[12]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdg368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdg368]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 536 FUNDING INFORMATION NOTE -->
  <pattern>
    <title>536 Funding information note</title>
    <rule
      context="*:datafield[@tag = '536'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^536')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefgh68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefgh68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 538 SYSTEM DETAILS NOTE -->
  <pattern>
    <title>538 System details note</title>
    <rule
      context="*:datafield[@tag = '538'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^538')]">
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
      <report test="*:subfield[not(matches(@code, '^[aiu3568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[aiu3568]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 539 FIXED-LENGTH DATA ELEMENTS OF REPRODUCTION NOTE -->
  <pattern>
    <title>539 Fixed-length data elements of reproduction note</title>
    <rule
      context="*:datafield[@tag = '539'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^539')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefg]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefg]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Recommended subfields -->
      <assert test="*:subfield[@code = 'a']" role="warning">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is recommended.</assert>
      <assert test="*:subfield[@code = 'b']" role="warning">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is recommended.</assert>
      <assert test="*:subfield[@code = 'c']" role="warning">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is recommended.</assert>
      <assert test="*:subfield[@code = 'd']" role="warning">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is recommended.</assert>
      <assert test="*:subfield[@code = 'e']" role="warning">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is recommended.</assert>
      <assert test="*:subfield[@code = 'f']" role="warning">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is recommended.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'a']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 540 TERMS GOVERNING USE AND REPRODUCTION NOTE -->
  <pattern>
    <title>540 Terms governing use and reproduction note</title>
    <rule
      context="*:datafield[@tag = '540'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^540')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdfgqu23568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdfgqu23568]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 541 IMMEDIATE SOURCE OF ACQUISITION NOTE -->
  <pattern>
    <title>541 Immediate source of acquisition note</title>
    <rule
      context="*:datafield[@tag = '541'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^541')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Privacy -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefhno3568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefhno3568]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 542 INFORMATION RELATING TO COPYRIGHT STATUS -->
  <pattern>
    <title>542 Information relating to copyright status</title>
    <rule
      context="*:datafield[@tag = '542'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^542')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Privacy -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnopqrsu368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnopqrsu368]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'j']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $j is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 544 LOCATION OF OTHER ARCHIVAL MATERIALS NOTE -->
  <pattern>
    <title>544 Location of other archival materials note</title>
    <rule
      context="*:datafield[@tag = '544'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^544')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Relationship -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcden368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcden368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 545 BIOGRAPHICAL OR HISTORICAL DATA -->
  <pattern>
    <title>545 Biographical or historical data</title>
    <rule
      context="*:datafield[@tag = '545'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^545')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of data -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abu68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abu68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 546 LANGUAGE NOTE -->
  <pattern>
    <title>546 Language note</title>
    <rule
      context="*:datafield[@tag = '546'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^546')]">
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
      <report test="*:subfield[not(matches(@code, '^[ab368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab368]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 547 FORMER TITLE COMPLEXITY NOTE -->
  <pattern>
    <title>547 Former title complexity note</title>
    <rule
      context="*:datafield[@tag = '547'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^547')]">
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
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 550 ISSUING BODY NOTE -->
  <pattern>
    <title>550 Issuing body note</title>
    <rule
      context="*:datafield[@tag = '550'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^550')]">
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
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 552 ENTITY AND ATTRIBUTE INFORMATION NOTE -->
  <pattern>
    <title>552 Entity and attribute information note</title>
    <rule
      context="*:datafield[@tag = '552'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^552')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnopuz68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnopuz68]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'j']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $j is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'k']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $k is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'n']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $n is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 555 CUMULATIVE INDEX/FINDING AIDS NOTE -->
  <pattern>
    <title>555 Cumulative index/finding aids note</title>
    <rule
      context="*:datafield[@tag = '555'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^555')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[ 08]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s08]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdu368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdu368]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 556 INFORMATION ABOUT DOCUMENTATION NOTE -->
  <pattern>
    <title>556 Information about documentation note</title>
    <rule
      context="*:datafield[@tag = '556'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^556')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s8]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[az68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[az68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 561 OWNERSHIP AND CUSTODIAL HISTORY -->
  <pattern>
    <title>561 Ownership and custodial history</title>
    <rule
      context="*:datafield[@tag = '561'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^561')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Privacy -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[au3568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[au3568]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 562 COPY AND VERSION IDENTIFICATION NOTE -->
  <pattern>
    <title>562 Copy and version identification note</title>
    <rule
      context="*:datafield[@tag = '562'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^562')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcde3568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcde3568]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 563 BINDING INFORMATION -->
  <pattern>
    <title>563 Binding information</title>
    <rule
      context="*:datafield[@tag = '563'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^563')]">
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
      <report test="*:subfield[not(matches(@code, '^[au3568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[au3568]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 565 CASE FILE CHARACTERISTICS NOTE -->
  <pattern>
    <title>565 Case file characteristics note</title>
    <rule
      context="*:datafield[@tag = '565'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^565')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[ 08]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s08]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcde368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcde368]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 567 METHODOLOGY NOTE -->
  <pattern>
    <title>567 Methodology note</title>
    <rule
      context="*:datafield[@tag = '567'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^567')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s8]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[ab01268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab01268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 580 LINKING ENTRY COMPLEXITY NOTE -->
  <pattern>
    <title>580 Linking entry complexity note</title>
    <rule
      context="*:datafield[@tag = '580'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^580')]">
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
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 581 PUBLICATIONS ABOUT DESCRIBED MATERIALS NOTE -->
  <pattern>
    <title>581 Publications about described materials note</title>
    <rule
      context="*:datafield[@tag = '581'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^581')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s8]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[az368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[az368]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 583 ACTION NOTE -->
  <pattern>
    <title>583 Action note</title>
    <rule
      context="*:datafield[@tag = '583'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^583')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Privacy -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefhijklnouxz23568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefhijklnouxz23568]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 584 ACCUMULATION AND FREQUENCY OF USE NOTE -->
  <pattern>
    <title>584 Accumulation and frequency of use note</title>
    <rule
      context="*:datafield[@tag = '584'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^584')]">
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
      <report test="*:subfield[not(matches(@code, '^[ab3568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ab3568]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 585 EXHIBITIONS NOTE -->
  <pattern>
    <title>585 Exhibitions note</title>
    <rule
      context="*:datafield[@tag = '585'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^585')]">
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
      <report test="*:subfield[not(matches(@code, '^[a3568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a3568]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 586 AWARDS NOTE -->
  <pattern>
    <title>586 Awards note</title>
    <rule
      context="*:datafield[@tag = '586'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^586')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s8]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[a368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a368]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 588 SOURCE OF DESCRIPTION NOTE -->
  <pattern>
    <title>588 Source of description note</title>
    <rule
      context="*:datafield[@tag = '588'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^588')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Display constant controller -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[a568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a568]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 590 LOCAL NOTE -->
  <pattern>
    <title>590 Local note</title>
    <rule
      context="*:datafield[@tag = '590'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^590')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Privacy -->
      <assert test="matches(@ind1, '^[ 01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s01]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[a368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <assert test="*:subfield[@code = 'a']">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is required.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'a']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 591 LOCAL NOTE -->
  <pattern>
    <title>591 Local note</title>
    <rule
      context="*:datafield[@tag = '591'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^591')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz6]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz6]$'))]/@code, ', ')"
        />
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
    </rule>
  </pattern>
  <!-- 592 LOCAL NOTE -->
  <pattern>
    <title>592 Local note</title>
    <rule
      context="*:datafield[@tag = '592'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^592')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz6]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz6]$'))]/@code, ', ')"
        />
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
    </rule>
  </pattern>
  <!-- 593 LOCAL NOTE -->
  <pattern>
    <title>593 Local note</title>
    <rule
      context="*:datafield[@tag = '593'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^593')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz6]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz6]$'))]/@code, ', ')"
        />
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
    </rule>
  </pattern>
  <!-- 594 LOCAL NOTE -->
  <pattern>
    <title>594 Local note</title>
    <rule
      context="*:datafield[@tag = '594'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^594')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz6]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz6]$'))]/@code, ', ')"
        />
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
    </rule>
  </pattern>
  <!-- 595 LOCAL NOTE -->
  <pattern>
    <title>595 Local note</title>
    <rule
      context="*:datafield[@tag = '595'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^595')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz6]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz6]$'))]/@code, ', ')"
        />
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
    </rule>
  </pattern>
  <!-- 596 LOCAL NOTE -->
  <pattern>
    <title>596 Local note</title>
    <rule
      context="*:datafield[@tag = '596'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^596')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz6]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz6]$'))]/@code, ', ')"
        />
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
    </rule>
  </pattern>
  <!-- 597 LOCAL NOTE -->
  <pattern>
    <title>597 Local note</title>
    <rule
      context="*:datafield[@tag = '597'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^597')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz6]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz6]$'))]/@code, ', ')"
        />
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
    </rule>
  </pattern>
  <!-- 598 LOCAL NOTE -->
  <pattern>
    <title>598 Local note</title>
    <rule
      context="*:datafield[@tag = '598'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^598')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz6]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz6]$'))]/@code, ', ')"
        />
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
    </rule>
  </pattern>
  <!-- 599 DIFFERENTIABLE LOCAL NOTE -->
  <pattern>
    <title>599 Differentiable local note</title>
    <rule
      context="*:datafield[@tag = '599'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^599')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Locally defined -->
      <assert test="matches(@ind1, '^[ 0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s0-9]".</assert>
      <!-- ind2: Locally defined -->
      <assert test="matches(@ind2, '^[ 0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s0-9]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz68]$'))]/@code, ', ')"
        />
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
    </rule>
  </pattern>
  <!-- 600 SUBJECT ADDED ENTRY — PERSONAL NAME -->
  <pattern>
    <title>600 Subject added entry — personal name</title>
    <rule
      context="*:datafield[@tag = '600'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^600')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of personal name entry element -->
      <assert test="matches(@ind1, '^[013]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[013]".</assert>
      <!-- ind2: Thesaurus -->
      <assert test="matches(@ind2, '^[0-7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghjklmnopqrstuvxyz0123468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghjklmnopqrstuvxyz0123468]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 610 SUBJECT ADDED ENTRY — CORPORATE NAME -->
  <pattern>
    <title>610 Subject added entry — corporate name</title>
    <rule
      context="*:datafield[@tag = '610'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^610')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of corporate name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Thesaurus -->
      <assert test="matches(@ind2, '^[0-7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghklmnoprstuvxyz0123468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghklmnoprstuvxyz0123468]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 611 SUBJECT ADDED ENTRY — MEETING NAME -->
  <pattern>
    <title>611 Subject added entry — meeting name</title>
    <rule
      context="*:datafield[@tag = '611'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^611')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of meeting name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Thesaurus -->
      <assert test="matches(@ind2, '^[0-7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[acdefghjklnpqstuvxyz0123468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[acdefghjklnpqstuvxyz0123468]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 630 SUBJECT ADDED ENTRY — UNIFORM TITLE -->
  <pattern>
    <title>630 Subject added entry — uniform title</title>
    <rule
      context="*:datafield[@tag = '630'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^630')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Nonfiling characters -->
      <assert test="matches(@ind1, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[0-9]".</assert>
      <!-- ind2: Thesaurus -->
      <assert test="matches(@ind2, '^[0-7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[adefghklmnoprstvxyz0123468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[adefghklmnoprstvxyz0123468]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 647 SUBJECT ADDED ENTRY — NAMED EVENT -->
  <pattern>
    <title>647 Subject added entry — named event</title>
    <rule
      context="*:datafield[@tag = '647'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^647')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Undefined -->
      <assert test="matches(@ind1, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s]".</assert>
      <!-- ind2: Thesaurus -->
      <assert test="matches(@ind2, '^[0-7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[acdgvxyz012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[acdgvxyz012368]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 648 SUBJECT ADDED ENTRY — CHRONOLOGICAL TERM -->
  <pattern>
    <title>648 Subject added entry — chronological term</title>
    <rule
      context="*:datafield[@tag = '648'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^648')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Undefined -->
      <assert test="matches(@ind1, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s]".</assert>
      <!-- ind2: Thesaurus -->
      <assert test="matches(@ind2, '^[0-7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[avxyz012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[avxyz012368]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 650 SUBJECT ADDED ENTRY — TOPICAL TERM -->
  <pattern>
    <title>650 Subject added entry — topical term</title>
    <rule
      context="*:datafield[@tag = '650'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^650')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Level of subject -->
      <assert test="matches(@ind1, '^[ 012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s012]".</assert>
      <!-- ind2: Thesaurus -->
      <assert test="matches(@ind2, '^[0-7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdegvxyz0123468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdegvxyz0123468]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 651 SUBJECT ADDED ENTRY — GEOGRAPHIC NAME -->
  <pattern>
    <title>651 Subject added entry — geographic name</title>
    <rule
      context="*:datafield[@tag = '651'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^651')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Undefined -->
      <assert test="matches(@ind1, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s]".</assert>
      <!-- ind2: Thesaurus -->
      <assert test="matches(@ind2, '^[0-7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[aegvxyz0123468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[aegvxyz0123468]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 653 INDEX TERM — UNCONTROLLED -->
  <pattern>
    <title>653 Index term — uncontrolled</title>
    <rule
      context="*:datafield[@tag = '653'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^653')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Level of index term -->
      <assert test="matches(@ind1, '^[ 012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s012]".</assert>
      <!-- ind2: Type of term or name -->
      <assert test="matches(@ind2, '^[ 0123456]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s0123456]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 654 SUBJECT ADDED ENTRY — FACETED TOPICAL TERMS -->
  <pattern>
    <title>654 Subject added entry — faceted topical terms</title>
    <rule
      context="*:datafield[@tag = '654'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^654')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Level of subject -->
      <assert test="matches(@ind1, '^[ 012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s012]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcevyz0123468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcevyz0123468]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 655 INDEX TERM — GENRE/FORM -->
  <pattern>
    <title>655 Index term — genre/form</title>
    <rule
      context="*:datafield[@tag = '655'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^655')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of heading -->
      <assert test="matches(@ind1, '^[ 0]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s0]".</assert>
      <!-- ind2: Thesaurus -->
      <assert test="matches(@ind2, '^[0-7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcvxyz0123568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcvxyz0123568]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 656 INDEX TERM — OCCUPATION -->
  <pattern>
    <title>656 Index term — occupation</title>
    <rule
      context="*:datafield[@tag = '656'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^656')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Undefined -->
      <assert test="matches(@ind1, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s]".</assert>
      <!-- ind2: Source of term -->
      <assert test="matches(@ind2, '^[7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[akvxyz012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[akvxyz012368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <assert test="*:subfield[@code = '2']">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is required.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'a']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'k']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $k is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 657 INDEX TERM — FUNCTION -->
  <pattern>
    <title>657 Index term — function</title>
    <rule
      context="*:datafield[@tag = '657'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^657')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Undefined -->
      <assert test="matches(@ind1, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s]".</assert>
      <!-- ind2: Source of term -->
      <assert test="matches(@ind2, '^[7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[avxyz012368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[avxyz012368]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <assert test="*:subfield[@code = '2']">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is required.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'a']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 658 INDEX TERM — CURRICULUM OBJECTIVE -->
  <pattern>
    <title>658 Index term — curriculum objective</title>
    <rule
      context="*:datafield[@tag = '658'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^658')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcd268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcd268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 662 SUBJECT ADDED ENTRY — HIERARCHICAL PLACE NAME -->
  <pattern>
    <title>662 Subject added entry — hierarchical place name</title>
    <rule
      context="*:datafield[@tag = '662'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^662')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefgh012468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefgh012468]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 690 LOCAL SUBJECT ADDED ENTRY — TOPICAL TERM -->
  <pattern>
    <title>690 Local subject added entry — topical term</title>
    <rule
      context="*:datafield[@tag = '690'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^690')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Level of subject -->
      <assert test="matches(@ind1, '^[ 012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s012]".</assert>
      <!-- ind2: Thesaurus -->
      <assert test="matches(@ind2, '^[ 01234567]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s01234567]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdegvxyz123689]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdegvxyz123689]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '9']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $9 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 691 LOCAL SUBJECT ADDED ENTRY — GEOGRAPHIC NAME -->
  <pattern>
    <title>691 Local subject added entry — geographic name</title>
    <rule
      context="*:datafield[@tag = '691'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^691')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Undefined -->
      <assert test="matches(@ind1, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s]".</assert>
      <!-- ind2: Thesaurus -->
      <assert test="matches(@ind2, '^[ 01234567]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s01234567]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abgvxyz123689]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abgvxyz123689]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '9']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $9 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 695 ADDED CLASS NUMBER -->
  <pattern>
    <title>695 Added class number</title>
    <rule
      context="*:datafield[@tag = '695'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^695')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of edition -->
      <assert test="matches(@ind1, '^[ 012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s012]".</assert>
      <!-- ind2: Classification scheme -->
      <assert test="matches(@ind2, '^[0123459]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0123459]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abef2]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abef2]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <assert test="*:subfield[@code = 'a']">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is required.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'a']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $a is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 696 LOCAL SUBJECT ADDED ENTRY — PERSONAL NAME -->
  <pattern>
    <title>696 Local subject added entry — personal name</title>
    <rule
      context="*:datafield[@tag = '696'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^696')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of personal name entry element -->
      <assert test="matches(@ind1, '^[013]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[013]".</assert>
      <!-- ind2: Thesaurus -->
      <assert test="matches(@ind2, '^[0-7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghjklmnopqrstuvxyz01234689]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghjklmnopqrstuvxyz01234689]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '9']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $9 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 697 LOCAL SUBJECT ADDED ENTRY — CORPORATE NAME -->
  <pattern>
    <title>697 Local subject added entry — corporate name</title>
    <rule
      context="*:datafield[@tag = '697'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^697')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of corporate name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Thesaurus -->
      <assert test="matches(@ind2, '^[0-7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghklmnoprstuvxyz01234689]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghklmnoprstuvxyz01234689]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '9']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $9 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 698 LOCAL SUBJECT ADDED ENTRY — MEETING NAME -->
  <pattern>
    <title>698 Local subject added entry — meeting name</title>
    <rule
      context="*:datafield[@tag = '698'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^698')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of meeting name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Thesaurus -->
      <assert test="matches(@ind2, '^[0-7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[acdefghjklnpqstuvxyz01234689]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[acdefghjklnpqstuvxyz01234689]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '9']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $9 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 699 LOCAL SUBJECT ADDED ENTRY — UNIFORM TITLE -->
  <pattern>
    <title>699 Local subject added entry — uniform title</title>
    <rule
      context="*:datafield[@tag = '699'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^699')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Nonfiling characters -->
      <assert test="matches(@ind1, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[0-9]".</assert>
      <!-- ind2: Thesaurus -->
      <assert test="matches(@ind2, '^[0-7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[adefghklmnoprstvxyz01234689]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[adefghklmnoprstvxyz01234689]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '9']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $9 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 700 ADDED ENTRY — PERSONAL NAME -->
  <pattern>
    <title>700 Added entry — personal name</title>
    <rule
      context="*:datafield[@tag = '700'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^700')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of personal name entry element -->
      <assert test="matches(@ind1, '^[013]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[013]".</assert>
      <!-- ind2: Type of added entry -->
      <assert test="matches(@ind2, '^[ 2]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s2]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstux01234568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstux01234568]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 710 ADDED ENTRY — CORPORATE NAME -->
  <pattern>
    <title>710 Added entry — corporate name</title>
    <rule
      context="*:datafield[@tag = '710'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^710')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of corporate name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Type of added entry -->
      <assert test="matches(@ind2, '^[ 2]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s2]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghiklmnoprstux01234568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghiklmnoprstux01234568]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 711 ADDED ENTRY — MEETING NAME -->
  <pattern>
    <title>711 Added entry — meeting name</title>
    <rule
      context="*:datafield[@tag = '711'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^711')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of meeting name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Type of added entry -->
      <assert test="matches(@ind2, '^[ 2]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s2]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[acdefghijklnpqstux01234568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[acdefghijklnpqstux01234568]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 720 ADDED ENTRY — UNCONTROLLED NAME -->
  <pattern>
    <title>720 Added entry — uncontrolled name</title>
    <rule
      context="*:datafield[@tag = '720'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^720')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of name -->
      <assert test="matches(@ind1, '^[ 12]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s12]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[ae468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ae468]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 730 ADDED ENTRY — UNIFORM TITLE -->
  <pattern>
    <title>730 Added entry — uniform title</title>
    <rule
      context="*:datafield[@tag = '730'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^730')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Nonfiling characters -->
      <assert test="matches(@ind1, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[0-9]".</assert>
      <!-- ind2: Type of added entry -->
      <assert test="matches(@ind2, '^[ 2]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s2]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[adfghiklmnoprstx01234568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[adfghiklmnoprstx01234568]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 740 ADDED ENTRY — UNCONTROLLED RELATED/ANALYTICAL TITLE -->
  <pattern>
    <title>740 Added entry — uncontrolled related/analytical title</title>
    <rule
      context="*:datafield[@tag = '740'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^740')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Nonfiling characters -->
      <assert test="matches(@ind1, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[0-9]".</assert>
      <!-- ind2: Type of added entry -->
      <assert test="matches(@ind2, '^[ 2]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s2]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[ahnp568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ahnp568]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 751 ADDED ENTRY — GEOGRAPHIC NAME -->
  <pattern>
    <title>751 Added entry — geographic name</title>
    <rule
      context="*:datafield[@tag = '751'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^751')]">
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
      <report test="*:subfield[not(matches(@code, '^[ae0123468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ae0123468]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 752 ADDED ENTRY — HIERARCHICAL PLACE NAME -->
  <pattern>
    <title>752 Added entry — hierarchical place name</title>
    <rule
      context="*:datafield[@tag = '752'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^752')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefgh012468]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefgh012468]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 753 SYSTEM DETAILS ACCESS TO COMPUTER FILES -->
  <pattern>
    <title>753 System details access to computer files</title>
    <rule
      context="*:datafield[@tag = '753'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^753')]">
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
      <report test="*:subfield[not(matches(@code, '^[abc01268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abc01268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 754 ADDED ENTRY — TAXONOMIC IDENTIFICATION -->
  <pattern>
    <title>754 Added entry — taxonomic identification</title>
    <rule
      context="*:datafield[@tag = '754'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^754')]">
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
      <report test="*:subfield[not(matches(@code, '^[acdxz01268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[acdxz01268]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 758 RESOURCE IDENTIFIER -->
  <pattern>
    <title>758 Resource identifier</title>
    <rule
      context="*:datafield[@tag = '758'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^758')]">
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
      <report test="*:subfield[not(matches(@code, '^[ai01234568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[ai01234568]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 760 MAIN SERIES ENTRY -->
  <pattern>
    <title>760 Main series entry</title>
    <rule
      context="*:datafield[@tag = '760'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^760')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Note controller -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Display constant controller -->
      <assert test="matches(@ind2, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s8]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdghimnostwxy4678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdghimnostwxy4678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 762 SUBSERIES ENTRY -->
  <pattern>
    <title>762 Subseries entry</title>
    <rule
      context="*:datafield[@tag = '762'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^762')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Note controller -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Display constant controller -->
      <assert test="matches(@ind2, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s8]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdghimnostwxy4678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdghimnostwxy4678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 765 ORIGINAL LANGUAGE ENTRY -->
  <pattern>
    <title>765 Original language entry</title>
    <rule
      context="*:datafield[@tag = '765'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^765')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Note controller -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Display constant controller -->
      <assert test="matches(@ind2, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s8]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 767 TRANSLATION ENTRY -->
  <pattern>
    <title>767 Translation entry</title>
    <rule
      context="*:datafield[@tag = '767'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^767')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Note controller -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Display constant controller -->
      <assert test="matches(@ind2, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s8]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 770 SUPPLEMENT/SPECIAL ISSUE ENTRY -->
  <pattern>
    <title>770 Supplement/special issue entry</title>
    <rule
      context="*:datafield[@tag = '770'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^770')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Note controller -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Display constant controller -->
      <assert test="matches(@ind2, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s8]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 772 SUPPLEMENT PARENT ENTRY -->
  <pattern>
    <title>772 Supplement parent entry</title>
    <rule
      context="*:datafield[@tag = '772'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^772')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Note controller -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Display constant controller -->
      <assert test="matches(@ind2, '^[ 08]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s08]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 773 HOST ITEM ENTRY -->
  <pattern>
    <title>773 Host item entry</title>
    <rule
      context="*:datafield[@tag = '773'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^773')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Note controller -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Display constant controller -->
      <assert test="matches(@ind2, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s8]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abdghikmnopqrstuwxyz34678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abdghikmnopqrstuwxyz34678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'p']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $p is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 774 CONSTITUENT UNIT ENTRY -->
  <pattern>
    <title>774 Constituent unit entry</title>
    <rule
      context="*:datafield[@tag = '774'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^774')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Note controller -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Display constant controller -->
      <assert test="matches(@ind2, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s8]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 775 OTHER EDITION ENTRY -->
  <pattern>
    <title>775 Other edition entry</title>
    <rule
      context="*:datafield[@tag = '775'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^775')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Note controller -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Display constant controller -->
      <assert test="matches(@ind2, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s8]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghikmnorstuwxyz4678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghikmnorstuwxyz4678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
    </rule>
    <rule context="*:datafield[@tag = '775'][*:subfield[@code = 'f']]/*:subfield[@code = 'f']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcCountryCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $f must match a valid MARC
        country code.</assert>
    </rule>
  </pattern>
  <!-- 776 ADDITIONAL PHYSICAL FORM ENTRY -->
  <pattern>
    <title>776 Additional physical form entry</title>
    <rule
      context="*:datafield[@tag = '776'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^776')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Note controller -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Display constant controller -->
      <assert test="matches(@ind2, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s8]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 777 ISSUED WITH ENTRY -->
  <pattern>
    <title>777 Issued with entry</title>
    <rule
      context="*:datafield[@tag = '777'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^777')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Note controller -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Display constant controller -->
      <assert test="matches(@ind2, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s8]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdghikmnostwxy4678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdghikmnostwxy4678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 780 PRECEDING ENTRY -->
  <pattern>
    <title>780 Preceding entry</title>
    <rule
      context="*:datafield[@tag = '780'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^780')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Note controller -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Type of relationship -->
      <assert test="matches(@ind2, '^[0-7]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-7]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 785 SUCCEEDING ENTRY -->
  <pattern>
    <title>785 Succeeding entry</title>
    <rule
      context="*:datafield[@tag = '785'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^785')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Note controller -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Type of relationship -->
      <assert test="matches(@ind2, '^[0-8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-8]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 786 DATA SOURCE ENTRY -->
  <pattern>
    <title>786 Data source entry</title>
    <rule
      context="*:datafield[@tag = '786'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^786')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Note controller -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Display constant controller -->
      <assert test="matches(@ind2, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s8]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdghijkmnoprstuvwxyz4678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdghijkmnoprstuvwxyz4678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'j']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $j is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'p']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $p is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'v']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $v is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 787 NONSPECIFIC RELATIONSHIP ENTRY -->
  <pattern>
    <title>787 Nonspecific relationship entry</title>
    <rule
      context="*:datafield[@tag = '787'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^787')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Note controller -->
      <assert test="matches(@ind1, '^[01]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[01]".</assert>
      <!-- ind2: Display constant controller -->
      <assert test="matches(@ind2, '^[ 8]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s8]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdghikmnorstuwxyz4678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'y']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $y is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 790 LOCAL ADDED ENTRY — PERSONAL NAME -->
  <pattern>
    <title>790 Local Added Entry — Personal Name</title>
    <rule
      context="*:datafield[@tag = '790'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^790')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of personal name -->
      <assert test="matches(@ind1, '^[013]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[013]".</assert>
      <!-- ind2: Type of added entry -->
      <assert test="matches(@ind2, '^[ 2]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s2]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstux01234568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstux01234568]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 791 LOCAL ADDED ENTRY — CORPORATE NAME -->
  <pattern>
    <title>791 Local Added Entry — Corporate Name</title>
    <rule
      context="*:datafield[@tag = '791'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^791')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of corporate name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Type of added entry -->
      <assert test="matches(@ind2, '^[ 2]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s2]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghiklmnoprstux01234568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghiklmnoprstux01234568]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 792 LOCAL ADDED ENTRY — MEETING NAME -->
  <pattern>
    <title>792 Local Added Entry — Meeting Name</title>
    <rule
      context="*:datafield[@tag = '792'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^792')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of corporate name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Type of added entry -->
      <assert test="matches(@ind2, '^[ 2]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s2]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[acdefghijklnpqstux01234568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[acdefghijklnpqstux01234568]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 793 LOCAL ADDED ENTRY — UNIFORM TITLE -->
  <pattern>
    <title>793 Local Added Entry — Uniform Title</title>
    <rule
      context="*:datafield[@tag = '793'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^793')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Nonfiling characters -->
      <assert test="matches(@ind1, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[0-9]".</assert>
      <!-- ind2: Type of added entry -->
      <assert test="matches(@ind2, '^[ 2]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s2]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[adfghiklmnoprstx0123568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[adfghiklmnoprstx0123568]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 796 LOCAL ADDED ENTRY — PERSONAL NAME -->
  <pattern>
    <title>796 Local Added Entry — Personal Name</title>
    <rule
      context="*:datafield[@tag = '796'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^796')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of personal name entry element -->
      <assert test="matches(@ind1, '^[013]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[013]".</assert>
      <!-- ind2: Type of added entry -->
      <assert test="matches(@ind2, '^[ 2]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s2]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstux012345689]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstux012345689]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '9']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $9 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 797 LOCAL ADDED ENTRY — CORPORATE NAME -->
  <pattern>
    <title>797 Local Added Entry — Corporate Name</title>
    <rule
      context="*:datafield[@tag = '797'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^797')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of corporate name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Type of added entry -->
      <assert test="matches(@ind2, '^[ 2]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s2]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghiklmnoprstux012345689]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghiklmnoprstux012345689]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '9']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $9 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 798 LOCAL ADDED ENTRY — MEETING NAME -->
  <pattern>
    <title>798 Local Added Entry — Meeting Name</title>
    <rule
      context="*:datafield[@tag = '798'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^798')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of corporate name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Type of added entry -->
      <assert test="matches(@ind2, '^[ 2]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s2]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[acdefghijklnpqstux012345689]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[acdefghijklnpqstux012345689]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '9']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $9 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 799 LOCAL ADDED ENTRY — UNIFORM TITLE -->
  <pattern>
    <title>799 Local Added Entry — Uniform Title</title>
    <rule
      context="*:datafield[@tag = '799'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^799')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Nonfiling characters -->
      <assert test="matches(@ind1, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[0-9]".</assert>
      <!-- ind2: Type of added entry -->
      <assert test="matches(@ind2, '^[ 2]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s2]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[adfghiklmnoprstx01235689]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[adfghiklmnoprstx01235689]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '5']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $5 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '9']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $9 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 800 SERIES ADDED ENTRY — PERSONAL NAME -->
  <pattern>
    <title>800 Series added entry — personal name</title>
    <rule
      context="*:datafield[@tag = '800'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^800')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of personal name entry element -->
      <assert test="matches(@ind1, '^[013]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[013]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghjklmnopqrstuvwx012345678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghjklmnopqrstuvwx012345678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'v']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $v is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
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
  </pattern>
  <!-- 810 SERIES ADDED ENTRY — CORPORATE NAME -->
  <pattern>
    <title>810 Series added entry — corporate name</title>
    <rule
      context="*:datafield[@tag = '810'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^810')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of corporate name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghklmnoprstuvwx012345678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghklmnoprstuvwx012345678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'v']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $v is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
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
  </pattern>
  <!-- 811 SERIES ADDED ENTRY — MEETING NAME -->
  <pattern>
    <title>811 Series added entry — meeting name</title>
    <rule
      context="*:datafield[@tag = '811'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^811')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of meeting name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[acdefghjklnpqstuvwx012345678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[acdefghjklnpqstuvwx012345678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'v']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $v is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
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
  </pattern>
  <!-- 830 SERIES ADDED ENTRY — UNIFORM TITLE -->
  <pattern>
    <title>830 Series added entry — uniform title</title>
    <rule
      context="*:datafield[@tag = '830'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^830')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Undefined -->
      <assert test="matches(@ind1, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s]".</assert>
      <!-- ind2: Nonfiling characters -->
      <assert test="matches(@ind2, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-9]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[adfghklmnoprstvwx012345678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[adfghklmnoprstvwx012345678]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 's']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $s is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'v']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $v is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
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
  </pattern>
  <!-- 841 HOLDINGS CODED DATA VALUES -->
  <pattern>
    <title>841 Holdings coded data values</title>
    <rule
      context="*:datafield[@tag = '841'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^841')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '841']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[abe]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abe]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
    </rule>
    <rule context="*:datafield[@tag = '841'][*:subfield[@code = 'a']]/*:subfield[@code = 'a']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="string-length(.) = 4">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $a must match 4
        characters.</assert>
      <assert test="matches(substring(., 1, 1), '[acdefgijkmoprt]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $a Bibl type code (char 1) must
        match a letter (a, c, d, e, f, g, i, j, k, m, o, p, r, or t).</assert>
      <assert test="matches(substring(., 2, 2), '[\p{Zs}]{2}')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $a characters 2 and 3 must be
        blank.</assert>
      <assert test="matches(substring(., 4, 1), '[\p{Zs}a]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $a Type of control (char 4) must
        match a space or a letter (a).</assert>
    </rule>
    <rule context="*:datafield[@tag = '841'][*:subfield[@code = 'b']]/*:subfield[@code = 'b']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="string-length(.) = 32">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $b must match 32
        characters.</assert>
      <assert test="matches(substring(., 1, 6), '\d{6}')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $b Date entered (chars 1-6) must
        match 6 digits.</assert>
      <assert test="matches(substring(., 7, 1), '[012345]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $b Receipt or acquisition status
        (char 7) must match a digit (0-5).</assert>
      <assert test="matches(substring(., 8, 1), '[cdefglmnpquz]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $b Method of acquisition (char
        8) must match a letter (c, d, e, f, g, l, m, n, p, q, u, or z).</assert>
      <assert test="matches(substring(., 9, 4), '(\d{4}|\p{Zs}{4}|uuuu)')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $b Expected acquisition end date
        (chars 9-12) must match 4 digits, 4 spaces, or 'uuuu'.</assert>
      <assert test="matches(substring(., 13, 1), '[012345678]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $b General retention policy
        (char 13) must match a digit (0-8).</assert>
      <assert test="matches(substring(., 14, 3), '(\p{Zs}{3}|[lp][\p{Zs}1-9][mwyeis])')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $b Specific retention policy
        (chars 14-16) must match 3 spaces or a letter (l or p), followed by a space or a digit,
        followed by a letter (m, w, y, e, i, or s).</assert>
      <assert test="matches(substring(., 17, 1), '[01234]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $b Completeness (char 17) must
        match a digit (0-4).</assert>
      <assert test="matches(substring(., 18, 3), '[01][0-9][0-9]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $b Number of copies reported
        (chars 18-20) must match a number, left-justified with zeros.</assert>
      <assert test="matches(substring(., 21, 1), '[abclu]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $b Lending policy (char 20) must
        match a letter (a, b, c, l, or u).</assert>
      <assert test="matches(substring(., 22, 1), '[abu]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $b Reproduction policy (char 21)
        must match a letter (a, b, or u).</assert>
      <assert test="matches(substring(., 23, 3), '(\p{Zs}{3}|und)')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $b Language (chars 23-25) must
        match 3 spaces or 'und'.</assert>
      <assert test="matches(substring(., 26, 1), '[01]')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $b Separate or composite copy
        report (char 26) must match a digit (0-1).</assert>
      <assert test="matches(substring(., 27, 6), '\d{6}')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $b Date of report (chars 27-32)
        must match 6 digits.</assert>
    </rule>
    <rule context="*:datafield[@tag = '841'][*:subfield[@code = 'e']]/*:subfield[@code = 'e']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., '^[12345muz]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $e must match a digit (1-5) or a
        letter (m, u, or z).</assert>
    </rule>
  </pattern>
  <!-- 842 TEXTUAL PHYSICAL FORM DESIGNATOR -->
  <pattern>
    <title>842 Textual physical form designator</title>
    <rule
      context="*:datafield[@tag = '842'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^842')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '842']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
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
      <!-- was 
      <assert test="matches(substring(., 10, 3), '$marcCountryCodes')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $7 Country code (chars 10-12)
        must match a valid MARC country code.</assert>  -->
      <assert test="matches(substring(., 10, 3), $marcCountryCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $7 Country code (chars 10-12)
        must match a valid MARC country code.</assert>  
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
  <!-- 844 NAME OF UNIT -->
  <pattern>
    <title>844 Name of unit</title>
    <rule
      context="*:datafield[@tag = '844'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^844')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '844']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[a68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a68]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 845 TERMS GOVERNING USE AND REPRODUCTION NOTE -->
  <pattern>
    <title>845 Terms governing use and reproduction note</title>
    <rule
      context="*:datafield[@tag = '845'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^845')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdfgqu23568]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdfgqu23568]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 850 HOLDING INSTITUTION -->
  <pattern>
    <title>850 Holding institution</title>
    <rule
      context="*:datafield[@tag = '850'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^850')]">
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
      <report test="*:subfield[not(matches(@code, '^[a8]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a8]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
    </rule>
  </pattern>
  <!-- 852 LOCATION -->
  <pattern>
    <title>852 Location</title>
    <rule
      context="*:datafield[@tag = '852'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^852')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Shelving scheme -->
      <assert test="matches(@ind1, '^[ 012345678]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s012345678]".</assert>
      <!-- ind2: Shelving order -->
      <assert test="matches(@ind2, '^[ 012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s012]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnpqstuxz2368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnpqstuxz2368]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'j']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $j is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'n']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $n is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'p']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $p is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '8']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $8 is not repeatable.</assert>
    </rule>
    <rule context="*:datafield[@tag = '852'][*:subfield[@code = 'n']]/*:subfield[@code = 'n']">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <assert test="matches(., $marcCountryCodes)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', ../@tag)"/> subfield $n must match a valid MARC
        country code.</assert>
    </rule>
  </pattern>
  <!-- 853 CAPTIONS AND PATTERN — BASIC BIBLIOGRAPHIC UNIT -->
  <pattern>
    <title>853 Captions and pattern — basic bibliographic unit</title>
    <rule
      context="*:datafield[@tag = '853'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^853')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Compressibility and expandability -->
      <assert test="matches(@ind1, '^[0123]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[0123]".</assert>
      <!-- ind2: Caption evaluation -->
      <assert test="matches(@ind2, '^[0123]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0123]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnpuvwxyzot2368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnpuvwxyzot2368]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'j']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $j is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'k']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $k is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'n']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $n is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'p']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $p is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'w']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $w is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '8']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $8 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 854 CAPTIONS AND PATTERN — SUPPLEMENTARY MATERIAL -->
  <pattern>
    <title>854 Captions and pattern — supplementary material</title>
    <rule
      context="*:datafield[@tag = '854'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^854')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Compressibility and expandability -->
      <assert test="matches(@ind1, '^[0123]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[0123]".</assert>
      <!-- ind2: Caption evaluation -->
      <assert test="matches(@ind2, '^[0123]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0123]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnpuvwxyzot2368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnpuvwxyzot2368]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'j']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $j is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'k']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $k is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'n']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $n is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'p']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $p is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'w']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $w is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '8']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $8 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 855 CAPTIONS AND PATTERN — INDEXES -->
  <pattern>
    <title>855 Captions and pattern — indexes</title>
    <rule
      context="*:datafield[@tag = '855'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^855')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnpuvwxyzot2368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnpuvwxyzot2368]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'j']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $j is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'k']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $k is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'n']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $n is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'p']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $p is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'w']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $w is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '8']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $8 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 856 ELECTRONIC LOCATION AND ACCESS -->
  <pattern>
    <title>856 Electronic location and access</title>
    <rule
      context="*:datafield[@tag = '856'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^856')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Access method -->
      <assert test="matches(@ind1, '^[ 012347]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s012347]".</assert>
      <!-- ind2: Relationship -->
      <assert test="matches(@ind2, '^[ 0128]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s0128]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdfhijklmnopqrstuvwxyz23678]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdfhijklmnopqrstuvwxyz23678]$'))]/@code, ', ')"
        />
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'p']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $p is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 863 ENUMERATION AND CHRONOLOGY — BASIC BIBLIOGRAPHIC UNIT -->
  <pattern>
    <title>863 Enumeration and chronology — basic bibliographic unit</title>
    <rule
      context="*:datafield[@tag = '863'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^863')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Field encoding level -->
      <assert test="matches(@ind1, '^[ 345]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s345]".</assert>
      <!-- ind2: Form of holdings -->
      <assert test="matches(@ind2, '^[ 01234]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s01234]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmvnopqstwxz68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmvnopqstwxz68]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'j']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $j is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'k']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $k is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'n']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $n is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'p']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $p is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'w']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $w is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '8']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $8 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 864 ENUMERATION AND CHRONOLOGY — SUPPLEMENTARY MATERIAL -->
  <pattern>
    <title>864 Enumeration and chronology — supplementary material</title>
    <rule
      context="*:datafield[@tag = '864'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^864')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Field encoding level -->
      <assert test="matches(@ind1, '^[ 345]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s345]".</assert>
      <!-- ind2: Form of holdings -->
      <assert test="matches(@ind2, '^[ 01234]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s01234]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmvnopqstwxz68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmvnopqstwxz68]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'j']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $j is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'k']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $k is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'n']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $n is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'p']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $p is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'w']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $w is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '8']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $8 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 865 ENUMERATION AND CHRONOLOGY — INDEXES -->
  <pattern>
    <title>865 Enumeration and chronology — indexes</title>
    <rule
      context="*:datafield[@tag = '865'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^865')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Field encoding level -->
      <assert test="matches(@ind1, '^[ 345]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s345]".</assert>
      <!-- ind2: Form of holdings -->
      <assert test="matches(@ind2, '^[ 01234]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s01234]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmvnopqstwxz68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmvnopqstwxz68]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'e']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $e is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'i']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $i is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'j']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $j is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'k']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $k is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'm']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $m is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'n']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $n is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'p']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $p is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'w']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $w is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '8']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $8 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 866 TEXTUAL HOLDINGS — BASIC BIBLIOGRAPHIC UNIT -->
  <pattern>
    <title>866 Textual holdings — basic bibliographic unit</title>
    <rule
      context="*:datafield[@tag = '866'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^866')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Field encoding level -->
      <assert test="matches(@ind1, '^[ 345]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s345]".</assert>
      <!-- ind2: Type of notation -->
      <assert test="matches(@ind2, '^[0127]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0127]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[axz268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[axz268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 867 TEXTUAL HOLDINGS — SUPPLEMENTARY MATERIAL -->
  <pattern>
    <title>867 Textual holdings — supplementary material</title>
    <rule
      context="*:datafield[@tag = '867'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^867')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Field encoding level -->
      <assert test="matches(@ind1, '^[ 345]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s345]".</assert>
      <!-- ind2: Type of notation -->
      <assert test="matches(@ind2, '^[0127]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0127]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[axz268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[axz268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 868 TEXTUAL HOLDINGS — INDEXES -->
  <pattern>
    <title>868 Textual holdings — indexes</title>
    <rule
      context="*:datafield[@tag = '868'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^868')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Field encoding level -->
      <assert test="matches(@ind1, '^[ 345]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s345]".</assert>
      <!-- ind2: Type of notation -->
      <assert test="matches(@ind2, '^[0127]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0127]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[axz268]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[axz268]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 876 ITEM INFORMATION — BASIC BIBLIOGRAPHIC UNIT -->
  <pattern>
    <title>876 Item information — basic bibliographic unit</title>
    <rule
      context="*:datafield[@tag = '876'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^876')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdehjlprtxz368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdehjlprtxz368]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '8']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $8 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 877 ITEM INFORMATION — SUPPLEMENTARY MATERIAL -->
  <pattern>
    <title>877 Item information — supplementary material</title>
    <rule
      context="*:datafield[@tag = '877'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^877')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdehjlprtxz368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdehjlprtxz368]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '8']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $8 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 878 ITEM INFORMATION — INDEXES -->
  <pattern>
    <title>878 Item information — indexes</title>
    <rule
      context="*:datafield[@tag = '878'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^878')]">
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
      <report test="*:subfield[not(matches(@code, '^[abcdehjlprtxz368]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdehjlprtxz368]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '8']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $8 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 880 ALTERNATE GRAPHIC REPRESENTATION -->
  <pattern>
    <title>880 Alternate graphic representation</title>
    <rule
      context="*:datafield[@tag = '880'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^880')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Same as associated field -->
      <assert test="matches(@ind1, '^[ 0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s0-9]".</assert>
      <!-- ind2: Same as associated field -->
      <assert test="matches(@ind2, '^[ 0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s0-9]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[a-z0-96]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a-z0-96]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <assert test="*:subfield[@code = '6']">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is required.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 882 REPLACEMENT RECORD INFORMATION -->
  <pattern>
    <title>882 Replacement record information</title>
    <rule
      context="*:datafield[@tag = '882'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^882')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Field repeatability -->
      <assert test="not(count(../*[@tag = '882']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> is not repeatable.</assert>
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
      <report test="*:subfield[not(matches(@code, '^[aiw68]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[aiw68]$'))]/@code, ', ')"/>
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 883 METADATA PROVENANCE -->
  <pattern>
    <title>883 Metadata provenance</title>
    <rule
      context="*:datafield[@tag = '883'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^883')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Method of assignment -->
      <assert test="matches(@ind1, '^[ 012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s012]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[acdqxuw08]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[acdqxuw08]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'c']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $c is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 884 DESCRIPTION CONVERSION INFORMATION -->
  <pattern>
    <title>884 Description conversion information</title>
    <rule
      context="*:datafield[@tag = '884'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^884')]">
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
      <report test="*:subfield[not(matches(@code, '^[agkqu]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[agkqu]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = 'g']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $g is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'k']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $k is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 886 FOREIGN MARC INFORMATION FIELD -->
  <pattern>
    <title>886 Foreign MARC information field</title>
    <rule
      context="*:datafield[@tag = '886'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^886')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of field -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz0123456789]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghijklmnopqrstuvwxyz0123456789]$'))]/@code, ', ')"
        />
      </report>
      <!-- Required subfields -->
      <assert test="*:subfield[not(normalize-space(.) eq '')]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> must have at least 1 non-empty
        subfield.</assert>
      <!-- Subfield repeatability -->
    </rule>
  </pattern>
  <!-- 887 NON-MARC INFORMATION FIELD -->
  <pattern>
    <title>887 Non-MARC information field</title>
    <rule
      context="*:datafield[@tag = '887'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^887')]">
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
      <report test="*:subfield[not(matches(@code, '^[a2]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[a2]$'))]/@code, ', ')"/>
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
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 896 LOCAL SERIES ADDED ENTRY — PERSONAL NAME -->
  <pattern>
    <title>896 Local Series Added Entry — Personal Name</title>
    <rule
      context="*:datafield[@tag = '896'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^896')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of personal name entry element -->
      <assert test="matches(@ind1, '^[013]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[013]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghjklmnopqrstuvwx0123456789]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghjklmnopqrstuvwx0123456789]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'b']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $b is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'd']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $d is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'v']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $v is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '9']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $9 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 897 LOCAL SERIES ADDED ENTRY — CORPORATE NAME -->
  <pattern>
    <title>897 Local Series Added Entry — Corporate Name</title>
    <rule
      context="*:datafield[@tag = '897'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^897')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of corporate name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[abcdefghklmnoprstuvwx0123456789]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[abcdefghklmnoprstuvwx0123456789]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'v']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $v is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '9']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $9 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 898 LOCAL SERIES ADDED ENTRY — MEETING NAME -->
  <pattern>
    <title>898 Local Series Added Entry — Meeting Name</title>
    <rule
      context="*:datafield[@tag = '898'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^898')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Type of meeting name entry element -->
      <assert test="matches(@ind1, '^[012]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[012]".</assert>
      <!-- ind2: Undefined -->
      <assert test="matches(@ind2, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[\s]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[acdefghjklnpqstuvwx0123456789]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[acdefghjklnpqstuvwx0123456789]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'q']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $q is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'u']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $u is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'v']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $v is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '9']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $9 is not repeatable.</assert>
    </rule>
  </pattern>
  <!-- 899 LOCAL SERIES ADDED ENTRY — UNIFORM TITLE -->
  <pattern>
    <title>899 Local Series Added Entry — Uniform Title</title>
    <rule
      context="*:datafield[@tag = '899'] | *:datafield[@tag = '880'][matches(*:subfield[@code = '6'], '^899')]">
      <let name="record001" value="ancestor::*:record/*:controlfield[@tag = '001']"/>
      <!-- Requirements -->
      <!-- Indicators -->
      <!-- ind1: Undefined -->
      <assert test="matches(@ind1, '^[ ]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind1 must match "[\s]".</assert>
      <!-- ind2: Nonfiling characters -->
      <assert test="matches(@ind2, '^[0-9]$')">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> ind2 must match "[0-9]".</assert>
      <!-- Valid subfields -->
      <report test="*:subfield[not(matches(@code, '^[adfghklmnoprstvwx012356789]$'))]">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> invalid subfield @code(s): <value-of
          select="string-join(*:subfield[not(matches(@code, '^[adfghklmnoprstvwx012356789]$'))]/@code, ', ')"
        />
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
      <assert test="not(count(*:subfield[@code = 'f']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $f is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'h']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $h is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'l']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $l is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'o']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $o is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'r']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $r is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 't']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $t is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'v']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $v is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = 'x']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $x is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '2']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $2 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '3']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $3 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '6']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $6 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '7']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $7 is not repeatable.</assert>
      <assert test="not(count(*:subfield[@code = '9']) &gt; 1)">
        <value-of select="concat($record001, ' :: ')"/>
        <value-of select="concat('Datafield ', @tag)"/> subfield $9 is not repeatable.</assert>
    </rule>
  </pattern>
</schema>
