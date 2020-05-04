theory ZadatakBiH
  imports Complex_Main
begin
(*Pravimo funkcije koje izracunavaju vrednost izraza sa nekim izabranim brojevima*)
fun racunanjeIzrazaA::"real \<Rightarrow> real \<Rightarrow> real \<Rightarrow> real" where
"racunanjeIzrazaA a b c = ((1+a*b) / (a-b)) * ((1+b*c)/(b-c)) + ((1+b*c) / (b-c)) * ((1+c*a)/(c-a)) + ((1+c*a) / (c-a)) * ((1+a*b)/(a-b))"

fun racunanjeIzrazaB::"real \<Rightarrow> real \<Rightarrow> real \<Rightarrow> real" where
"racunanjeIzrazaB a b c = ((1-a*b) / (a-b)) * ((1-b*c)/(b-c)) + ((1-b*c) / (b-c)) * ((1-c*a)/(c-a)) + ((1-c*a) / (c-a)) * ((1-a*b)/(a-b))"

(*Proveravamo koja je vrednost koji vracaju i dobijamo za razlicite brojeve 1 (-1) a za iste brojeve 0*)
value "racunanjeIzrazaA 1 2 3"

value "racunanjeIzrazaB 1 2 3"

(*sledece dve teoreme pokazuju da za svako a b c koji su medjusobno razliciti funkcije vracaju 1 odnosno -1*)
lemma shows "\<forall> a::real.\<forall> b::real.\<forall> c::real. a\<noteq>b \<and> a\<noteq>c \<and> b\<noteq>c \<longrightarrow> racunanjeIzrazaA a b c = 1"
  sorry

lemma shows "\<forall> a::real.\<forall> b::real.\<forall> c::real. a\<noteq>b \<and> a\<noteq>c \<and> b\<noteq>c \<longrightarrow> racunanjeIzrazaB a b c = -1"
  sorry

(*zadatak pod b). Postoje neki brojevi a b c za koje ce ova jednakost biti tacna*)
lemma 
  shows "\<exists> a::real. \<exists> b::real. \<exists> c::real. a\<noteq>b \<and> a\<noteq>c \<and> b\<noteq>c \<longrightarrow> (1+a\<^sup>2*b\<^sup>2)/(a-b)\<^sup>2 + (1+b\<^sup>2*c\<^sup>2)/(b-c)\<^sup>2 +  (1+c\<^sup>2*a\<^sup>2)/(c-a)\<^sup>2 \<ge> (3::real) / (2::real)"
  by blast
(*postavlja se pitanje da li se moze umesto znaka \<ge> staviti znak jednakosti? Isabelle je mogao ovo da dokaze te je odgovor da.*)
lemma 
  shows "\<exists> a::real. \<exists> b::real. \<exists> c::real. a\<noteq>b \<and> a\<noteq>c \<and> b\<noteq>c \<longrightarrow> (1+a\<^sup>2*b\<^sup>2)/(a-b)\<^sup>2 + (1+b\<^sup>2*c\<^sup>2)/(b-c)\<^sup>2 +  (1+c\<^sup>2*a\<^sup>2)/(c-a)\<^sup>2 =(3::real) / (2::real)"
  by blast

end
