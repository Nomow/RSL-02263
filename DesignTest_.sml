structure RT_Text = RT_Text;

structure RT_s_1 = RT_Set(structure Elem = RT_Text);

structure RT_s_2 = RT_Set(structure Elem = RT_s_1);

structure RT_x_3 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_s_2.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_s_2.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_s_2.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^
                              ")";
    end;
    
structure RT_Bool = RT_Bool;

structure RT_Nat = RT_Nat;

structure RT_x_4 =
    struct
        type t = RT_s_2.t * RT_s_2.t;
        
        fun equ (x:t, y:t) = RT_s_2.equ(#1 x, #1 y) andalso 
                             RT_s_2.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_s_2.toString(#1 x )) ^ "," ^
                             (RT_s_2.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_s_2.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_5 =
    struct
        type t = RT_s_1.t * RT_s_1.t;
        
        fun equ (x:t, y:t) = RT_s_1.equ(#1 x, #1 y) andalso 
                             RT_s_1.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_s_1.toString(#1 x )) ^ "," ^
                             (RT_s_1.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_s_1.typeToString ()) ^ " >< " ^
                              (RT_s_1.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_6 =
    struct
        type t = RT_s_2.t * RT_s_2.t * RT_s_2.t;
        
        fun equ (x:t, y:t) = RT_s_2.equ(#1 x, #1 y) andalso 
                             RT_s_2.equ(#2 x, #2 y) andalso 
                             RT_s_2.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_s_2.toString(#1 x )) ^ "," ^
                             (RT_s_2.toString(#2 x )) ^ "," ^
                             (RT_s_2.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_s_2.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_7 =
    struct
        type t = RT_s_2.t * RT_Text.t * RT_s_2.t;
        
        fun equ (x:t, y:t) = RT_s_2.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_s_2.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_s_2.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_s_2.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_s_2.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_8 =
    struct
        type t = RT_s_2.t * RT_Text.t * RT_s_1.t;
        
        fun equ (x:t, y:t) = RT_s_2.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_s_1.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_s_2.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_s_1.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_s_2.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_s_1.typeToString ()) ^
                              ")";
    end;
    
structure DesignTest =
    struct
        type Person_ = RT_Text.t;
        
        type Family_ = RT_s_1.t;
        
        type Families_ = RT_s_2.t;
        
        type Table_ = RT_s_1.t;
        
        type Plan_ = RT_s_2.t;
        
        fun shareMember'3845_ (fx'38B5_, fy'38B8_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (29, 27)); if (RT_s_1.R_exists (fn (p'38C9_:RT_Text.t) => RT_s_1.R_mem (p'38C9_, fy'38B8_)) (fx'38B5_)) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (29, 79)); true) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (29, 89)); false));
        
        fun areRelatives'31A2_ (p1'3213_, p2'3217_, fs'321B_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 34)); if (RT_s_2.R_exists (fn (f'322C_:RT_s_1.t) => (RT_s_1.R_mem (p1'3213_, f'322C_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 84)); (RT_s_1.R_mem (p2'3217_, f'322C_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 97)); (RSL.C_not RT_Text.equ) (p1'3213_, p2'3217_)))) (fs'321B_)) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 11)); true) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 21)); false));
        
        fun isCorrectPlan'371A_ (pl'378C_, fs'3790_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (26, 31)); let
            val t'379B_ = (RT_s_2.R_choose (fn t'379B_ => true) (pl'378C_)); 
            val p1'37B2_ = (RT_s_1.R_choose (fn p1'37B2_ => true) (t'379B_)); 
            val p2'37CC_ = (RT_s_1.R_choose (fn p2'37CC_ => true) (t'379B_))
        in
            not (((areRelatives'31A2_) (p1'37B2_, p2'37CC_, fs'3790_)))
        end);
        
        fun isWellformed'32CE_ fs'333F_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 6)); if RT_s_2.equ (fs'333F_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 22)); false) else if RT_Nat.equ (RT_s_2.R_card((fs'333F_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 52)); true) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (17, 9)); let
            val fx'3401_ = (RT_s_2.R_choose (fn fx'3401_ => true) (fs'333F_)); 
            val fy'3465_ = (RT_s_2.R_choose (fn fy'3465_ => true) (fs'333F_))
        in
            if RT_s_2.R_mem (RT_s_1.R_fromList [], fs'333F_) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (20, 34)); false) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (21, 20)); (not ((RSL.C_not RT_s_1.equ) (fx'3401_, fy'3465_)) orelse (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (21, 33)); not (((shareMember'3845_) (fx'3401_, fy'3465_))))))
        end));
        
        fun containsFamilyMember'2C26_ (fs'2C9F_, person'2CA3_, table'2CAB_) = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (32, 45)); ((RT_s_1.R_exists (fn (p'2CBD_:RT_Text.t) => ((areRelatives'31A2_) (person'2CA3_, p'2CBD_, fs'2C9F_))) (table'2CAB_))));
        
        fun addToPlan'27DD_ (originalFamilies'284B_, person'285D_, plan'2865_) = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (21, 51)); if RT_s_2.equ (plan'2865_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (23, 14)); ((addToPlan'27DD_) (originalFamilies'284B_, person'285D_, RT_s_2.R_union (plan'2865_, RT_s_2.R_fromList ([RT_s_1.R_fromList []]))))) else if ((containsFamilyMember'2C26_) (originalFamilies'284B_, person'285D_, RT_s_2.R_hd((plan'2865_)))) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (26, 7)); RT_s_2.R_union (RT_s_2.R_fromList ([RT_s_2.R_hd((plan'2865_))]), ((addToPlan'27DD_) (originalFamilies'284B_, person'285D_, RT_s_2.R_diff (plan'2865_, RT_s_2.R_fromList ([RT_s_2.R_hd((plan'2865_))])))))) else (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (28, 7)); RT_s_2.R_union (RT_s_2.R_diff (plan'2865_, RT_s_2.R_fromList ([RT_s_2.R_hd((plan'2865_))])), RT_s_2.R_fromList ([(RT_s_1.R_union (RT_s_2.R_hd((plan'2865_)), RT_s_1.R_fromList ([person'285D_])))]))));
        
        fun recPlan'2459_ (originalFamilies'24C5_, fs'24D7_, p'24DB_) = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (12, 41)); if RT_s_2.equ (fs'24D7_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (13, 13)); p'24DB_) else if RT_s_2.equ (fs'24D7_, RT_s_2.R_diff (RT_s_2.R_union (RT_s_2.R_fromList ([RT_s_1.R_fromList []]), fs'24D7_), RT_s_2.R_fromList ([RT_s_2.R_hd((fs'24D7_))]))) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (15, 6)); ((recPlan'2459_) (originalFamilies'24C5_, RT_s_2.R_diff (fs'24D7_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'24D7_))])), p'24DB_))) else (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (17, 6)); ((recPlan'2459_) (originalFamilies'24C5_, RT_s_2.R_union (RT_s_2.R_diff (fs'24D7_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'24D7_))])), RT_s_2.R_fromList ([RT_s_1.R_diff (RT_s_2.R_hd((fs'24D7_)), RT_s_1.R_fromList ([RT_s_1.R_hd((RT_s_2.R_hd((fs'24D7_))))]))])), ((addToPlan'27DD_) (originalFamilies'24C5_, RT_s_1.R_hd((RT_s_2.R_hd((fs'24D7_)))), p'24DB_))))));
        
        fun plan'232D_ fs'2396_ = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (9, 17)); ((recPlan'2459_) (fs'2396_, fs'2396_, RT_s_2.R_fromList [])));
        
        val empty_families'1199_ = RT_s_2.R_fromList [];
        
        val p1'389_ = RT_Text.fromLit "Elisabeth";
        
        val p3'451_ = RT_Text.fromLit "Erik";
        
        val p2'3ED_ = RT_Text.fromLit "Lillian";
        
        val f2'965_ = RT_s_1.R_fromList ([p2'3ED_, p3'451_]);
        
        val single_families'1135_ = RT_s_2.R_fromList ([f2'965_]);
        
        val p4'4B5_ = RT_Text.fromLit "Frederik";
        
        val p6'57D_ = RT_Text.fromLit "Anne";
        
        val p5'519_ = RT_Text.fromLit "Henrik";
        
        val f3'9C9_ = RT_s_1.R_fromList ([p4'4B5_, p5'519_, p6'57D_]);
        
        val p11'771_ = RT_Text.fromLit "Pernille";
        
        val p7'5E1_ = RT_Text.fromLit "Lotte";
        
        val p10'70D_ = RT_Text.fromLit "Jacob";
        
        val p8'645_ = RT_Text.fromLit "Torsten";
        
        val p9'6A9_ = RT_Text.fromLit "Camilla";
        
        val f4'A2D_ = RT_s_1.R_fromList ([p7'5E1_, p8'645_, p9'6A9_, p10'70D_, p11'771_]);
        
        val f1'901_ = RT_s_1.R_fromList ([p1'389_]);
        
        val f5'B59_ = RT_s_1.R_fromList ([p1'389_, p1'389_]);
        
        val single_families_single_person'10D1_ = RT_s_2.R_fromList ([f1'901_]);
        
        val f6'C85_ = RT_s_1.R_fromList [];
        
        val f7'DB1_ = RT_s_1.R_fromList ([p1'389_, p2'3ED_]);
        
        val same_person_family'106D_ = RT_s_2.R_fromList ([f7'DB1_, f2'965_, f3'9C9_, f4'A2D_]);
        
        val families'F41_ = RT_s_2.R_fromList ([f1'901_, f2'965_, f3'9C9_, f4'A2D_]);
        
        val empty_family'1009_ = RT_s_2.R_fromList ([f6'C85_, f2'965_, f3'9C9_, f4'A2D_]);
        
        val reocc_in_family'FA5_ = RT_s_2.R_fromList ([f5'B59_, f2'965_, f3'9C9_, f4'A2D_]);
        
    end;
    
