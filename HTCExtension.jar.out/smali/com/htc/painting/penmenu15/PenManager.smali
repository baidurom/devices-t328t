.class public Lcom/htc/painting/penmenu15/PenManager;
.super Ljava/lang/Object;
.source "PenManager.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.penmenu15"

.field public static final CURRENT_PEN_HISTORY_ORDER_KEY:Ljava/lang/String; = "current_pen_history_order"

.field public static final CURRENT_PEN_KEY:Ljava/lang/String; = "current_pen"

.field public static final CURRENT_PEN_USED_KEY:Ljava/lang/String; = "current_pen_used"

.field public static final DEFAULT_SELECTED_MENU_ID:I = 0x3

.field public static final DEFAULT_STICKY_STATE:Z = false

.field public static final DEFAULT_STROKE_VISIBLE_STATE:I = 0x1

.field public static final ERASER_MODE_SIZE_KEY:Ljava/lang/String; = "eraser_mode_size"

.field private static final GLOBAL_PENSET_TYPE_SELECTION:Ljava/lang/String; = "where penset_type = ?"

.field public static final HISTORY_COLORS_KEY:Ljava/lang/String; = "history_colors"

.field public static final HISTORY_PENS_KEY:Ljava/lang/String; = "history_pens"

.field public static final KEY_SHOULD_SHOW_PROMPT:Ljava/lang/String; = "should_show_prompt"

.field private static final LOG_TAG:Ljava/lang/String; = "PenManager"

.field public static final MENU_STATE_KEY:Ljava/lang/String; = "menu_state"

.field public static final MOST_RECENT_PENTYPE_CONFIG_KEY:Ljava/lang/String; = "most_recent_pentype_config"

.field public static final PENMENU_STATE_KEY:Ljava/lang/String; = "penmenu_state"

.field private static final PREFS_NAME:Ljava/lang/String; = "PenManager15"

.field public static final PROMPT_DURATION:J = 0x1388L

.field public static final SELECTED_MENU_ID_KEY:Ljava/lang/String; = "selected_menu_id"

.field private static final SEPARATOR_TOKEN:Ljava/lang/String; = ","

.field private static final SEPERATOR_TOKEN:Ljava/lang/String; = ";"

.field public static final STICKY_STATE_KEY:Ljava/lang/String; = "sticky_state"

.field public static final STROKE_VISIBLE_KEY:Ljava/lang/String; = "stroke_visible"

.field private static final TAG:Ljava/lang/String; = "PenMenuNew"

.field public static final USE_GLOBAL_PENS_KEY:Ljava/lang/String; = "use_global_pens"

.field private static sInstance:Lcom/htc/painting/penmenu15/PenManager;

.field private static sPenDownBefore:Z


# instance fields
.field private volatile mContext:Landroid/content/Context;

.field private mPenSetType:I

.field private mPenTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 915
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/painting/penmenu15/PenManager;->sPenDownBefore:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v0, p0, Lcom/htc/painting/penmenu15/PenManager;->mPenTypes:Ljava/util/List;

    .line 103
    iput-object v0, p0, Lcom/htc/painting/penmenu15/PenManager;->mContext:Landroid/content/Context;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/painting/penmenu15/PenManager;->mPenSetType:I

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/PenManager;->mContext:Landroid/content/Context;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/PenManager;->mPenTypes:Ljava/util/List;

    .line 118
    return-void
.end method

.method public static findEraser(Ljava/util/List;)Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;)",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;"
        }
    .end annotation

    .prologue
    .line 896
    .local p0, types:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 897
    .local v1, pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    invoke-interface {v1}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/core/PenType;->isEraser()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 901
    .end local v1           #pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static findHighLighter(Ljava/util/List;)Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;)",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;"
        }
    .end annotation

    .prologue
    .line 906
    .local p0, types:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 907
    .local v1, pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    invoke-interface {v1}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/core/PenType;->isHighlighter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 911
    .end local v1           #pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCurrentPenGlobal(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 506
    const-string v1, "current_pen"

    const-string v2, ""

    invoke-virtual {p0, v1, v2, p1}, Lcom/htc/painting/penmenu15/PenManager;->queryGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 507
    .local v0, stringToParse:Ljava/lang/String;
    return-object v0
.end method

