.class public Lcom/htc/app/mf/MfSpec;
.super Ljava/lang/Object;
.source "MfSpec.java"


# static fields
.field private static final PR_PHONE_L:[Lcom/htc/app/mf/PaneRect; = null

.field private static final PR_PHONE_P:[Lcom/htc/app/mf/PaneRect; = null

.field private static final PR_S40T_WXGA_L:[Lcom/htc/app/mf/PaneRect; = null

.field private static final PR_S40T_WXGA_P:[Lcom/htc/app/mf/PaneRect; = null

.field private static final PR_S40T_WXGA_P2H_P:[Lcom/htc/app/mf/PaneRect; = null

.field private static final PR_S40T_WXGA_P2V_P:[Lcom/htc/app/mf/PaneRect; = null

.field private static final PR_TABLET_10_L:[Lcom/htc/app/mf/PaneRect; = null

.field private static final PR_TABLET_10_P:[Lcom/htc/app/mf/PaneRect; = null

.field private static final PR_TABLET_10_P2H_P:[Lcom/htc/app/mf/PaneRect; = null

.field private static final PR_TABLET_10_P2V_P:[Lcom/htc/app/mf/PaneRect; = null

.field private static final PR_TABLET_7_L:[Lcom/htc/app/mf/PaneRect; = null

.field private static final PR_TABLET_7_P:[Lcom/htc/app/mf/PaneRect; = null

.field private static final PR_TABLET_7_P2H_P:[Lcom/htc/app/mf/PaneRect; = null

.field private static final PR_TABLET_7_P2V_P:[Lcom/htc/app/mf/PaneRect; = null

.field public static final SPEC_NONE:I = -0x1

.field public static final SPEC_PHONE:I = 0x10000

.field public static final SPEC_S40T_WXGA:I = 0x300

.field public static final SPEC_S40T_WXGA_P2H:I = 0x302

.field public static final SPEC_S40T_WXGA_P2V:I = 0x301

.field public static final SPEC_TABLET_10:I = 0x100

.field public static final SPEC_TABLET_10_P2H:I = 0x102

.field public static final SPEC_TABLET_10_P2V:I = 0x101

.field public static final SPEC_TABLET_7:I = 0x200

.field public static final SPEC_TABLET_7_P2H:I = 0x202

.field public static final SPEC_TABLET_7_P2V:I = 0x201

.field public static final SPEC_USE_HTCFLAG:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 115
    const/4 v0, 0x2

    new-array v9, v0, [Lcom/htc/app/mf/PaneRect;

    const/4 v10, 0x0

    new-instance v0, Lcom/htc/app/mf/PaneRect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1e0

    const/4 v4, -0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/mf/PaneRect;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x1

    new-instance v0, Lcom/htc/app/mf/PaneRect;

    const/16 v1, 0x1e0

    const/4 v2, 0x0

    const/16 v3, 0x320

    const/4 v4, -0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/mf/PaneRect;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    sput-object v9, Lcom/htc/app/mf/MfSpec;->PR_TABLET_10_L:[Lcom/htc/app/mf/PaneRect;

    .line 120
    const/4 v0, 0x1

    new-array v9, v0, [Lcom/htc/app/mf/PaneRect;

    const/4 v10, 0x0

    new-instance v0, Lcom/htc/app/mf/PaneRect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/mf/PaneRect;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    sput-object v9, Lcom/htc/app/mf/MfSpec;->PR_TABLET_10_P:[Lcom/htc/app/mf/PaneRect;

    .line 124
    const/4 v0, 0x2

    new-array v9, v0, [Lcom/htc/app/mf/PaneRect;

    const/4 v10, 0x0

    new-instance v0, Lcom/htc/app/mf/PaneRect;

    const/4 v1, 0x0

    const/16 v2, 0x2a4

    const/4 v3, -0x1

    const/16 v4, 0x1f4

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/mf/PaneRect;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x1

    new-instance v0, Lcom/htc/app/mf/PaneRect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v4, 0x2a4

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/mf/PaneRect;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    sput-object v9, Lcom/htc/app/mf/MfSpec;->PR_TABLET_10_P2V_P:[Lcom/htc/app/mf/PaneRect;

    .line 129
    const/4 v0, 0x2

    new-array v9, v0, [Lcom/htc/app/mf/PaneRect;

    const/4 v10, 0x0

    new-instance v0, Lcom/htc/app/mf/PaneRect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x12c

    const/4 v4, -0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/mf/PaneRect;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x1

    new-instance v0, Lcom/htc/app/mf/PaneRect;

    const/16 v1, 0x12c

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    const/4 v4, -0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/mf/PaneRect;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    sput-object v9, Lcom/htc/app/mf/MfSpec;->PR_TABLET_10_P2H_P:[Lcom/htc/app/mf/PaneRect;

    .line 138
    const/4 v0, 0x2

    new-array v9, v0, [Lcom/htc/app/mf/PaneRect;

    const/4 v10, 0x0

    new-instance v0, Lcom/htc/app/mf/PaneRect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1e0

    const/4 v4, -0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/mf/PaneRect;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x1

    new-instance v0, Lcom/htc/app/mf/PaneRect;

    const/16 v1, 0x1e0

    const/4 v2, 0x0

    const/16 v3, 0x320

    const/4 v4, -0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/mf/PaneRect;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    sput-object v9, Lcom/htc/app/mf/MfSpec;->PR_S40T_WXGA_L:[Lcom/htc/app/mf/PaneRect;

    .line 143
    const/4 v0, 0x1

    new-array v9, v0, [Lcom/htc/app/mf/PaneRect;

    const/4 v10, 0x0

    new-instance v0, Lcom/htc/app/mf/PaneRect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/mf/PaneRect;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    sput-object v9, Lcom/htc/app/mf/MfSpec;->PR_S40T_WXGA_P:[Lcom/htc/app/mf/PaneRect;

    .line 147
    const/4 v0, 0x2

    new-array v9, v0, [Lcom/htc/app/mf/PaneRect;

    const/4 v10, 0x0

    new-instance v0, Lcom/htc/app/mf/PaneRect;

    const/4 v1, 0x0

    const/16 v2, 0x2a4

    const/4 v3, -0x1

    const/16 v4, 0x1f4

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/mf/PaneRect;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x1

    new-instance v0, Lcom/htc/app/mf/PaneRect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v4, 0x2a4

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/mf/PaneRect;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    sput-object v9, Lcom/htc/app/mf/MfSpec;->PR_S40T_WXGA_P2V_P:[Lcom/htc/app/mf/PaneRect;

    .line 152
    const/4 v0, 0x2

    new-array v9, v0, [Lcom/htc/app/mf/PaneRect;

    const/4 v10, 0x0

    new-instance v0, Lcom/htc/app/mf/PaneRect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x12c

    const/4 v4, -0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/mf/PaneRect;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x1

    new-instance v0, Lcom/htc/app/mf/PaneRect;

    const/16 v1, 0x12c

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    const/4 v4, -0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/mf/PaneRect;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    sput-object v9, Lcom/htc/app/mf/MfSpec;->PR_S40T_WXGA_P2H_P:[Lcom/htc/app/mf/PaneRect;

    .line 161
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/app/mf/PaneRect;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/app/mf/PaneRect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1e3

    const/4 v6, -0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/app/mf/PaneRect;

    const/16 v3, 0x1e3

    const/4 v4, 0x0

    const/16 v5, 0x31d

    const/4 v6, -0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/app/mf/MfSpec;->PR_TABLET_7_L:[Lcom/htc/app/mf/PaneRect;

    .line 166
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/htc/app/mf/PaneRect;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/app/mf/PaneRect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/app/mf/MfSpec;->PR_TABLET_7_P:[Lcom/htc/app/mf/PaneRect;

    .line 170
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/app/mf/PaneRect;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/app/mf/PaneRect;

    const/4 v3, 0x0

    const/16 v4, 0x320

    const/4 v5, -0x1

    const/16 v6, 0x1e0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/app/mf/PaneRect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x320

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/app/mf/MfSpec;->PR_TABLET_7_P2V_P:[Lcom/htc/app/mf/PaneRect;

    .line 175
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/app/mf/PaneRect;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/app/mf/PaneRect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x12c

    const/4 v6, -0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/app/mf/PaneRect;

    const/16 v3, 0x12c

    const/4 v4, 0x0

    const/16 v5, 0x1f4

    const/4 v6, -0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/app/mf/MfSpec;->PR_TABLET_7_P2H_P:[Lcom/htc/app/mf/PaneRect;

    .line 183
    const/4 v0, 0x1

    new-array v9, v0, [Lcom/htc/app/mf/PaneRect;

    const/4 v10, 0x0

    new-instance v0, Lcom/htc/app/mf/PaneRect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/mf/PaneRect;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    sput-object v9, Lcom/htc/app/mf/MfSpec;->PR_PHONE_L:[Lcom/htc/app/mf/PaneRect;

    .line 187
    const/4 v0, 0x1

    new-array v9, v0, [Lcom/htc/app/mf/PaneRect;

    const/4 v10, 0x0

    new-instance v0, Lcom/htc/app/mf/PaneRect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/mf/PaneRect;-><init>(IIIIIIII)V

    aput-object v0, v9, v10

    sput-object v9, Lcom/htc/app/mf/MfSpec;->PR_PHONE_P:[Lcom/htc/app/mf/PaneRect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setupDefault(ILcom/htc/app/mf/MfMainActivity;)V
    .locals 1
    .parameter "spec"
    .parameter "a"

    .prologue
    .line 199
    sparse-switch p0, :sswitch_data_0

    .line 236
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {p1}, Lcom/htc/app/mf/MfSpec;->setupS40T_WXGA_p2h(Lcom/htc/app/mf/MfMainActivity;)V

    .line 243
    :goto_0
    :sswitch_0
    return-void

    .line 204
    :sswitch_1
    invoke-static {p1}, Lcom/htc/app/mf/MfSpec;->setupTablet_10(Lcom/htc/app/mf/MfMainActivity;)V

    goto :goto_0

    .line 207
    :sswitch_2
    invoke-static {p1}, Lcom/htc/app/mf/MfSpec;->setupTablet_10_p2v(Lcom/htc/app/mf/MfMainActivity;)V

    goto :goto_0

    .line 210
    :sswitch_3
    invoke-static {p1}, Lcom/htc/app/mf/MfSpec;->setupTablet_10_p2h(Lcom/htc/app/mf/MfMainActivity;)V

    goto :goto_0

    .line 213
    :sswitch_4
    invoke-static {p1}, Lcom/htc/app/mf/MfSpec;->setupS40T_WXGA(Lcom/htc/app/mf/MfMainActivity;)V

    goto :goto_0

    .line 216
    :sswitch_5
    invoke-static {p1}, Lcom/htc/app/mf/MfSpec;->setupS40T_WXGA_p2v(Lcom/htc/app/mf/MfMainActivity;)V

    goto :goto_0

    .line 219
    :sswitch_6
    invoke-static {p1}, Lcom/htc/app/mf/MfSpec;->setupS40T_WXGA_p2h(Lcom/htc/app/mf/MfMainActivity;)V

    goto :goto_0

    .line 222
    :sswitch_7
    invoke-static {p1}, Lcom/htc/app/mf/MfSpec;->setupTablet_7(Lcom/htc/app/mf/MfMainActivity;)V

    goto :goto_0

    .line 225
    :sswitch_8
    invoke-static {p1}, Lcom/htc/app/mf/MfSpec;->setupTablet_7_p2v(Lcom/htc/app/mf/MfMainActivity;)V

    goto :goto_0

    .line 228
    :sswitch_9
    invoke-static {p1}, Lcom/htc/app/mf/MfSpec;->setupTablet_7_p2h(Lcom/htc/app/mf/MfMainActivity;)V

    goto :goto_0

    .line 231
    :sswitch_a
    invoke-static {p1}, Lcom/htc/app/mf/MfSpec;->setupPhone(Lcom/htc/app/mf/MfMainActivity;)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-static {p1}, Lcom/htc/app/mf/MfSpec;->setupPhone(Lcom/htc/app/mf/MfMainActivity;)V

    goto :goto_0

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x100 -> :sswitch_1
        0x101 -> :sswitch_2
        0x102 -> :sswitch_3
        0x200 -> :sswitch_7
        0x201 -> :sswitch_8
        0x202 -> :sswitch_9
        0x300 -> :sswitch_4
        0x301 -> :sswitch_5
        0x302 -> :sswitch_6
        0x10000 -> :sswitch_a
    .end sparse-switch
.end method

.method private static setupPhone(Lcom/htc/app/mf/MfMainActivity;)V
    .locals 3
    .parameter "a"

    .prologue
    const/4 v2, 0x0

    .line 295
    sget-object v0, Lcom/htc/app/mf/MfSpec;->PR_PHONE_L:[Lcom/htc/app/mf/PaneRect;

    sget-object v1, Lcom/htc/app/mf/MfSpec;->PR_PHONE_P:[Lcom/htc/app/mf/PaneRect;

    invoke-virtual {p0, v0, v1}, Lcom/htc/app/mf/MfMainActivity;->setPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)V

    .line 296
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/htc/app/mf/MfMainActivity;->setFullScreenPadding(IIII)V

    .line 299
    return-void
.end method

.method private static setupS40T_WXGA(Lcom/htc/app/mf/MfMainActivity;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 264
    sget-object v0, Lcom/htc/app/mf/MfSpec;->PR_S40T_WXGA_L:[Lcom/htc/app/mf/PaneRect;

    sget-object v1, Lcom/htc/app/mf/MfSpec;->PR_S40T_WXGA_P:[Lcom/htc/app/mf/PaneRect;

    invoke-virtual {p0, v0, v1}, Lcom/htc/app/mf/MfMainActivity;->setPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)V

    .line 265
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->setLand2PortShowedPane(I)V

    .line 266
    return-void
.end method

.method private static setupS40T_WXGA_p2h(Lcom/htc/app/mf/MfMainActivity;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 273
    sget-object v0, Lcom/htc/app/mf/MfSpec;->PR_S40T_WXGA_L:[Lcom/htc/app/mf/PaneRect;

    sget-object v1, Lcom/htc/app/mf/MfSpec;->PR_S40T_WXGA_P2H_P:[Lcom/htc/app/mf/PaneRect;

    invoke-virtual {p0, v0, v1}, Lcom/htc/app/mf/MfMainActivity;->setPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)V

    .line 274
    return-void
.end method

.method private static setupS40T_WXGA_p2v(Lcom/htc/app/mf/MfMainActivity;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 269
    sget-object v0, Lcom/htc/app/mf/MfSpec;->PR_S40T_WXGA_L:[Lcom/htc/app/mf/PaneRect;

    sget-object v1, Lcom/htc/app/mf/MfSpec;->PR_S40T_WXGA_P2V_P:[Lcom/htc/app/mf/PaneRect;

    invoke-virtual {p0, v0, v1}, Lcom/htc/app/mf/MfMainActivity;->setPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)V

    .line 270
    return-void
.end method

.method private static setupTablet_10(Lcom/htc/app/mf/MfMainActivity;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 246
    sget-object v0, Lcom/htc/app/mf/MfSpec;->PR_TABLET_10_L:[Lcom/htc/app/mf/PaneRect;

    sget-object v1, Lcom/htc/app/mf/MfSpec;->PR_TABLET_10_P:[Lcom/htc/app/mf/PaneRect;

    invoke-virtual {p0, v0, v1}, Lcom/htc/app/mf/MfMainActivity;->setPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)V

    .line 247
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->setLand2PortShowedPane(I)V

    .line 249
    return-void
.end method

.method private static setupTablet_10_p2h(Lcom/htc/app/mf/MfMainActivity;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 258
    sget-object v0, Lcom/htc/app/mf/MfSpec;->PR_TABLET_10_L:[Lcom/htc/app/mf/PaneRect;

    sget-object v1, Lcom/htc/app/mf/MfSpec;->PR_TABLET_10_P2H_P:[Lcom/htc/app/mf/PaneRect;

    invoke-virtual {p0, v0, v1}, Lcom/htc/app/mf/MfMainActivity;->setPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)V

    .line 261
    return-void
.end method

.method private static setupTablet_10_p2v(Lcom/htc/app/mf/MfMainActivity;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 252
    sget-object v0, Lcom/htc/app/mf/MfSpec;->PR_TABLET_10_L:[Lcom/htc/app/mf/PaneRect;

    sget-object v1, Lcom/htc/app/mf/MfSpec;->PR_TABLET_10_P2V_P:[Lcom/htc/app/mf/PaneRect;

    invoke-virtual {p0, v0, v1}, Lcom/htc/app/mf/MfMainActivity;->setPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)V

    .line 255
    return-void
.end method

.method private static setupTablet_7(Lcom/htc/app/mf/MfMainActivity;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 277
    sget-object v0, Lcom/htc/app/mf/MfSpec;->PR_TABLET_7_L:[Lcom/htc/app/mf/PaneRect;

    sget-object v1, Lcom/htc/app/mf/MfSpec;->PR_TABLET_7_P:[Lcom/htc/app/mf/PaneRect;

    invoke-virtual {p0, v0, v1}, Lcom/htc/app/mf/MfMainActivity;->setPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)V

    .line 278
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->setLand2PortShowedPane(I)V

    .line 280
    return-void
.end method

.method private static setupTablet_7_p2h(Lcom/htc/app/mf/MfMainActivity;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 289
    sget-object v0, Lcom/htc/app/mf/MfSpec;->PR_TABLET_7_L:[Lcom/htc/app/mf/PaneRect;

    sget-object v1, Lcom/htc/app/mf/MfSpec;->PR_TABLET_7_P2H_P:[Lcom/htc/app/mf/PaneRect;

    invoke-virtual {p0, v0, v1}, Lcom/htc/app/mf/MfMainActivity;->setPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)V

    .line 292
    return-void
.end method

.method private static setupTablet_7_p2v(Lcom/htc/app/mf/MfMainActivity;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 283
    sget-object v0, Lcom/htc/app/mf/MfSpec;->PR_TABLET_7_L:[Lcom/htc/app/mf/PaneRect;

    sget-object v1, Lcom/htc/app/mf/MfSpec;->PR_TABLET_7_P2V_P:[Lcom/htc/app/mf/PaneRect;

    invoke-virtual {p0, v0, v1}, Lcom/htc/app/mf/MfMainActivity;->setPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)V

    .line 286
    return-void
.end method
