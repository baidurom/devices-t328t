.class public Lcom/htc/painting/penmenu15/PenMenuConfiguration;
.super Ljava/lang/Object;
.source "PenMenuConfiguration.java"


# static fields
.field public static final ANIM_CURPEN_IN_DURATION:I = 0x32

.field public static final ANIM_CURPEN_IN_OFFSET:I = 0x32

.field public static final ANIM_DURATION:I = 0x96

.field public static final ANIM_HISTORY_PEN_IN_DURATION:I = 0x64

.field public static final ANIM_HISTORY_PEN_MOVE_DURATION:I = 0xc8

.field public static final ANIM_HISTORY_PEN_OUT_DURATION:I = 0x64

.field public static final ANIM_PENTYPES_IN_DURATION:I = 0xc8

.field public static final KEY_CUR_PEN_ICON_SIZE:I = 0x30a

.field public static final KEY_DEFAULT_PEN_SIZE:I = 0x30b

.field public static final KEY_ERASER_MODE_MIN_SIZE:I = 0x30c

.field public static final KEY_MENU_INNER_RADIUS:I = 0x30e

.field public static final KEY_MENU_OUTER_RADIUS:I = 0x30d

.field public static final KEY_OPTION_ICON_SIZE:I = 0x309

.field public static final OPTION_BUTTON_COMPOUND_PADDING:I = -0x5

.field public static final OPTION_BUTTON_CONTENT_SHIFTS:[I = null

.field public static final PENMENU_DIVIDER_LENGTH:I = 0x50

.field public static final PENMENU_MODIFIER_KEY:Ljava/lang/String; = "com.htc.penmenu"

.field public static final PENSET_ALL:I = 0x17

.field public static final PENTYPE_ERASER:I = 0x1

.field public static final PENTYPE_HIGHLIGHTER:I = 0x10

.field public static final PENTYPE_RENDER_SUPPLIER:I = 0x4

.field public static final PENTYPE_SKIA_SIMPLE_PEN:I = 0x2

.field public static final PEN_HISTORY_PEN_SPACING:I = 0x24

.field public static final PEN_HISTORY_SIZE:I = 0x4

.field public static final PROP_PEN_SIZE_MAX:I = 0x1f5

.field public static final PROP_PEN_SIZE_MIN:I = 0x1f4

.field public static final QUICK_BUTTON_ERASER_RATIO:F = 2.5f

.field public static final RENDERINGPEN_INCLUDESET:I = 0x15

.field public static final RES_COLOR_RADIUS_INT:I = 0x20e00e1

.field public static final RES_HIGHLIGHT_FRAMES:[I = null

.field public static final RES_UNHIGHLIGHT_FRAMES:[I = null

.field public static final SIMPLE_PEN_INCLUDESET:I = 0x13

.field public static final SINGLE_PEN_INCLUDESET:I = 0x2

.field public static final STROKE_INVISIBLE_ALPHA:I = 0x0

.field public static final STROKE_VISIBLE_ALPHA:I = 0xff

.field private static sValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 138
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->sValues:Ljava/util/HashMap;

    .line 301
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->OPTION_BUTTON_CONTENT_SHIFTS:[I

    .line 318
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->RES_HIGHLIGHT_FRAMES:[I

    .line 332
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->RES_UNHIGHLIGHT_FRAMES:[I

    return-void

    .line 301
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 318
    :array_1
    .array-data 0x4
        0xcct 0x2t 0x8t 0x2t
        0xcbt 0x2t 0x8t 0x2t
        0xcct 0x2t 0x8t 0x2t
    .end array-data

    .line 332
    :array_2
    .array-data 0x4
        0xc2t 0x2t 0x8t 0x2t
        0xc2t 0x2t 0x8t 0x2t
        0xc2t 0x2t 0x8t 0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExcludeSetFor(I)I
    .locals 1
    .parameter "penSetType"

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, result:I
    packed-switch p0, :pswitch_data_0

    .line 92
    :goto_0
    return v0

    .line 88
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getIncludeSetFor(I)I
    .locals 1
    .parameter "penSetType"

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, result:I
    packed-switch p0, :pswitch_data_0

    .line 77
    :goto_0
    return v0

    .line 69
    :pswitch_0
    const/16 v0, 0x15

    .line 70
    goto :goto_0

    .line 72
    :pswitch_1
    const/16 v0, 0x13

    .line 73
    goto :goto_0

    .line 75
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getIntValue(Landroid/content/Context;I)I
    .locals 2
    .parameter "ctx"
    .parameter "key"

    .prologue
    .line 145
    const/4 v0, -0x1

    .line 146
    .local v0, result:I
    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v0

    .line 149
    :cond_0
    return v0
.end method

.method public static getIntValue(Landroid/content/res/Resources;I)I
    .locals 3
    .parameter "res"
    .parameter "key"

    .prologue
    .line 157
    sget-object v1, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->sValues:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 159
    .local v0, result:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 160
    invoke-static {p0, p1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->loadIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->sValues:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getPropertyDimen(Landroid/content/Context;I)I
    .locals 1
    .parameter "ctx"
    .parameter "property"

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, result:I
    packed-switch p1, :pswitch_data_0

    .line 134
    :goto_0
    return v0

    .line 127
    :pswitch_0
    const/4 v0, 0x3

    .line 128
    goto :goto_0

    .line 130
    :pswitch_1
    const/16 v0, 0x60

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static loadIntValue(Landroid/content/res/Resources;I)I
    .locals 2
    .parameter "res"
    .parameter "key"

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, res_id:I
    packed-switch p1, :pswitch_data_0

    .line 191
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 192
    .local v1, result:I
    return v1

    .line 172
    .end local v1           #result:I
    :pswitch_0
    const v0, 0x20e00e2

    .line 173
    goto :goto_0

    .line 175
    :pswitch_1
    const v0, 0x20e00e3

    .line 176
    goto :goto_0

    .line 178
    :pswitch_2
    const v0, 0x20e00e4

    .line 179
    goto :goto_0

    .line 181
    :pswitch_3
    const v0, 0x20e00e5

    .line 182
    goto :goto_0

    .line 184
    :pswitch_4
    const v0, 0x20e00e8

    .line 185
    goto :goto_0

    .line 187
    :pswitch_5
    const v0, 0x20e00e9

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x309
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