.method private getCurrentPenLocal(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 485
    const-string v2, "PenManager15"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 486
    .local v0, records:Landroid/content/SharedPreferences;
    const-string v2, "current_pen"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, stringToParse:Ljava/lang/String;
    return-object v1
.end method

.method private getDefaultPen(Landroid/content/Context;)Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .locals 6
    .parameter "context"

    .prologue
    .line 262
    const/4 v4, 0x0

    .line 264
    .local v4, result:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    iget-object v5, p0, Lcom/htc/painting/penmenu15/PenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 265
    .local v3, res:Landroid/content/res/Resources;
    const/16 v5, 0x309

    invoke-static {v3, v5}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v2

    .line 266
    .local v2, optionSize:I
    const/16 v5, 0x30a

    invoke-static {v3, v5}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v0

    .line 268
    .local v0, curPenSize:I
    iget-object v5, p0, Lcom/htc/painting/penmenu15/PenManager;->mPenTypes:Ljava/util/List;

    invoke-static {v5}, Lcom/htc/painting/penmenu15/PenManager;->getDefaultPenType(Ljava/util/List;)Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v1

    .line 269
    .local v1, defaultPenType:Lcom/htc/painting/penmenu15/core/PenType;
    if-eqz v1, :cond_0

    .line 270
    new-instance v4, Lcom/htc/painting/penmenu15/core/RenderingPen;

    .end local v4           #result:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    invoke-direct {v4, v1, p1, v2, v0}, Lcom/htc/painting/penmenu15/core/RenderingPen;-><init>(Lcom/htc/painting/penmenu15/core/PenType;Landroid/content/Context;II)V

    .line 273
    .restart local v4       #result:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :cond_0
    return-object v4
.end method

.method public static getDefaultPenRepresentation(Ljava/util/List;)Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;)",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, penTypes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    const/4 v0, 0x0

    .line 289
    .local v0, result:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    check-cast v0, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 292
    .restart local v0       #result:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :cond_0
    return-object v0
.end method

.method public static getDefaultPenType(Ljava/util/List;)Lcom/htc/painting/penmenu15/core/PenType;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenType;",
            ">;)",
            "Lcom/htc/painting/penmenu15/core/PenType;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, penTypes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenType;>;"
    const/4 v0, 0x0

    .line 279
    .local v0, result:Lcom/htc/painting/penmenu15/core/PenType;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Lcom/htc/painting/penmenu15/core/PenType;
    check-cast v0, Lcom/htc/painting/penmenu15/core/PenType;

    .line 282
    .restart local v0       #result:Lcom/htc/painting/penmenu15/core/PenType;
    :cond_0
    return-object v0
.end method

