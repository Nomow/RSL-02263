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
        
        fun sh1'3D59_ fs'3DC1_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (30, 16)); if RT_Nat.R_gt (RT_s_2.R_card((fs'3DC1_)), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (30, 37)); RT_Nat.R_add (RT_s_1.R_card((RT_s_2.R_hd((fs'3DC1_)))), ((sh1'3D59_) (RT_s_2.R_diff (fs'3DC1_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'3DC1_))])))))) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (30, 76)); RT_Int.fromLit "0"));
        
        fun areRelatives'3652_ (p1'36C3_, p2'36C7_, fs'36CB_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 34)); if (RT_s_2.R_exists (fn (f'36DC_:RT_s_1.t) => (RT_s_1.R_mem (p1'36C3_, f'36DC_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 84)); (RT_s_1.R_mem (p2'36C7_, f'36DC_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 97)); (RSL.C_not RT_Text.equ) (p1'36C3_, p2'36C7_)))) (fs'36CB_)) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 11)); true) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 21)); false));
        
        fun sh'3C2D_ fs'3C94_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (27, 15)); if RT_Nat.R_gt (RT_s_2.R_card((fs'3C94_)), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (27, 36)); RT_s_1.R_union (RT_s_2.R_hd((fs'3C94_)), ((sh'3C2D_) (RT_s_2.R_diff (fs'3C94_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'3C94_))])))))) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (27, 72)); RT_s_1.R_fromList []));
        
        fun isWellformed'377E_ fs'37EF_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 6)); if RT_s_2.equ (fs'37EF_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 22)); false) else if RT_Nat.equ (RT_s_2.R_card((fs'37EF_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 52)); true) else if RT_s_2.R_mem (RT_s_1.R_fromList [], fs'37EF_) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 79)); false) else if RT_Nat.R_lt (((sh1'3D59_) (fs'37EF_)), RT_s_2.R_card((fs'37EF_))) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (17, 15)); false) else if RT_Nat.equ (((sh1'3D59_) (fs'37EF_)), RT_s_1.R_card((RT_s_2.R_hd((fs'37EF_))))) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (17, 55)); false) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (17, 11)); RT_Nat.equ (((sh1'3D59_) (fs'37EF_)), RT_s_1.R_card((((sh'3C2D_) (fs'37EF_)))))));
        
        fun shareMember'3A9D_ (fx'3B0D_, fy'3B10_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (23, 27)); if (RT_s_1.R_exists (fn (p'3B21_:RT_Text.t) => RT_s_1.R_mem (p'3B21_, fy'3B10_)) (fx'3B0D_)) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (23, 79)); true) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (23, 89)); false));
        
        fun isCorrectPlan'3972_ (pl'39E4_, fs'39E8_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (20, 31)); let
            val t'39F3_ = (RT_s_2.R_choose (fn t'39F3_ => true) (pl'39E4_)); 
            val p1'3A0A_ = (RT_s_1.R_choose (fn p1'3A0A_ => true) (t'39F3_)); 
            val p2'3A24_ = (RT_s_1.R_choose (fn p2'3A24_ => true) (t'39F3_))
        in
            not (((areRelatives'3652_) (p1'3A0A_, p2'3A24_, fs'39E8_)))
        end);
        
        fun containsFamilyMember'30D6_ (fs'314F_, person'3153_, table'315B_) = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (32, 45)); ((RT_s_1.R_exists (fn (p'316D_:RT_Text.t) => ((areRelatives'3652_) (person'3153_, p'316D_, fs'314F_))) (table'315B_))));
        
        fun addToPlan'2C8D_ (originalFamilies'2CFB_, person'2D0D_, plan'2D15_) = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (21, 51)); if RT_s_2.equ (plan'2D15_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (23, 14)); ((addToPlan'2C8D_) (originalFamilies'2CFB_, person'2D0D_, RT_s_2.R_union (plan'2D15_, RT_s_2.R_fromList ([RT_s_1.R_fromList []]))))) else if ((containsFamilyMember'30D6_) (originalFamilies'2CFB_, person'2D0D_, RT_s_2.R_hd((plan'2D15_)))) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (26, 7)); RT_s_2.R_union (RT_s_2.R_fromList ([RT_s_2.R_hd((plan'2D15_))]), ((addToPlan'2C8D_) (originalFamilies'2CFB_, person'2D0D_, RT_s_2.R_diff (plan'2D15_, RT_s_2.R_fromList ([RT_s_2.R_hd((plan'2D15_))])))))) else (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (28, 7)); RT_s_2.R_union (RT_s_2.R_diff (plan'2D15_, RT_s_2.R_fromList ([RT_s_2.R_hd((plan'2D15_))])), RT_s_2.R_fromList ([(RT_s_1.R_union (RT_s_2.R_hd((plan'2D15_)), RT_s_1.R_fromList ([person'2D0D_])))]))));
        
        fun recPlan'2909_ (originalFamilies'2975_, fs'2987_, p'298B_) = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (12, 41)); if RT_s_2.equ (fs'2987_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (13, 13)); p'298B_) else if RT_s_2.equ (fs'2987_, RT_s_2.R_diff (RT_s_2.R_union (RT_s_2.R_fromList ([RT_s_1.R_fromList []]), fs'2987_), RT_s_2.R_fromList ([RT_s_2.R_hd((fs'2987_))]))) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (15, 6)); ((recPlan'2909_) (originalFamilies'2975_, RT_s_2.R_diff (fs'2987_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'2987_))])), p'298B_))) else (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (17, 6)); ((recPlan'2909_) (originalFamilies'2975_, RT_s_2.R_union (RT_s_2.R_diff (fs'2987_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'2987_))])), RT_s_2.R_fromList ([RT_s_1.R_diff (RT_s_2.R_hd((fs'2987_)), RT_s_1.R_fromList ([RT_s_1.R_hd((RT_s_2.R_hd((fs'2987_))))]))])), ((addToPlan'2C8D_) (originalFamilies'2975_, RT_s_1.R_hd((RT_s_2.R_hd((fs'2987_)))), p'298B_))))));
        
        fun plan'27DD_ fs'2846_ = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (9, 17)); ((recPlan'2909_) (fs'2846_, fs'2846_, RT_s_2.R_fromList [])));
        
        val p1'389_ = RT_Text.fromLit "Elisabeth";
        
        val f1'901_ = RT_s_1.R_fromList ([p1'389_]);
        
        val same_family_in_families1'1261_ = RT_s_2.R_fromList ([f1'901_, f1'901_, f1'901_]);
        
        val p3'451_ = RT_Text.fromLit "Erik";
        
        val p2'3ED_ = RT_Text.fromLit "Lillian";
        
        val f2'965_ = RT_s_1.R_fromList ([p2'3ED_, p3'451_]);
        
        val p6'57D_ = RT_Text.fromLit "Anne";
        
        val p4'4B5_ = RT_Text.fromLit "Frederik";
        
        val p5'519_ = RT_Text.fromLit "Henrik";
        
        val f3'9C9_ = RT_s_1.R_fromList ([p4'4B5_, p5'519_, p6'57D_]);
        
        val p11'771_ = RT_Text.fromLit "Pernille";
        
        val p7'5E1_ = RT_Text.fromLit "Lotte";
        
        val p10'70D_ = RT_Text.fromLit "Jacob";
        
        val p8'645_ = RT_Text.fromLit "Torsten";
        
        val p9'6A9_ = RT_Text.fromLit "Camilla";
        
        val f4'A2D_ = RT_s_1.R_fromList ([p7'5E1_, p8'645_, p9'6A9_, p10'70D_, p11'771_]);
        
        val same_family_in_families'11FD_ = RT_s_2.R_fromList ([f4'A2D_, f4'A2D_, f4'A2D_]);
        
        val f5'B59_ = RT_s_1.R_fromList ([p1'389_, p1'389_]);
        
        val empty_families'1199_ = RT_s_2.R_fromList [];
        
        val f6'C85_ = RT_s_1.R_fromList [];
        
        val single_families'1135_ = RT_s_2.R_fromList ([f2'965_]);
        
        val f7'DB1_ = RT_s_1.R_fromList ([p1'389_, p2'3ED_]);
        
        val single_families_single_person'10D1_ = RT_s_2.R_fromList ([f1'901_]);
        
        val families'F41_ = RT_s_2.R_fromList ([f1'901_, f2'965_, f3'9C9_, f4'A2D_]);
        
        val same_person_family'106D_ = RT_s_2.R_fromList ([f7'DB1_, f2'965_, f3'9C9_, f4'A2D_]);
        
        val reocc_in_family'FA5_ = RT_s_2.R_fromList ([f5'B59_, f2'965_, f3'9C9_, f4'A2D_]);
        
        val empty_family'1009_ = RT_s_2.R_fromList ([f6'C85_, f2'965_, f3'9C9_, f4'A2D_]);
        
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
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (20, 31), (21, 41));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (23, 89), (23, 95));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (23, 79), (23, 87));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (23, 27), (23, 98));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (17, 11), (18, 6));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (17, 55), (17, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (17, 15), (17, 25));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 79), (16, 89));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 52), (16, 61));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 22), (16, 28));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 6), (18, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (27, 72), (27, 75));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (27, 36), (27, 70));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (27, 15), (27, 78));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 97), (13, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 84), (13, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 21), (13, 27));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 11), (13, 19));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 34), (13, 30));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (30, 76), (30, 78));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (30, 37), (30, 74));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (30, 16), (34, 3)));
(RSL.C_output "[t1] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areRelatives'3652_) (p2'3ED_, p3'451_, families'F41_)), true)));

(RSL.C_output "[t2] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areRelatives'3652_) (p1'389_, p2'3ED_, families'F41_)), false)));

(RSL.C_output "[t3] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areRelatives'3652_) (p1'389_, p1'389_, families'F41_)), false)));

(RSL.C_output "[t4] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areRelatives'3652_) (p1'389_, p2'3ED_, empty_family'1009_)), false)));

(RSL.C_output "[t100] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'377E_) (families'F41_)), true)));

(RSL.C_output "[t101] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'377E_) (single_families_single_person'10D1_)), true)));

(RSL.C_output "[t102] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'377E_) (single_families'1135_)), true)));

(RSL.C_output "[t103] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'377E_) (reocc_in_family'FA5_)), true)));

(RSL.C_output "[t104] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'377E_) (empty_family'1009_)), false)));

(RSL.C_output "[t105] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'377E_) (same_person_family'106D_)), false)));

(RSL.C_output "[t106] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'377E_) (empty_families'1199_)), false)));

(RSL.C_output "[t107] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'377E_) (same_family_in_families'11FD_)), true)));

(RSL.C_output "[t108] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'377E_) (same_family_in_families1'1261_)), true)));

(RSL.C_output "[t205] " RT_Bool.toStringSafe (fn _ => RT_s_1.equ (((sh'3C2D_) (families'F41_)), RT_s_1.R_fromList ([p1'389_, p2'3ED_, p3'451_, p4'4B5_, p5'519_, p6'57D_, p7'5E1_, p8'645_, p9'6A9_, p10'70D_, p11'771_]))));

(RSL.C_output "[t206] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((sh1'3D59_) (families'F41_)), RT_Int.fromLit "11")));

(RSL.C_output "[t207] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((sh1'3D59_) (same_person_family'106D_)), RT_Int.fromLit "12")));

(RSL.C_output "[t208] " RT_Bool.toStringSafe (fn _ => RT_s_1.equ (((sh'3C2D_) (same_person_family'106D_)), RT_s_1.R_fromList ([p1'389_, p2'3ED_, p3'451_, p4'4B5_, p5'519_, p6'57D_, p7'5E1_, p8'645_, p9'6A9_, p10'70D_, p11'771_]))));

(RSL.C_output "[t210] " RT_Bool.toStringSafe (fn _ => RT_s_1.equ (((sh'3C2D_) (RT_s_2.R_fromList ([f1'901_, f1'901_, f1'901_, f1'901_]))), RT_s_1.R_fromList ([p1'389_]))));

(RSL.C_output "[t211] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((sh1'3D59_) (RT_s_2.R_fromList ([f1'901_, f1'901_, f1'901_, f1'901_]))), RT_Int.fromLit "1")));

(RSL.C_output "[t229] " RT_Bool.toStringSafe (fn _ => RT_s_1.equ (((sh'3C2D_) (same_family_in_families'11FD_)), RT_s_1.R_fromList ([p7'5E1_, p8'645_, p9'6A9_, p10'70D_, p11'771_]))));

(RSL.C_output "[t239] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((sh1'3D59_) (same_family_in_families'11FD_)), RT_Int.fromLit "5")));

(RSL.C_output "[t240] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (RT_s_1.R_card((RT_s_2.R_hd((same_family_in_families'11FD_)))), RT_Int.fromLit "5")));

RSL.print_error_count();
R_coverage.save_marked();