open DesignTest;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "Design.rsl", (9, 17), (9, 36));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (17, 6), (18, 7));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (15, 6), (16, 10));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (13, 13), (14, 7));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (12, 41), (18, 10));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (28, 7), (29, 9));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (26, 7), (27, 12));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (23, 14), (24, 9));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (21, 51), (29, 12));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (32, 45), (34, 3));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (21, 33), (21, 53));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (21, 20), (22, 15));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (20, 34), (21, 18));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (17, 9), (24, 6));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 52), (16, 60));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 22), (16, 28));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 6), (24, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (26, 31), (27, 41));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 97), (13, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 84), (13, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 21), (13, 27));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 11), (13, 19));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 34), (13, 30));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (29, 89), (29, 95));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (29, 79), (29, 87));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (29, 27), (30, 3)));
(RSL.C_output "[t1] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areRelatives'31A2_) (p2'3ED_, p3'451_, families'F41_)), true)));

(RSL.C_output "[t2] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areRelatives'31A2_) (p1'389_, p2'3ED_, families'F41_)), false)));

(RSL.C_output "[t3] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areRelatives'31A2_) (p1'389_, p1'389_, families'F41_)), false)));

(RSL.C_output "[t4] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areRelatives'31A2_) (p1'389_, p2'3ED_, empty_family'1009_)), false)));

(RSL.C_output "[t100] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'32CE_) (families'F41_)), true)));

(RSL.C_output "[t101] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'32CE_) (single_families_single_person'10D1_)), true)));

(RSL.C_output "[t102] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'32CE_) (single_families'1135_)), true)));

(RSL.C_output "[t103] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'32CE_) (reocc_in_family'FA5_)), true)));

(RSL.C_output "[t104] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'32CE_) (empty_family'1009_)), false)));

(RSL.C_output "[t105] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'32CE_) (same_person_family'106D_)), false)));

(RSL.C_output "[t106] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'32CE_) (empty_families'1199_)), false)));

RSL.print_error_count();
R_coverage.save_marked();