.method private getHistoryColorsGlobal(Landroid/content/Context;)[I
    .locals 3
    .parameter "context"

    .prologue
    .line 568
    const-string v1, "history_colors"

    const-string v2, ""

    invoke-virtual {p0, v1, v2, p1}, Lcom/htc/painting/penmenu15/PenManager;->queryGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 569
    .local v0, stringToParse:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu15/PenManager;->toStringColor(Ljava/lang/String;)[I

    move-result-object v1

    return-object v1
.end method

.method private getHistoryColorsLocal(Landroid/content/Context;)[I
    .locals 4
    .parameter "context"

    .prologue
    .line 562
    const-string v2, "PenManager15"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 563
    .local v0, records:Landroid/content/SharedPreferences;
    const-string v2, "history_colors"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, stringToParse:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu15/PenManager;->toStringColor(Ljava/lang/String;)[I

    move-result-object v2

    return-object v2
.end method

.method private getHistoryPensGlobal(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 549
    const-string v1, "PenManager"

    const-string v2, " getHistoryPensGlobal  "

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v1, "history_pens"

    const-string v2, ""

    invoke-virtual {p0, v1, v2, p1}, Lcom/htc/painting/penmenu15/PenManager;->queryGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 552
    .local v0, stringToParse:Ljava/lang/String;
    return-object v0
.end method

.method private getHistoryPensLocal(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 527
    const-string v2, "PenManager"

    const-string v3, " getHistoryPensLocal  "

    invoke-static {v2, v3}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v2, "PenManager15"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 530
    .local v0, records:Landroid/content/SharedPreferences;
    const-string v2, "history_pens"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, ret:Ljava/lang/String;
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/painting/penmenu15/PenManager;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 122
    sget-object v0, Lcom/htc/painting/penmenu15/PenManager;->sInstance:Lcom/htc/painting/penmenu15/PenManager;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/htc/painting/penmenu15/PenManager;

    invoke-direct {v0, p0}, Lcom/htc/painting/penmenu15/PenManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/painting/penmenu15/PenManager;->sInstance:Lcom/htc/painting/penmenu15/PenManager;

    .line 125
    :cond_0
    sget-object v0, Lcom/htc/painting/penmenu15/PenManager;->sInstance:Lcom/htc/painting/penmenu15/PenManager;

    return-object v0
.end method

.method public static hasPenDownBefore(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 917
    sget-boolean v1, Lcom/htc/painting/penmenu15/PenManager;->sPenDownBefore:Z

    if-nez v1, :cond_1

    .line 918
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "has_pen_down_after_setup_wizard"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/htc/painting/penmenu15/PenManager;->sPenDownBefore:Z

    .line 921
    :cond_1
    sget-boolean v0, Lcom/htc/painting/penmenu15/PenManager;->sPenDownBefore:Z

    return v0
.end method

.method public static inPenSet(Lcom/htc/painting/penmenu15/core/PenType;I)Z
    .locals 2
    .parameter "rawPen"
    .parameter "penset"

    .prologue
    const/4 v0, 0x1

    .line 175
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/core/PenType;->isRenderSupplier()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/core/PenType;->isEraser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 184
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/core/PenType;->isSimplePen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    :cond_3
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    .line 188
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/core/PenType;->isHighlighter()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadRawPenTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    const-string v1, "PenManager"

    const-string v2, "loadPenType begin!"

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/painting/tool/pen/PenUtils;->getAllPen(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, penList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/core/PenType;->getPenTypeList(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private saveCurrentPenGlobal(Lcom/htc/painting/penmenu15/core/PenRepresentation;Landroid/content/Context;)Z
    .locals 4
    .parameter "currentPen"
    .parameter "context"

    .prologue
    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, ret:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 518
    .end local v0           #ret:Z
    .local v1, ret:I
    :goto_0
    return v1

    .line 515
    .end local v1           #ret:I
    .restart local v0       #ret:Z
    :cond_0
    const-string v2, "current_pen"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2}, Lcom/htc/painting/penmenu15/PenManager;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v0

    move v1, v0

    .line 518
    .restart local v1       #ret:I
    goto :goto_0
.end method

.method private saveCurrentPenLocal(Lcom/htc/painting/penmenu15/core/PenRepresentation;Landroid/content/Context;)Z
    .locals 4
    .parameter "pen"
    .parameter "context"

    .prologue
    .line 492
    const-string v2, "PenManager15"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 493
    .local v1, records:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 495
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "current_pen"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 499
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 500
    const/4 v2, 0x1

    return v2
.end method

.method private saveHistoryColorsGlobal(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter "colorString"
    .parameter "context"

    .prologue
    .line 586
    if-nez p1, :cond_0

    .line 587
    const/4 v0, 0x0

    .line 589
    :goto_0
    return v0

    :cond_0
    const-string v0, "history_colors"

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/painting/penmenu15/PenManager;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private saveHistoryColorsLocal(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .parameter "colorString"
    .parameter "context"

    .prologue
    .line 575
    const-string v2, "PenManager15"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 576
    .local v1, records:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 578
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "history_colors"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 580
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 581
    const/4 v2, 0x1

    return v2
.end method

.method private saveHistoryPensGlobal(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter "pens"
    .parameter "context"

    .prologue
    .line 555
    if-nez p1, :cond_0

    .line 556
    const/4 v0, 0x0

    .line 558
    :goto_0
    return v0

    :cond_0
    const-string v0, "history_pens"

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/painting/penmenu15/PenManager;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private saveHistoryPensLocal(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .parameter "pens"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 535
    if-nez p1, :cond_0

    .line 543
    :goto_0
    return v2

    .line 538
    :cond_0
    const-string v3, "PenManager15"

    invoke-virtual {p2, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 539
    .local v1, records:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 540
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "history_pens"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 542
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 543
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static setShouldShowPrompt(Landroid/content/Context;Z)Z
    .locals 4
    .parameter "context"
    .parameter "show"

    .prologue
    .line 936
    const-string v2, "PenManager15"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 937
    .local v1, records:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 938
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "should_show_prompt"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 940
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 941
    const/4 v2, 0x1

    return v2
.end method

.method public static shouldShowPrompt(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 925
    invoke-static {p0}, Lcom/htc/painting/penmenu15/PenManager;->hasPenDownBefore(Landroid/content/Context;)Z

    move-result v0

    .line 926
    .local v0, penDownBefore:Z
    const/4 v2, 0x0

    .line 927
    .local v2, show:Z
    if-eqz v0, :cond_0

    .line 928
    const-string v3, "PenManager15"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 929
    .local v1, records:Landroid/content/SharedPreferences;
    const-string v3, "should_show_prompt"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 931
    .end local v1           #records:Landroid/content/SharedPreferences;
    :cond_0
    return v2
.end method

.method private stringToPen(Ljava/lang/String;II)Lcom/htc/painting/penmenu15/core/RenderingPen;
    .locals 16
    .parameter "penString"
    .parameter "optionIconSize"
    .parameter "curPenSize"

    .prologue
    .line 611
    const/4 v8, 0x0

    .line 613
    .local v8, pen:Lcom/htc/painting/penmenu15/core/RenderingPen;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    .line 614
    :cond_0
    const-string v13, "PenMenuNew"

    const-string v14, "parseString - null or empty string!"

    invoke-static {v13, v14}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v13, 0x0

    .line 675
    :goto_0
    return-object v13

    .line 622
    :cond_1
    const/4 v10, 0x0

    .line 623
    .local v10, sizeId:I
    const/4 v2, 0x0

    .line 624
    .local v2, color:I
    const-string v12, ""

    .line 625
    .local v12, typeStr:Ljava/lang/String;
    const-string v13, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 626
    .local v11, strArray:[Ljava/lang/String;
    array-length v13, v11

    const/4 v14, 0x3

    if-ne v13, v14, :cond_2

    .line 627
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v13, v11

    add-int/lit8 v13, v13, -0x1

    if-ge v4, v13, :cond_3

    .line 628
    aget-object v7, v11, v4

    .line 630
    .local v7, part:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 631
    .local v6, number:I
    packed-switch v4, :pswitch_data_0

    .line 627
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 633
    :pswitch_0
    move v10, v6

    .line 634
    goto :goto_2

    .line 636
    :pswitch_1
    move v2, v6

    goto :goto_2

    .line 640
    .end local v6           #number:I
    :catch_0
    move-exception v3

    .line 641
    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v13, "PenMenuNew"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "parseString exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/4 v13, 0x0

    goto :goto_0

    .line 647
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .end local v4           #i:I
    .end local v7           #part:Ljava/lang/String;
    :cond_2
    const-string v13, "PenMenuNew"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "parseString - error format: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v13, 0x0

    goto :goto_0

    .line 651
    .restart local v4       #i:I
    :cond_3
    array-length v13, v11

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v11, v13

    .line 654
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/PenManager;->mPenTypes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    .local v5, j:I
    :goto_3
    if-ge v4, v5, :cond_4

    .line 655
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/PenManager;->mPenTypes:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/painting/penmenu15/core/PenType;

    .line 659
    .local v9, pentype:Lcom/htc/painting/penmenu15/core/PenType;
    invoke-virtual {v9}, Lcom/htc/painting/penmenu15/core/PenType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 661
    new-instance v8, Lcom/htc/painting/penmenu15/core/RenderingPen;

    .end local v8           #pen:Lcom/htc/painting/penmenu15/core/RenderingPen;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/PenManager;->mContext:Landroid/content/Context;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v8, v9, v13, v0, v1}, Lcom/htc/painting/penmenu15/core/RenderingPen;-><init>(Lcom/htc/painting/penmenu15/core/PenType;Landroid/content/Context;II)V

    .line 662
    .restart local v8       #pen:Lcom/htc/painting/penmenu15/core/RenderingPen;
    const-string v13, "PenMenuNew"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " new RenderingPen "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    .end local v9           #pentype:Lcom/htc/painting/penmenu15/core/PenType;
    :cond_4
    if-eqz v8, :cond_6

    .line 669
    invoke-virtual {v8, v10}, Lcom/htc/painting/penmenu15/core/RenderingPen;->setPenSize(I)V

    .line 670
    invoke-virtual {v8, v2}, Lcom/htc/painting/penmenu15/core/RenderingPen;->setColor(I)V

    :goto_4
    move-object v13, v8

    .line 675
    goto/16 :goto_0

    .line 654
    .restart local v9       #pentype:Lcom/htc/painting/penmenu15/core/PenType;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 672
    .end local v9           #pentype:Lcom/htc/painting/penmenu15/core/PenType;
    :cond_6
    const-string v13, "PenMenuNew"

    const-string v14, " null pen ,  getDefaultPen "

    invoke-static {v13, v14}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/penmenu15/PenManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/painting/penmenu15/PenManager;->getDefaultPen(Landroid/content/Context;)Lcom/htc/painting/penmenu15/core/PenRepresentation;

    move-result-object v8

    .end local v8           #pen:Lcom/htc/painting/penmenu15/core/RenderingPen;
    check-cast v8, Lcom/htc/painting/penmenu15/core/RenderingPen;

    .restart local v8       #pen:Lcom/htc/painting/penmenu15/core/RenderingPen;
    goto :goto_4

    .line 631
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private toColorString([I)Ljava/lang/String;
    .locals 5
    .parameter "colors"

    .prologue
    .line 679
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_2

    .line 680
    :cond_0
    const-string v2, ""

    .line 693
    :cond_1
    :goto_0
    return-object v2

    .line 682
    :cond_2
    const-string v2, ""

    .line 683
    .local v2, ret:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 685
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 688
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 689
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, ";"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v3, v4

    .line 690
    .local v1, len:I
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private toHistoryString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, pens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 594
    :cond_0
    const-string v3, ""

    .line 607
    :cond_1
    :goto_0
    return-object v3

    .line 596
    :cond_2
    const-string v3, ""

    .line 597
    .local v3, ret:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 598
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 599
    .local v2, pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 602
    .end local v2           #pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 603
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ";"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v1, v4, v5

    .line 604
    .local v1, len:I
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private toStringColor(Ljava/lang/String;)[I
    .locals 6
    .parameter "stringToParse"

    .prologue
    .line 697
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 698
    :cond_0
    const/4 v1, 0x0

    .line 713
    :cond_1
    :goto_0
    return-object v1

    .line 700
    :cond_2
    const/4 v1, 0x0

    .line 703
    .local v1, colors:[I
    :try_start_0
    const-string v4, ";"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, colorStrings:[Ljava/lang/String;
    array-length v4, v0

    new-array v1, v4, [I

    .line 706
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 707
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 709
    .end local v0           #colorStrings:[Ljava/lang/String;
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 710
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v4, "PenManager"

    const-string v5, " NumberFormatException "

    invoke-static {v4, v5}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPen()Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/PenManager;->getCurrentPen(Landroid/content/Context;)Lcom/htc/painting/penmenu15/core/PenRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPen(Landroid/content/Context;)Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .locals 9
    .parameter "context"

    .prologue
    .line 233
    const-string v6, "PenMenuNew"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " getCurrentPen   PID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " TID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v2, 0x0

    .line 235
    .local v2, pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    const/4 v5, 0x0

    .line 237
    .local v5, stringToParse:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu15/PenManager;->isUseGlobalPens(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 238
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/PenManager;->getCurrentPenGlobal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 244
    :goto_0
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 249
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/PenManager;->getDefaultPen(Landroid/content/Context;)Lcom/htc/painting/penmenu15/core/PenRepresentation;

    move-result-object v2

    move-object v3, v2

    .line 258
    .end local v2           #pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .local v3, pen:Ljava/lang/Object;
    :goto_1
    return-object v3

    .line 241
    .end local v3           #pen:Ljava/lang/Object;
    .restart local v2       #pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/PenManager;->getCurrentPenLocal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 253
    :cond_2
    iget-object v6, p0, Lcom/htc/painting/penmenu15/PenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 254
    .local v4, res:Landroid/content/res/Resources;
    const/16 v6, 0x309

    invoke-static {v4, v6}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    .line 255
    .local v1, optionSize:I
    const/16 v6, 0x30a

    invoke-static {v4, v6}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v0

    .line 256
    .local v0, curPenSize:I
    invoke-direct {p0, v5, v1, v0}, Lcom/htc/painting/penmenu15/PenManager;->stringToPen(Ljava/lang/String;II)Lcom/htc/painting/penmenu15/core/RenderingPen;

    move-result-object v2

    move-object v3, v2

    .line 258
    .restart local v3       #pen:Ljava/lang/Object;
    goto :goto_1
.end method

.method getFromSharedPref(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;
    .locals 5
    .parameter "key"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 718
    .local p2, defValue:Ljava/lang/Object;,"TT;"
    if-nez p2, :cond_0

    .line 719
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "no default value specified!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 722
    :cond_0
    const-string v0, "PenManager15"

    .line 724
    .local v0, prefName:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 725
    .local v1, records:Landroid/content/SharedPreferences;
    move-object v2, p2

    .line 726
    .local v2, value:Ljava/lang/Object;
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 727
    check-cast p2, Ljava/lang/Boolean;

    .end local p2           #defValue:Ljava/lang/Object;,"TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 743
    .end local v2           #value:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v2

    .line 729
    .restart local v2       #value:Ljava/lang/Object;
    .restart local p2       #defValue:Ljava/lang/Object;,"TT;"
    :cond_2
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 730
    check-cast p2, Ljava/lang/String;

    .end local p2           #defValue:Ljava/lang/Object;,"TT;"
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, value:Ljava/lang/String;
    goto :goto_0

    .line 732
    .local v2, value:Ljava/lang/Object;
    .restart local p2       #defValue:Ljava/lang/Object;,"TT;"
    :cond_3
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 733
    check-cast p2, Ljava/lang/Integer;

    .end local p2           #defValue:Ljava/lang/Object;,"TT;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, value:Ljava/lang/Integer;
    goto :goto_0

    .line 735
    .local v2, value:Ljava/lang/Object;
    .restart local p2       #defValue:Ljava/lang/Object;,"TT;"
    :cond_4
    instance-of v3, p2, Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 736
    check-cast p2, Ljava/lang/Float;

    .end local p2           #defValue:Ljava/lang/Object;,"TT;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .local v2, value:Ljava/lang/Float;
    goto :goto_0
.end method

.method public getHistoryColors()[I
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/PenManager;->getHistoryColors(Landroid/content/Context;)[I

    move-result-object v0

    return-object v0
.end method

.method public getHistoryColors(Landroid/content/Context;)[I
    .locals 4
    .parameter "context"

    .prologue
    .line 437
    const-string v1, "PenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getHistoryColors   PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu15/PenManager;->isUseGlobalPens(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/PenManager;->getHistoryColorsGlobal(Landroid/content/Context;)[I

    move-result-object v0

    .line 447
    .local v0, ret:[I
    :goto_0
    if-nez v0, :cond_0

    .line 448
    const-string v1, "PenManager"

    const-string v2, "  HistoryColors null "

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    return-object v0

    .line 444
    .end local v0           #ret:[I
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/PenManager;->getHistoryColorsLocal(Landroid/content/Context;)[I

    move-result-object v0

    .restart local v0       #ret:[I
    goto :goto_0
.end method

.method public getHistoryPens(Z)Ljava/util/List;
    .locals 1
    .parameter "isSimplePen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/penmenu15/PenManager;->getHistoryPens(ZLandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryPens(ZLandroid/content/Context;)Ljava/util/List;
    .locals 11
    .parameter "isSimplePen"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v8, p0, Lcom/htc/painting/penmenu15/PenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 342
    .local v5, res:Landroid/content/res/Resources;
    const/16 v8, 0x309

    invoke-static {v5, v8}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v2

    .line 343
    .local v2, optionSize:I
    const/16 v8, 0x30a

    invoke-static {v5, v8}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v0

    .line 345
    .local v0, curPenSize:I
    const-string v8, "PenMenuNew"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " getHistoryPens   PID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " TID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v6, ret:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    const/4 v7, 0x0

    .line 352
    .local v7, stringToParse:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/htc/painting/penmenu15/PenManager;->isUseGlobalPens(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 353
    invoke-direct {p0, p2}, Lcom/htc/painting/penmenu15/PenManager;->getHistoryPensGlobal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 359
    :goto_0
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 394
    :cond_0
    return-object v6

    .line 356
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/painting/penmenu15/PenManager;->getHistoryPensLocal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 368
    :cond_2
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, penStrings:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v8, v4

    if-ge v1, v8, :cond_0

    .line 370
    aget-object v8, v4, v1

    invoke-direct {p0, v8, v2, v0}, Lcom/htc/painting/penmenu15/PenManager;->stringToPen(Ljava/lang/String;II)Lcom/htc/painting/penmenu15/core/RenderingPen;

    move-result-object v3

    .line 371
    .local v3, pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    if-eqz v3, :cond_3

    .line 385
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method isUseGlobalPens(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "pen_attr_for_each_app"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 216
    .local v0, ret:I
    const-string v4, "PenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isUseGlobalPens :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-nez v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 216
    goto :goto_0

    :cond_1
    move v2, v3

    .line 218
    goto :goto_1
.end method

.method public loadPenTypes(II)Ljava/util/List;
    .locals 11
    .parameter "includeSet"
    .parameter "excludeSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/PenManager;->loadRawPenTypes()Ljava/util/List;

    move-result-object v7

    .line 133
    .local v7, rawPenTypes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenType;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/painting/penmenu15/core/PenType;

    .line 134
    .local v6, rawPen:Lcom/htc/painting/penmenu15/core/PenType;
    iget-object v10, p0, Lcom/htc/painting/penmenu15/PenManager;->mPenTypes:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    .end local v6           #rawPen:Lcom/htc/painting/penmenu15/core/PenType;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v1, excludePens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/painting/penmenu15/core/PenType;>;"
    if-eqz v7, :cond_3

    if-eqz p1, :cond_3

    .line 140
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/painting/penmenu15/core/PenType;

    .line 141
    .restart local v6       #rawPen:Lcom/htc/painting/penmenu15/core/PenType;
    invoke-static {v6, p2}, Lcom/htc/painting/penmenu15/PenManager;->inPenSet(Lcom/htc/painting/penmenu15/core/PenType;I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 142
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    .end local v6           #rawPen:Lcom/htc/painting/penmenu15/core/PenType;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu15/core/PenType;

    .line 147
    .local v4, pen:Lcom/htc/painting/penmenu15/core/PenType;
    invoke-interface {v7, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 152
    .end local v4           #pen:Lcom/htc/painting/penmenu15/core/PenType;
    :cond_3
    iget-object v10, p0, Lcom/htc/painting/penmenu15/PenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 153
    .local v9, res:Landroid/content/res/Resources;
    const/16 v10, 0x309

    invoke-static {v9, v10}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v3

    .line 154
    .local v3, optionSize:I
    const/16 v10, 0x30a

    invoke-static {v9, v10}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v0

    .line 155
    .local v0, curPenSize:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v5, penTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    if-eqz v7, :cond_7

    if-eqz p1, :cond_7

    .line 157
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/painting/penmenu15/core/PenType;

    .line 158
    .restart local v6       #rawPen:Lcom/htc/painting/penmenu15/core/PenType;
    invoke-static {v6, p1}, Lcom/htc/painting/penmenu15/PenManager;->inPenSet(Lcom/htc/painting/penmenu15/core/PenType;I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 159
    new-instance v8, Lcom/htc/painting/penmenu15/core/RenderingPen;

    iget-object v10, p0, Lcom/htc/painting/penmenu15/PenManager;->mContext:Landroid/content/Context;

    invoke-direct {v8, v6, v10, v3, v0}, Lcom/htc/painting/penmenu15/core/RenderingPen;-><init>(Lcom/htc/painting/penmenu15/core/PenType;Landroid/content/Context;II)V

    .line 161
    .local v8, renderPen:Lcom/htc/painting/penmenu15/core/RenderingPen;
    invoke-virtual {v6}, Lcom/htc/painting/penmenu15/core/PenType;->isHighlighter()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v6}, Lcom/htc/painting/penmenu15/core/PenType;->isEraser()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 162
    :cond_5
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 164
    :cond_6
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 170
    .end local v6           #rawPen:Lcom/htc/painting/penmenu15/core/PenType;
    .end local v8           #renderPen:Lcom/htc/painting/penmenu15/core/RenderingPen;
    :cond_7
    return-object v5
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 891
    return-void
.end method

.method queryGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;
    .locals 10
    .parameter "key"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p2, defaultValue:Ljava/lang/Object;,"TT;"
    const/4 v8, 0x0

    .line 792
    if-nez p2, :cond_1

    .line 793
    const-string v0, "PenManager"

    const-string v2, "queryGlobalSetting - no default value specified!"

    invoke-static {v0, v2}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_0
    :goto_0
    return-object v8

    .line 797
    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "com.htc.penmenu15"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 800
    .local v1, queryUri:Landroid/net/Uri;
    const-string v0, "PenMenuNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " PenManager queryUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/4 v7, 0x0

    .line 804
    .local v7, cursor:Landroid/database/Cursor;
    move-object v8, p2

    .line 806
    .local v8, ret:Ljava/lang/Object;,"TT;"
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "where penset_type = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v9, p0, Lcom/htc/painting/penmenu15/PenManager;->mPenSetType:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 810
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 811
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 812
    invoke-interface {v7, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 813
    .local v6, column_index:I
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 814
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 832
    .end local v6           #column_index:I
    .end local v8           #ret:Ljava/lang/Object;,"TT;"
    :cond_2
    :goto_1
    if-eqz v7, :cond_0

    .line 833
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 816
    .restart local v6       #column_index:I
    .restart local v8       #ret:Ljava/lang/Object;,"TT;"
    :cond_3
    :try_start_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 817
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, ret:Ljava/lang/String;,"TT;"
    goto :goto_1

    .line 819
    .local v8, ret:Ljava/lang/Object;,"TT;"
    :cond_4
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 820
    new-instance v8, Ljava/lang/Integer;

    .end local v8           #ret:Ljava/lang/Object;,"TT;"
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    .local v8, ret:Ljava/lang/Integer;,"TT;"
    goto :goto_1

    .line 822
    .local v8, ret:Ljava/lang/Object;,"TT;"
    :cond_5
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 823
    new-instance v8, Ljava/lang/Float;

    .end local v8           #ret:Ljava/lang/Object;,"TT;"
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-direct {v8, v0}, Ljava/lang/Float;-><init>(F)V

    .local v8, ret:Ljava/lang/Float;,"TT;"
    goto :goto_1

    .line 826
    .local v8, ret:Ljava/lang/Object;,"TT;"
    :cond_6
    const-string v0, "PenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryGlobalSetting - not supported class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 832
    .end local v6           #column_index:I
    .end local v8           #ret:Ljava/lang/Object;,"TT;"
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    .line 833
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public saveCurrentPen(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z
    .locals 1
    .parameter "currentPen"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/penmenu15/PenManager;->saveCurrentPen(Lcom/htc/painting/penmenu15/core/PenRepresentation;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public saveCurrentPen(Lcom/htc/painting/penmenu15/core/PenRepresentation;Landroid/content/Context;)Z
    .locals 4
    .parameter "currentPen"
    .parameter "context"

    .prologue
    .line 308
    const-string v1, "PenMenuNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " saveCurrentPen   PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    if-nez p1, :cond_1

    .line 310
    const-string v1, "PenManager"

    const-string v2, "saveCurrentPen - can\'t save null pen!"

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v0, 0x0

    .line 325
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    const/4 v0, 0x0

    .line 315
    .local v0, ret:Z
    invoke-virtual {p0, p2}, Lcom/htc/painting/penmenu15/PenManager;->isUseGlobalPens(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu15/PenManager;->saveCurrentPenGlobal(Lcom/htc/painting/penmenu15/core/PenRepresentation;Landroid/content/Context;)Z

    move-result v0

    .line 322
    :goto_1
    if-nez v0, :cond_0

    .line 323
    const-string v1, "PenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveCurrentPen as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/core/PenType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu15/PenManager;->saveCurrentPenLocal(Lcom/htc/painting/penmenu15/core/PenRepresentation;Landroid/content/Context;)Z

    move-result v0

    goto :goto_1
.end method

.method public saveHistoryColors([I)Z
    .locals 1
    .parameter "colors"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/penmenu15/PenManager;->saveHistoryColors([ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public saveHistoryColors([ILandroid/content/Context;)Z
    .locals 4
    .parameter "colors"
    .parameter "context"

    .prologue
    .line 462
    const-string v1, "PenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " saveHistoryColors   PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    if-nez p1, :cond_1

    .line 464
    const-string v1, "PenManager"

    const-string v2, "saveHistoryColors - colors is null!"

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v0, 0x0

    .line 479
    :cond_0
    :goto_0
    return v0

    .line 468
    :cond_1
    const/4 v0, 0x0

    .line 469
    .local v0, ret:Z
    invoke-virtual {p0, p2}, Lcom/htc/painting/penmenu15/PenManager;->isUseGlobalPens(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 470
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/PenManager;->toColorString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/htc/painting/penmenu15/PenManager;->saveHistoryColorsGlobal(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 476
    :goto_1
    if-nez v0, :cond_0

    .line 477
    const-string v1, "PenManager"

    const-string v2, "saveHistoryColors failed!"

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/PenManager;->toColorString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/htc/painting/penmenu15/PenManager;->saveHistoryColorsLocal(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_1
.end method

.method public saveHistoryPens(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, pens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/penmenu15/PenManager;->saveHistoryPens(Ljava/util/List;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public saveHistoryPens(Ljava/util/List;Landroid/content/Context;)Z
    .locals 4
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, pens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    const-string v1, "PenMenuNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " saveHistoryPens   PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    if-nez p1, :cond_1

    .line 412
    const-string v1, "PenManager"

    const-string v2, "saveHistoryPens - pen list is null!"

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v0, 0x0

    .line 427
    :cond_0
    :goto_0
    return v0

    .line 416
    :cond_1
    const/4 v0, 0x0

    .line 417
    .local v0, ret:Z
    invoke-virtual {p0, p2}, Lcom/htc/painting/penmenu15/PenManager;->isUseGlobalPens(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/PenManager;->toHistoryString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/htc/painting/penmenu15/PenManager;->saveHistoryPensGlobal(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 424
    :goto_1
    if-nez v0, :cond_0

    .line 425
    const-string v1, "PenManager"

    const-string v2, "saveHistoryPens failed!"

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 421
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/PenManager;->toHistoryString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/htc/painting/penmenu15/PenManager;->saveHistoryPensLocal(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_1
.end method

.method setToSharedPref(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z
    .locals 4
    .parameter "key"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, value:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x0

    .line 751
    if-nez p2, :cond_0

    .line 774
    .end local p2           #value:Ljava/lang/Object;,"TT;"
    :goto_0
    return v3

    .line 754
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_0
    const-string v1, "PenManager15"

    .line 756
    .local v1, prefName:Ljava/lang/String;
    invoke-virtual {p3, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 757
    .local v2, records:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 758
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 759
    check-cast p2, Ljava/lang/Boolean;

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 771
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 774
    const/4 v3, 0x1

    goto :goto_0

    .line 761
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_2
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 762
    check-cast p2, Ljava/lang/String;

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 764
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_3
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 765
    check-cast p2, Ljava/lang/Integer;

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 767
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_4
    instance-of v3, p2, Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 768
    check-cast p2, Ljava/lang/Float;

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method updateGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z
    .locals 9
    .parameter "key"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, value:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 841
    if-nez p2, :cond_0

    .line 842
    const-string v3, "PenManager"

    const-string v5, "updateGlobalSetting - no save value specified!"

    invoke-static {v3, v5}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    .end local p2           #value:Ljava/lang/Object;,"TT;"
    :goto_0
    return v4

    .line 845
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_0
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "content"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "com.htc.penmenu15"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 848
    .local v0, updateUri:Landroid/net/Uri;
    const-string v5, "PenMenuNew"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " PenManager updateUri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 852
    .local v2, values:Landroid/content/ContentValues;
    instance-of v5, p2, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    .line 853
    check-cast p2, Ljava/lang/Boolean;

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 869
    :goto_1
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "where penset_type = ?"

    new-array v7, v3, [Ljava/lang/String;

    iget v8, p0, Lcom/htc/painting/penmenu15/PenManager;->mPenSetType:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v0, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 871
    .local v1, updated:I
    if-ne v1, v3, :cond_5

    :goto_2
    move v4, v3

    goto :goto_0

    .line 855
    .end local v1           #updated:I
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_1
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 856
    check-cast p2, Ljava/lang/String;

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 858
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_2
    instance-of v5, p2, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 859
    check-cast p2, Ljava/lang/Integer;

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 861
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_3
    instance-of v5, p2, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 862
    check-cast p2, Ljava/lang/Float;

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 865
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_4
    const-string v5, "PenManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateGlobalSetting - not supported class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    .restart local v1       #updated:I
    :cond_5
    move v3, v4

    .line 871
    goto :goto_2
.end method
