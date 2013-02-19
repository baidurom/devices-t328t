.class public Lcom/htc/painting/penmenu/PenManager;
.super Ljava/lang/Object;
.source "PenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu/PenManager$PenTypeResources;,
        Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;,
        Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.penmenu"

.field public static final CURRENT_PEN_HISTORY_ORDER_KEY:Ljava/lang/String; = "current_pen_history_order"

.field public static final CURRENT_PEN_KEY:Ljava/lang/String; = "current_pen"

.field public static final CURRENT_PEN_USED_KEY:Ljava/lang/String; = "current_pen_used"

#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_MENU_STATE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_PENMENU_STATE:I = 0x0

.field public static final DEFAULT_SELECTED_MENU_ID:I = 0x3

.field public static final DEFAULT_STICKY_STATE:Z = false

.field public static final DEFAULT_STROKE_VISIBLE_STATE:I = 0x1

.field public static final ERASER_MODE_SIZE_KEY:Ljava/lang/String; = "eraser_mode_size"

.field public static final FIRST_CREATE_KEY:Ljava/lang/String; = "first_create"

.field private static final GLOBAL_PENSET_TYPE_SELECTION:Ljava/lang/String; = "where penset_type = ?"

.field public static final HISTORY_PENS_KEY:Ljava/lang/String; = "history_pens"

.field private static final LOG_TAG:Ljava/lang/String; = "PenManager"

.field public static final MENU_STATE_KEY:Ljava/lang/String; = "menu_state"

.field public static final MOST_RECENT_PENTYPE_CONFIG_KEY:Ljava/lang/String; = "most_recent_pentype_config"

.field static final NULL_PEN_ID:I = -0x1

.field public static final PENMENU_STATE_KEY:Ljava/lang/String; = "penmenu_state"

.field private static final PEN_TYPE_LOADER:Ljava/lang/String; = "Pen Type Loader"

.field private static final PREFS_NAME:Ljava/lang/String; = "PenManager"

.field public static final PROMPT_HOW_TO_SHOW_PENMENU_KEY:Ljava/lang/String; = "prompt_show_penmenu"

.field public static final SELECTED_MENU_ID_KEY:Ljava/lang/String; = "selected_menu_id"

.field private static final SEPERATOR_TOKEN:Ljava/lang/String; = ";"

.field public static final STICKY_STATE_KEY:Ljava/lang/String; = "sticky_state"

.field public static final STROKE_VISIBLE_KEY:Ljava/lang/String; = "stroke_visible"

.field public static final USE_GLOBAL_PENS_KEY:Ljava/lang/String; = "use_global_pens"

.field private static instance:Lcom/htc/painting/penmenu/PenManager;


# instance fields
.field private mCleanMode:Z

.field private mMostRecentPenTypeConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;"
        }
    .end annotation
.end field

.field private mPenServiceReveiver:Landroid/content/BroadcastReceiver;

.field private mPenSetType:I

.field private mPenTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/PenType;",
            ">;"
        }
    .end annotation
.end field

.field private mPenTypeLoadingHandler:Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;

.field private mPenTypeLoadingListener:Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;

.field private mPenTypeLoadingThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu$State;->ordinal()I

    move-result v0

    sput v0, Lcom/htc/painting/penmenu/PenManager;->DEFAULT_PENMENU_STATE:I

    .line 115
    sget-object v0, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/Menu$State;->ordinal()I

    move-result v0

    sput v0, Lcom/htc/painting/penmenu/PenManager;->DEFAULT_MENU_STATE:I

    .line 132
    new-instance v0, Lcom/htc/painting/penmenu/PenManager;

    invoke-direct {v0}, Lcom/htc/painting/penmenu/PenManager;-><init>()V

    sput-object v0, Lcom/htc/painting/penmenu/PenManager;->instance:Lcom/htc/painting/penmenu/PenManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    .line 144
    iput v1, p0, Lcom/htc/painting/penmenu/PenManager;->mPenSetType:I

    .line 149
    iput-boolean v1, p0, Lcom/htc/painting/penmenu/PenManager;->mCleanMode:Z

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenManager;->mMostRecentPenTypeConfigs:Ljava/util/List;

    .line 211
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Pen Type Loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeLoadingThread:Landroid/os/HandlerThread;

    .line 236
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeLoadingThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 237
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeLoadingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 238
    return-void
.end method

.method static synthetic access$000(Lcom/htc/painting/penmenu/PenManager;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->loadPenType(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/painting/penmenu/PenManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenManager;->notifyLoadFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/painting/penmenu/PenManager;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->refreshPenTypes(Landroid/content/Context;)V

    return-void
.end method

.method private addPenType(Lcom/htc/painting/penmenu/PenType;)Lcom/htc/painting/penmenu/PenType;
    .locals 5
    .parameter "penType"

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    const-string v3, "PenManager"

    const-string v4, "addPenType error - penType is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v3, 0x0

    .line 268
    :goto_0
    return-object v3

    .line 247
    :cond_0
    const/4 v0, 0x0

    .line 248
    .local v0, found:Z
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/PenType;

    .line 249
    .local v2, type:Lcom/htc/painting/penmenu/PenType;
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/PenType;->getUniqueName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/PenType;->getUniqueName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    move-object p1, v2

    .line 251
    const/4 v0, 0x1

    .line 256
    .end local v2           #type:Lcom/htc/painting/penmenu/PenType;
    :cond_2
    if-nez v0, :cond_3

    .line 260
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v3, p1

    .line 268
    goto :goto_0
.end method

.method private getCurrentPen(Landroid/content/Context;)Lcom/htc/painting/penmenu/Pen;
    .locals 8
    .parameter "context"

    .prologue
    .line 604
    const/4 v2, 0x0

    .line 605
    .local v2, stringToParse:Ljava/lang/String;
    const/4 v4, 0x0

    .line 606
    .local v4, used:Z
    const/4 v1, -0x1

    .line 608
    .local v1, order:I
    const/4 v0, 0x0

    .line 610
    .local v0, currentPen:Lcom/htc/painting/penmenu/Pen;
    iget-boolean v5, p0, Lcom/htc/painting/penmenu/PenManager;->mCleanMode:Z

    if-nez v5, :cond_1

    .line 612
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->isUseGlobalPens(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 613
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->getCurrentPenGlobal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->isCurrentPenUsedGlobal(Landroid/content/Context;)Z

    move-result v4

    .line 615
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->getCurrentPenHistoryOrderGlobal(Landroid/content/Context;)I

    move-result v1

    .line 624
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 625
    invoke-static {v2}, Lcom/htc/painting/penmenu/Pen;->parseString(Ljava/lang/String;)Lcom/htc/painting/penmenu/Pen;

    move-result-object v0

    .line 629
    :cond_0
    const/4 v3, 0x0

    .line 630
    .local v3, type:Lcom/htc/painting/penmenu/PenType;
    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getUniqueName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/painting/penmenu/PenManager;->getPenTypeByUniqueName(Ljava/lang/String;)Lcom/htc/painting/penmenu/PenType;

    move-result-object v3

    .line 633
    if-nez v3, :cond_4

    .line 634
    const-string v5, "PenManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentPen - can\'t find pen type of current pen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getUniqueName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v0, 0x0

    .line 652
    .end local v3           #type:Lcom/htc/painting/penmenu/PenType;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 656
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->getDefaultPen(Landroid/content/Context;)Lcom/htc/painting/penmenu/Pen;

    move-result-object v0

    .line 657
    const/4 v4, 0x1

    .line 658
    const/4 v1, -0x1

    .line 661
    :cond_2
    if-nez v0, :cond_5

    .line 662
    const-string v5, "PenManager"

    const-string v6, "getCurrentPen - no default pen found, return null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v0, 0x0

    .line 674
    .end local v0           #currentPen:Lcom/htc/painting/penmenu/Pen;
    :goto_2
    return-object v0

    .line 618
    .restart local v0       #currentPen:Lcom/htc/painting/penmenu/Pen;
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->getCurrentPenLocal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 619
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->isCurrentPenUsedLocal(Landroid/content/Context;)Z

    move-result v4

    .line 620
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->getCurrentPenHistoryOrderLocal(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 639
    .restart local v3       #type:Lcom/htc/painting/penmenu/PenType;
    :cond_4
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenType;->getID()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/htc/painting/penmenu/Pen;->setType(I)V

    goto :goto_1

    .line 667
    .end local v3           #type:Lcom/htc/painting/penmenu/PenType;
    :cond_5
    invoke-virtual {v0, v4}, Lcom/htc/painting/penmenu/Pen;->setUsed(Z)V

    .line 668
    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/Pen;->setHistorySeqNo(I)V

    goto :goto_2
.end method

.method private getCurrentPenGlobal(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1153
    const-string v1, "current_pen"

    const-string v2, ""

    invoke-virtual {p0, v1, v2, p1}, Lcom/htc/painting/penmenu/PenManager;->queryGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1154
    .local v0, stringToParse:Ljava/lang/String;
    return-object v0
.end method

.method private getCurrentPenHistoryOrderGlobal(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 1184
    const-string v1, "current_pen_history_order"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/htc/painting/penmenu/PenManager;->queryGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1185
    .local v0, order:I
    return v0
.end method

.method private getCurrentPenHistoryOrderLocal(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 935
    const-string v2, "PenManager"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 936
    .local v1, records:Landroid/content/SharedPreferences;
    const-string v2, "current_pen_history_order"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 937
    .local v0, order:I
    return v0
.end method

.method private getCurrentPenLocal(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 905
    const-string v2, "PenManager"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 906
    .local v0, records:Landroid/content/SharedPreferences;
    const-string v2, "current_pen"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, stringToParse:Ljava/lang/String;
    return-object v1
.end method

.method private getDefaultHistoryPens(Ljava/util/List;ZLandroid/content/Context;)I
    .locals 12
    .parameter
    .parameter "isSimplePen"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;Z",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1221
    .local p1, penList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/Pen;>;"
    const/4 v1, 0x0

    .line 1222
    .local v1, count:I
    iget-object v8, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 1226
    :cond_0
    const/4 v8, 0x0

    .line 1274
    :goto_0
    return v8

    .line 1229
    :cond_1
    if-eqz p2, :cond_3

    .line 1230
    const/4 v8, 0x5

    new-array v7, v8, [F

    fill-array-data v7, :array_0

    .line 1231
    .local v7, sizeArray:[F
    const/4 v8, 0x5

    new-array v0, v8, [I

    const/4 v8, 0x0

    const/high16 v9, -0x100

    aput v9, v0, v8

    const/4 v8, 0x1

    const v9, -0xff0100

    aput v9, v0, v8

    const/4 v8, 0x2

    const/16 v9, 0xa0

    const/16 v10, 0x20

    const/16 v11, 0xf0

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    aput v9, v0, v8

    const/4 v8, 0x3

    const/16 v9, -0x100

    aput v9, v0, v8

    const/4 v8, 0x4

    const/high16 v9, -0x1

    aput v9, v0, v8

    .line 1237
    .local v0, colorArray:[I
    iget-object v8, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/painting/penmenu/PenType;

    .line 1238
    .local v6, penType:Lcom/htc/painting/penmenu/PenType;
    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenType;->isEraser()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenType;->isSimplePen()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 1239
    array-length v8, v7

    array-length v9, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1240
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 1241
    new-instance v5, Lcom/htc/painting/penmenu/Pen;

    aget v8, v0, v2

    aget v9, v7, v2

    invoke-virtual {v6, v9}, Lcom/htc/painting/penmenu/PenType;->getPenSizeId(F)I

    move-result v9

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenType;->getUniqueName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v8, v9, v10}, Lcom/htc/painting/penmenu/Pen;-><init>(IILjava/lang/String;)V

    .line 1244
    .local v5, pen:Lcom/htc/painting/penmenu/Pen;
    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenType;->getID()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/htc/painting/penmenu/Pen;->setType(I)V

    .line 1245
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1246
    add-int/lit8 v1, v1, 0x1

    .line 1240
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1256
    .end local v0           #colorArray:[I
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #len:I
    .end local v5           #pen:Lcom/htc/painting/penmenu/Pen;
    .end local v6           #penType:Lcom/htc/painting/penmenu/PenType;
    .end local v7           #sizeArray:[F
    :cond_3
    iget-object v8, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/painting/penmenu/PenType;

    .line 1257
    .restart local v6       #penType:Lcom/htc/painting/penmenu/PenType;
    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenType;->isEraser()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenType;->isSimplePen()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenType;->isDefaultPen()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1259
    new-instance v5, Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenType;->getDefaultColor()I

    move-result v8

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenType;->getDefaultSize()F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/htc/painting/penmenu/PenType;->getPenSizeId(F)I

    move-result v9

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenType;->getUniqueName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v8, v9, v10}, Lcom/htc/painting/penmenu/Pen;-><init>(IILjava/lang/String;)V

    .line 1262
    .restart local v5       #pen:Lcom/htc/painting/penmenu/Pen;
    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenType;->getID()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/htc/painting/penmenu/Pen;->setType(I)V

    .line 1263
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1264
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v5           #pen:Lcom/htc/painting/penmenu/Pen;
    .end local v6           #penType:Lcom/htc/painting/penmenu/PenType;
    :cond_5
    move v8, v1

    .line 1274
    goto/16 :goto_0

    .line 1230
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x40t 0x40t
    .end array-data
.end method

.method private getDefaultPen(Landroid/content/Context;)Lcom/htc/painting/penmenu/Pen;
    .locals 13
    .parameter "context"

    .prologue
    .line 491
    const/high16 v0, -0x100

    .line 492
    .local v0, color:I
    const/4 v6, 0x5

    .line 493
    .local v6, sizeId:I
    const-string v9, ""

    .line 494
    .local v9, uniqueName:Ljava/lang/String;
    const/4 v8, -0x1

    .line 497
    .local v8, typeId:I
    const/4 v3, 0x0

    .line 498
    .local v3, isSimplePen:Z
    iget v10, p0, Lcom/htc/painting/penmenu/PenManager;->mPenSetType:I

    if-eqz v10, :cond_0

    .line 499
    const/4 v3, 0x1

    .line 502
    :cond_0
    const/4 v7, 0x0

    .line 506
    .local v7, type:Lcom/htc/painting/penmenu/PenType;
    iget-object v10, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 508
    iget-object v10, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/painting/penmenu/PenType;

    invoke-virtual {v10}, Lcom/htc/painting/penmenu/PenType;->getUniqueName()Ljava/lang/String;

    move-result-object v9

    .line 509
    iget-object v10, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/painting/penmenu/PenType;

    invoke-virtual {v10}, Lcom/htc/painting/penmenu/PenType;->getDefaultColor()I

    move-result v0

    .line 510
    iget-object v10, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/painting/penmenu/PenType;

    iget-object v11, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/painting/penmenu/PenType;

    invoke-virtual {v11}, Lcom/htc/painting/penmenu/PenType;->getDefaultSize()F

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/PenType;->getPenSizeId(F)I

    move-result v6

    .line 511
    iget-object v10, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/painting/penmenu/PenType;

    invoke-virtual {v10}, Lcom/htc/painting/penmenu/PenType;->getID()I

    move-result v8

    .line 512
    const/4 v10, -0x1

    if-ne v6, v10, :cond_1

    .line 514
    const/4 v6, 0x5

    .line 521
    :cond_1
    iget-object v10, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/PenType;

    .line 522
    .local v4, penType:Lcom/htc/painting/penmenu/PenType;
    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenType;->isEraser()Z

    move-result v10

    if-nez v10, :cond_2

    .line 523
    const/4 v10, 0x1

    if-ne v3, v10, :cond_4

    .line 524
    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenType;->isSimplePen()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 525
    move-object v7, v4

    .line 538
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #penType:Lcom/htc/painting/penmenu/PenType;
    :cond_3
    :goto_0
    if-eqz v7, :cond_6

    .line 539
    invoke-virtual {v7}, Lcom/htc/painting/penmenu/PenType;->getUniqueName()Ljava/lang/String;

    move-result-object v9

    .line 540
    invoke-virtual {v7}, Lcom/htc/painting/penmenu/PenType;->getID()I

    move-result v8

    .line 541
    invoke-virtual {v7}, Lcom/htc/painting/penmenu/PenType;->getDefaultColor()I

    move-result v0

    .line 542
    invoke-virtual {v7}, Lcom/htc/painting/penmenu/PenType;->getDefaultSize()F

    move-result v10

    invoke-virtual {v7, v10}, Lcom/htc/painting/penmenu/PenType;->getPenSizeId(F)I

    move-result v2

    .line 543
    .local v2, id:I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_5

    .line 544
    move v6, v2

    .line 555
    :goto_1
    new-instance v5, Lcom/htc/painting/penmenu/Pen;

    invoke-direct {v5, v0, v6, v9}, Lcom/htc/painting/penmenu/Pen;-><init>(IILjava/lang/String;)V

    .line 556
    .local v5, ret:Lcom/htc/painting/penmenu/Pen;
    invoke-virtual {v5, v8}, Lcom/htc/painting/penmenu/Pen;->setType(I)V

    .line 561
    .end local v2           #id:I
    .end local v5           #ret:Lcom/htc/painting/penmenu/Pen;
    :goto_2
    return-object v5

    .line 529
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #penType:Lcom/htc/painting/penmenu/PenType;
    :cond_4
    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenType;->isDefaultPen()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 530
    move-object v7, v4

    .line 531
    goto :goto_0

    .line 547
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #penType:Lcom/htc/painting/penmenu/PenType;
    .restart local v2       #id:I
    :cond_5
    const-string v10, "PenManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getDefaultPen - can\'t map size to size id for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", use XS_SIZE_ID by default!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 551
    .end local v2           #id:I
    :cond_6
    const-string v10, "PenManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getDefaultPen - can\'t find default pen for pen set type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/painting/penmenu/PenManager;->mPenSetType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private getHistoryPens(ZLandroid/content/Context;)Ljava/util/List;
    .locals 9
    .parameter "isSimplePen"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v3, ret:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/Pen;>;"
    iget-boolean v6, p0, Lcom/htc/painting/penmenu/PenManager;->mCleanMode:Z

    if-nez v6, :cond_7

    .line 718
    const/4 v4, 0x0

    .line 719
    .local v4, stringToParse:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/htc/painting/penmenu/PenManager;->isUseGlobalPens(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 720
    invoke-direct {p0, p2}, Lcom/htc/painting/penmenu/PenManager;->getHistoryPensGlobal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 726
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 731
    :cond_0
    invoke-direct {p0, v3, p1, p2}, Lcom/htc/painting/penmenu/PenManager;->getDefaultHistoryPens(Ljava/util/List;ZLandroid/content/Context;)I

    .line 768
    .end local v4           #stringToParse:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v3

    .line 723
    .restart local v4       #stringToParse:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p2}, Lcom/htc/painting/penmenu/PenManager;->getHistoryPensLocal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 735
    :cond_3
    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 736
    .local v2, penStrings:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v6, v2

    if-ge v0, v6, :cond_1

    .line 737
    aget-object v6, v2, v0

    invoke-static {v6}, Lcom/htc/painting/penmenu/Pen;->parseString(Ljava/lang/String;)Lcom/htc/painting/penmenu/Pen;

    move-result-object v1

    .line 738
    .local v1, pen:Lcom/htc/painting/penmenu/Pen;
    if-eqz v1, :cond_5

    .line 740
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->getUniqueName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/htc/painting/penmenu/PenManager;->getPenTypeByUniqueName(Ljava/lang/String;)Lcom/htc/painting/penmenu/PenType;

    move-result-object v5

    .line 741
    .local v5, type:Lcom/htc/painting/penmenu/PenType;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenType;->isSimplePen()Z

    move-result v6

    if-eq v6, p1, :cond_6

    .line 742
    :cond_4
    const-string v6, "PenManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getHistoryPens - pen type not found or matched: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->getUniqueName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    .end local v5           #type:Lcom/htc/painting/penmenu/PenType;
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 751
    .restart local v5       #type:Lcom/htc/painting/penmenu/PenType;
    :cond_6
    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenType;->getID()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/htc/painting/penmenu/Pen;->setType(I)V

    .line 752
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 760
    .end local v0           #i:I
    .end local v1           #pen:Lcom/htc/painting/penmenu/Pen;
    .end local v2           #penStrings:[Ljava/lang/String;
    .end local v4           #stringToParse:Ljava/lang/String;
    .end local v5           #type:Lcom/htc/painting/penmenu/PenType;
    :cond_7
    invoke-direct {p0, v3, p1, p2}, Lcom/htc/painting/penmenu/PenManager;->getDefaultHistoryPens(Ljava/util/List;ZLandroid/content/Context;)I

    goto :goto_1
.end method

.method private getHistoryPensGlobal(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1174
    const-string v1, "history_pens"

    const-string v2, ""

    invoke-virtual {p0, v1, v2, p1}, Lcom/htc/painting/penmenu/PenManager;->queryGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1175
    .local v0, stringToParse:Ljava/lang/String;
    return-object v0
.end method

.method private getHistoryPensLocal(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 941
    const-string v2, "PenManager"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 942
    .local v0, records:Landroid/content/SharedPreferences;
    const-string v2, "history_pens"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 943
    .local v1, ret:Ljava/lang/String;
    return-object v1
.end method

.method private getMostRecentPenTypeConfig(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 858
    const-string v0, ""

    .line 859
    .local v0, ret:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->isUseGlobalPens(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->getMostRecentPenTypeConfigGlobal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 865
    :goto_0
    return-object v0

    .line 862
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->getMostRecentPenTypeConfigLocal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMostRecentPenTypeConfigGlobal(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1179
    const-string v1, "most_recent_pentype_config"

    const-string v2, ""

    invoke-virtual {p0, v1, v2, p1}, Lcom/htc/painting/penmenu/PenManager;->queryGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1180
    .local v0, stringToParse:Ljava/lang/String;
    return-object v0
.end method

.method private getMostRecentPenTypeConfigLocal(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 947
    const-string v2, "PenManager"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 948
    .local v0, records:Landroid/content/SharedPreferences;
    const-string v2, "most_recent_pentype_config"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 949
    .local v1, ret:Ljava/lang/String;
    return-object v1
.end method

.method static getPenManager()Lcom/htc/painting/penmenu/PenManager;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/htc/painting/penmenu/PenManager;->instance:Lcom/htc/painting/penmenu/PenManager;

    return-object v0
.end method

.method private getPenTypeByUniqueName(Ljava/lang/String;)Lcom/htc/painting/penmenu/PenType;
    .locals 4
    .parameter "uniqueName"

    .prologue
    const/4 v2, 0x0

    .line 389
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 398
    :goto_0
    return-object v1

    .line 393
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/PenType;

    .line 394
    .local v1, penType:Lcom/htc/painting/penmenu/PenType;
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenType;->getUniqueName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v1           #penType:Lcom/htc/painting/penmenu/PenType;
    :cond_2
    move-object v1, v2

    .line 398
    goto :goto_0
.end method

.method private isCurrentPenUsedGlobal(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 1169
    const-string v1, "current_pen_used"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/htc/painting/penmenu/PenManager;->queryGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1170
    .local v0, isCurrentPenUsed:Z
    return v0
.end method

.method private isCurrentPenUsedLocal(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 929
    const-string v2, "PenManager"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 930
    .local v1, records:Landroid/content/SharedPreferences;
    const-string v2, "current_pen_used"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 931
    .local v0, isCurrentPenUsed:Z
    return v0
.end method

.method private isFirstCreateLocal(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 998
    const-string v2, "PenManager"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 999
    .local v1, records:Landroid/content/SharedPreferences;
    const-string v2, "first_create"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1000
    .local v0, isFirst:Z
    return v0
.end method

.method private isPromptHowToShowPenMenuLocal(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 981
    const-string v2, "PenManager"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 982
    .local v0, records:Landroid/content/SharedPreferences;
    const-string v2, "prompt_show_penmenu"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 983
    .local v1, show:Z
    return v1
.end method

.method private loadMostRecentPenTypeConfig(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 803
    iget-object v10, p0, Lcom/htc/painting/penmenu/PenManager;->mMostRecentPenTypeConfigs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 805
    iget-boolean v10, p0, Lcom/htc/painting/penmenu/PenManager;->mCleanMode:Z

    if-nez v10, :cond_0

    .line 806
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->getMostRecentPenTypeConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 807
    .local v8, stringToParse:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 830
    .end local v8           #stringToParse:Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/painting/penmenu/PenType;

    .line 831
    .local v7, penType:Lcom/htc/painting/penmenu/PenType;
    new-instance v0, Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v7}, Lcom/htc/painting/penmenu/PenType;->getDefaultColor()I

    move-result v10

    invoke-virtual {v7}, Lcom/htc/painting/penmenu/PenType;->getDefaultSize()F

    move-result v11

    invoke-virtual {v7, v11}, Lcom/htc/painting/penmenu/PenType;->getPenSizeId(F)I

    move-result v11

    invoke-virtual {v7}, Lcom/htc/painting/penmenu/PenType;->getUniqueName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v10, v11, v12}, Lcom/htc/painting/penmenu/Pen;-><init>(IILjava/lang/String;)V

    .line 834
    .local v0, defaultPen:Lcom/htc/painting/penmenu/Pen;
    invoke-virtual {v7}, Lcom/htc/painting/penmenu/PenType;->getID()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/htc/painting/penmenu/Pen;->setType(I)V

    .line 835
    const/4 v1, 0x0

    .line 836
    .local v1, found:Z
    iget-object v10, p0, Lcom/htc/painting/penmenu/PenManager;->mMostRecentPenTypeConfigs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/penmenu/Pen;

    .line 837
    .local v5, pen:Lcom/htc/painting/penmenu/Pen;
    invoke-virtual {v5}, Lcom/htc/painting/penmenu/Pen;->getType()I

    move-result v10

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getType()I

    move-result v11

    if-ne v10, v11, :cond_2

    .line 838
    const/4 v1, 0x1

    .line 842
    .end local v5           #pen:Lcom/htc/painting/penmenu/Pen;
    :cond_3
    const/4 v10, 0x1

    if-eq v1, v10, :cond_1

    .line 846
    iget-object v10, p0, Lcom/htc/painting/penmenu/PenManager;->mMostRecentPenTypeConfigs:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 812
    .end local v0           #defaultPen:Lcom/htc/painting/penmenu/Pen;
    .end local v1           #found:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #penType:Lcom/htc/painting/penmenu/PenType;
    .restart local v8       #stringToParse:Ljava/lang/String;
    :cond_4
    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 813
    .local v6, penStrings:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v10, v6

    if-ge v2, v10, :cond_0

    .line 814
    aget-object v10, v6, v2

    invoke-static {v10}, Lcom/htc/painting/penmenu/Pen;->parseString(Ljava/lang/String;)Lcom/htc/painting/penmenu/Pen;

    move-result-object v5

    .line 815
    .restart local v5       #pen:Lcom/htc/painting/penmenu/Pen;
    if-eqz v5, :cond_5

    .line 817
    invoke-virtual {v5}, Lcom/htc/painting/penmenu/Pen;->getUniqueName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/htc/painting/penmenu/PenManager;->getPenTypeByUniqueName(Ljava/lang/String;)Lcom/htc/painting/penmenu/PenType;

    move-result-object v9

    .line 823
    .local v9, type:Lcom/htc/painting/penmenu/PenType;
    invoke-virtual {v9}, Lcom/htc/painting/penmenu/PenType;->getID()I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/htc/painting/penmenu/Pen;->setType(I)V

    .line 824
    iget-object v10, p0, Lcom/htc/painting/penmenu/PenManager;->mMostRecentPenTypeConfigs:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    .end local v9           #type:Lcom/htc/painting/penmenu/PenType;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 855
    .end local v2           #i:I
    .end local v5           #pen:Lcom/htc/painting/penmenu/Pen;
    .end local v6           #penStrings:[Ljava/lang/String;
    .end local v8           #stringToParse:Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private loadPenType(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 335
    invoke-static {p1}, Lcom/htc/painting/tool/pen/PenUtils;->getAllPen(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 337
    .local v0, penList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 338
    :cond_0
    const-string v1, "PenManager"

    const-string v2, "loadPenType error - no pen got from provider!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/htc/painting/penmenu/PenManager;->refreshPenTypeList(Ljava/util/List;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private notifyLoadFinish()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeLoadingListener:Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;

    .line 377
    .local v0, penTypeLoadingListener:Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;
    if-eqz v0, :cond_0

    .line 378
    invoke-interface {v0}, Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;->onFinish()V

    .line 380
    :cond_0
    return-void
.end method

.method private declared-synchronized refreshPenTypeList(Ljava/util/List;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/tool/pen/Pen;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, penList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/tool/pen/Pen;>;"
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 360
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/tool/pen/Pen;

    .line 361
    .local v1, pen:Lcom/htc/painting/tool/pen/Pen;
    new-instance v2, Lcom/htc/painting/penmenu/PenType;

    invoke-direct {v2, v1, p2}, Lcom/htc/painting/penmenu/PenType;-><init>(Lcom/htc/painting/tool/pen/Pen;Landroid/content/Context;)V

    .line 366
    .local v2, penType:Lcom/htc/painting/penmenu/PenType;
    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu/PenManager;->addPenType(Lcom/htc/painting/penmenu/PenType;)Lcom/htc/painting/penmenu/PenType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 358
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pen:Lcom/htc/painting/tool/pen/Pen;
    .end local v2           #penType:Lcom/htc/painting/penmenu/PenType;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 368
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private refreshPenTypes(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeLoadingHandler:Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;

    if-nez v0, :cond_0

    .line 277
    const-string v0, "PenManager"

    const-string v1, "refreshPenTypes - null handler!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeLoadingHandler:Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;->removeMessages(I)V

    .line 282
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeLoadingHandler:Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private saveCurrentPenGlobal(Lcom/htc/painting/penmenu/Pen;ILandroid/content/Context;)Z
    .locals 6
    .parameter "currentPen"
    .parameter "orderInHistory"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1158
    const/4 v0, 0x0

    .line 1159
    .local v0, ret:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 1165
    .end local v0           #ret:Z
    .local v1, ret:I
    :goto_0
    return v1

    .line 1162
    .end local v1           #ret:I
    .restart local v0       #ret:Z
    :cond_0
    const-string v4, "current_pen"

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p3}, Lcom/htc/painting/penmenu/PenManager;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v0

    .line 1163
    if-eqz v0, :cond_1

    const-string v4, "current_pen_used"

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->isUsed()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p3}, Lcom/htc/painting/penmenu/PenManager;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 1164
    :goto_1
    if-eqz v0, :cond_2

    const-string v4, "current_pen_history_order"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p3}, Lcom/htc/painting/penmenu/PenManager;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    :goto_2
    move v1, v0

    .line 1165
    .restart local v1       #ret:I
    goto :goto_0

    .end local v1           #ret:I
    :cond_1
    move v0, v3

    .line 1163
    goto :goto_1

    :cond_2
    move v0, v3

    .line 1164
    goto :goto_2
.end method

.method private saveCurrentPenLocal(Lcom/htc/painting/penmenu/Pen;ILandroid/content/Context;)Z
    .locals 4
    .parameter "currentPen"
    .parameter "orderInHistory"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 911
    if-nez p1, :cond_0

    .line 922
    :goto_0
    return v2

    .line 915
    :cond_0
    const-string v3, "PenManager"

    invoke-virtual {p3, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 916
    .local v1, records:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 917
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "current_pen"

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 918
    const-string v2, "current_pen_used"

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->isUsed()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 919
    const-string v2, "current_pen_history_order"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 921
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 922
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private saveFirstCreateLocal(ZLandroid/content/Context;)Z
    .locals 4
    .parameter "isFirst"
    .parameter "context"

    .prologue
    .line 1004
    const-string v2, "PenManager"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1005
    .local v1, records:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1006
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "first_create"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1008
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1009
    const/4 v2, 0x1

    return v2
.end method

.method private saveHistoryPensGlobal(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter "pens"
    .parameter "context"

    .prologue
    .line 1189
    if-nez p1, :cond_0

    .line 1190
    const/4 v0, 0x0

    .line 1192
    :goto_0
    return v0

    :cond_0
    const-string v0, "history_pens"

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/painting/penmenu/PenManager;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private saveHistoryPensLocal(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .parameter "pens"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 953
    if-nez p1, :cond_0

    .line 961
    :goto_0
    return v2

    .line 956
    :cond_0
    const-string v3, "PenManager"

    invoke-virtual {p2, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 957
    .local v1, records:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 958
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "history_pens"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 960
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 961
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private saveMostRecentPenTypeConfigGlobal(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter "pens"
    .parameter "context"

    .prologue
    .line 1196
    if-nez p1, :cond_0

    .line 1197
    const/4 v0, 0x0

    .line 1199
    :goto_0
    return v0

    :cond_0
    const-string v0, "most_recent_pentype_config"

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/painting/penmenu/PenManager;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private saveMostRecentPenTypeConfigLocal(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .parameter "pens"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 967
    if-nez p1, :cond_0

    .line 975
    :goto_0
    return v2

    .line 970
    :cond_0
    const-string v3, "PenManager"

    invoke-virtual {p2, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 971
    .local v1, records:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 972
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "most_recent_pentype_config"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 974
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 975
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private savePromptHowToShowPenMenuLocal(ZLandroid/content/Context;)Z
    .locals 4
    .parameter "show"
    .parameter "context"

    .prologue
    .line 987
    const-string v2, "PenManager"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 988
    .local v1, records:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 989
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "prompt_show_penmenu"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 991
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 992
    const/4 v2, 0x1

    return v2
.end method

.method private toHistoryString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1203
    .local p1, pens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/Pen;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1204
    :cond_0
    const-string v3, ""

    .line 1217
    :cond_1
    :goto_0
    return-object v3

    .line 1206
    :cond_2
    const-string v3, ""

    .line 1207
    .local v3, ret:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1208
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/Pen;

    .line 1209
    .local v2, pen:Lcom/htc/painting/penmenu/Pen;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/Pen;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1212
    .end local v2           #pen:Lcom/htc/painting/penmenu/Pen;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1213
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ";"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v1, v4, v5

    .line 1214
    .local v1, len:I
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
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
    .line 1015
    .local p2, defValue:Ljava/lang/Object;,"TT;"
    if-nez p2, :cond_0

    .line 1016
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "no default value specified!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1019
    :cond_0
    const-string v0, "PenManager"

    .line 1021
    .local v0, prefName:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1022
    .local v1, records:Landroid/content/SharedPreferences;
    move-object v2, p2

    .line 1023
    .local v2, value:Ljava/lang/Object;
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 1024
    check-cast p2, Ljava/lang/Boolean;

    .end local p2           #defValue:Ljava/lang/Object;,"TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1040
    .end local v2           #value:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v2

    .line 1026
    .restart local v2       #value:Ljava/lang/Object;
    .restart local p2       #defValue:Ljava/lang/Object;,"TT;"
    :cond_2
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1027
    check-cast p2, Ljava/lang/String;

    .end local p2           #defValue:Ljava/lang/Object;,"TT;"
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, value:Ljava/lang/String;
    goto :goto_0

    .line 1029
    .local v2, value:Ljava/lang/Object;
    .restart local p2       #defValue:Ljava/lang/Object;,"TT;"
    :cond_3
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 1030
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

    .line 1032
    .local v2, value:Ljava/lang/Object;
    .restart local p2       #defValue:Ljava/lang/Object;,"TT;"
    :cond_4
    instance-of v3, p2, Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 1033
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

.method declared-synchronized getPenTypeResource(ILcom/htc/painting/penmenu/PenManager$PenTypeResources;Landroid/content/Context;)Z
    .locals 8
    .parameter "penSetType"
    .parameter "outResources"
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 438
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/htc/painting/penmenu/PenManager;->mPenSetType:I

    .line 439
    const/4 v3, 0x0

    .line 440
    .local v3, isSimplePen:Z
    iget v7, p0, Lcom/htc/painting/penmenu/PenManager;->mPenSetType:I

    if-eqz v7, :cond_0

    .line 441
    const/4 v3, 0x1

    .line 444
    :cond_0
    iget-object v7, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 445
    invoke-direct {p0, p3}, Lcom/htc/painting/penmenu/PenManager;->getCurrentPen(Landroid/content/Context;)Lcom/htc/painting/penmenu/Pen;

    move-result-object v5

    .line 446
    .local v5, pen:Lcom/htc/painting/penmenu/Pen;
    if-eqz v5, :cond_4

    .line 447
    iput-object v5, p2, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    .line 455
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/PenType;

    .line 456
    .local v4, item:Lcom/htc/painting/penmenu/PenType;
    iget-object v6, p2, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;->mPenTypeList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 438
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isSimplePen:Z
    .end local v4           #item:Lcom/htc/painting/penmenu/PenType;
    .end local v5           #pen:Lcom/htc/painting/penmenu/Pen;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 459
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #isSimplePen:Z
    .restart local v5       #pen:Lcom/htc/painting/penmenu/Pen;
    :cond_1
    :try_start_1
    invoke-direct {p0, p3}, Lcom/htc/painting/penmenu/PenManager;->loadMostRecentPenTypeConfig(Landroid/content/Context;)V

    .line 460
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenManager;->mMostRecentPenTypeConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/Pen;

    .line 461
    .local v0, config:Lcom/htc/painting/penmenu/Pen;
    iget-object v6, p2, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;->mMostRecentConfig:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 464
    .end local v0           #config:Lcom/htc/painting/penmenu/Pen;
    :cond_2
    invoke-direct {p0, v3, p3}, Lcom/htc/painting/penmenu/PenManager;->getHistoryPens(ZLandroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/Pen;

    .line 465
    .local v1, historyPen:Lcom/htc/painting/penmenu/Pen;
    iget-object v6, p2, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;->mHistoryPenList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 470
    .end local v1           #historyPen:Lcom/htc/painting/penmenu/Pen;
    :cond_3
    const/4 v6, 0x1

    .line 476
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #pen:Lcom/htc/painting/penmenu/Pen;
    :cond_4
    monitor-exit p0

    return v6
.end method

.method hasPenDownAfterSetupWizard(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 589
    const/4 v0, 0x1

    return v0
.end method

.method initPenTypes(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeLoadingHandler:Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;

    if-nez v2, :cond_1

    .line 296
    new-instance v2, Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeLoadingThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;-><init>(Lcom/htc/painting/penmenu/PenManager;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeLoadingHandler:Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;

    .line 304
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeLoadingHandler:Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;

    invoke-virtual {v2, v1}, Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;->removeMessages(I)V

    .line 305
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeLoadingHandler:Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;

    invoke-virtual {v2, v1}, Lcom/htc/painting/penmenu/PenManager$PenTypeLoadingHandler;->sendEmptyMessage(I)Z

    .line 307
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenManager;->mPenServiceReveiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 308
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.htc.pen.refreshed"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, intentfilter:Landroid/content/IntentFilter;
    new-instance v2, Lcom/htc/painting/penmenu/PenManager$1;

    invoke-direct {v2, p0}, Lcom/htc/painting/penmenu/PenManager$1;-><init>(Lcom/htc/painting/penmenu/PenManager;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenManager;->mPenServiceReveiver:Landroid/content/BroadcastReceiver;

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenManager;->mPenServiceReveiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 327
    .end local v0           #intentfilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return v1

    .line 301
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method isFirstCreate(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 897
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->isFirstCreateLocal(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method isPromptHowToShowPenMenu(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 889
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->isPromptHowToShowPenMenuLocal(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method isUseGlobalPens(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 572
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_attr_for_each_app"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 575
    .local v0, ret:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
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

    .line 1076
    if-nez p2, :cond_1

    .line 1077
    const-string v0, "PenManager"

    const-string v2, "queryGlobalSetting - no default value specified!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_0
    :goto_0
    return-object v8

    .line 1081
    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "com.htc.penmenu"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1084
    .local v1, queryUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 1085
    .local v7, cursor:Landroid/database/Cursor;
    move-object v8, p2

    .line 1087
    .local v8, ret:Ljava/lang/Object;,"TT;"
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "where penset_type = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v9, p0, Lcom/htc/painting/penmenu/PenManager;->mPenSetType:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1091
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1092
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1093
    invoke-interface {v7, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1094
    .local v6, column_index:I
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 1095
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1113
    .end local v6           #column_index:I
    .end local v8           #ret:Ljava/lang/Object;,"TT;"
    :cond_2
    :goto_1
    if-eqz v7, :cond_0

    .line 1114
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1097
    .restart local v6       #column_index:I
    .restart local v8       #ret:Ljava/lang/Object;,"TT;"
    :cond_3
    :try_start_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1098
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, ret:Ljava/lang/String;,"TT;"
    goto :goto_1

    .line 1100
    .local v8, ret:Ljava/lang/Object;,"TT;"
    :cond_4
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 1101
    new-instance v8, Ljava/lang/Integer;

    .end local v8           #ret:Ljava/lang/Object;,"TT;"
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    .local v8, ret:Ljava/lang/Integer;,"TT;"
    goto :goto_1

    .line 1103
    .local v8, ret:Ljava/lang/Object;,"TT;"
    :cond_5
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 1104
    new-instance v8, Ljava/lang/Float;

    .end local v8           #ret:Ljava/lang/Object;,"TT;"
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-direct {v8, v0}, Ljava/lang/Float;-><init>(F)V

    .local v8, ret:Ljava/lang/Float;,"TT;"
    goto :goto_1

    .line 1107
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

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1113
    .end local v6           #column_index:I
    .end local v8           #ret:Ljava/lang/Object;,"TT;"
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    .line 1114
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method saveCurrentPen(Lcom/htc/painting/penmenu/Pen;ILandroid/content/Context;)Z
    .locals 4
    .parameter "currentPen"
    .parameter "orderInHistory"
    .parameter "context"

    .prologue
    .line 685
    if-nez p1, :cond_1

    .line 686
    const-string v1, "PenManager"

    const-string v2, "saveCurrentPen - can\'t save null pen!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v0, 0x0

    .line 701
    :cond_0
    :goto_0
    return v0

    .line 690
    :cond_1
    const/4 v0, 0x0

    .line 691
    .local v0, ret:Z
    invoke-virtual {p0, p3}, Lcom/htc/painting/penmenu/PenManager;->isUseGlobalPens(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 692
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/painting/penmenu/PenManager;->saveCurrentPenGlobal(Lcom/htc/painting/penmenu/Pen;ILandroid/content/Context;)Z

    move-result v0

    .line 698
    :goto_1
    if-nez v0, :cond_0

    .line 699
    const-string v1, "PenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveCurrentPen as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->getUniqueName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 695
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/painting/penmenu/PenManager;->saveCurrentPenLocal(Lcom/htc/painting/penmenu/Pen;ILandroid/content/Context;)Z

    move-result v0

    goto :goto_1
.end method

.method saveFirstCreate(ZLandroid/content/Context;)Z
    .locals 1
    .parameter "isFirst"
    .parameter "context"

    .prologue
    .line 901
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu/PenManager;->saveFirstCreateLocal(ZLandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method saveHistoryPens(Ljava/util/List;Landroid/content/Context;)Z
    .locals 3
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 779
    .local p1, pens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/Pen;>;"
    if-nez p1, :cond_1

    .line 780
    const-string v1, "PenManager"

    const-string v2, "saveHistoryPens - pen list is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/4 v0, 0x0

    .line 795
    :cond_0
    :goto_0
    return v0

    .line 784
    :cond_1
    const/4 v0, 0x0

    .line 785
    .local v0, ret:Z
    invoke-virtual {p0, p2}, Lcom/htc/painting/penmenu/PenManager;->isUseGlobalPens(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 786
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->toHistoryString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/htc/painting/penmenu/PenManager;->saveHistoryPensGlobal(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 792
    :goto_1
    if-nez v0, :cond_0

    .line 793
    const-string v1, "PenManager"

    const-string v2, "saveHistoryPens failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 789
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->toHistoryString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/htc/painting/penmenu/PenManager;->saveHistoryPensLocal(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_1
.end method

.method saveMostRecentPenTypeConfig(Ljava/util/List;Landroid/content/Context;)Z
    .locals 3
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 874
    .local p1, pens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/Pen;>;"
    if-nez p1, :cond_0

    .line 875
    const-string v1, "PenManager"

    const-string v2, "saveHistoryPens - pen list is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const/4 v0, 0x0

    .line 885
    :goto_0
    return v0

    .line 879
    :cond_0
    const/4 v0, 0x0

    .line 880
    .local v0, ret:Z
    invoke-virtual {p0, p2}, Lcom/htc/painting/penmenu/PenManager;->isUseGlobalPens(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 881
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->toHistoryString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/htc/painting/penmenu/PenManager;->saveMostRecentPenTypeConfigGlobal(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 883
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenManager;->toHistoryString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/htc/painting/penmenu/PenManager;->saveMostRecentPenTypeConfigLocal(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method savePromptHowToShowPenMenu(ZLandroid/content/Context;)Z
    .locals 1
    .parameter "show"
    .parameter "context"

    .prologue
    .line 893
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu/PenManager;->savePromptHowToShowPenMenuLocal(ZLandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method setCleanMode(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/PenManager;->mCleanMode:Z

    .line 226
    return-void
.end method

.method setPenTypeLoadingListener(Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenManager;->mPenTypeLoadingListener:Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;

    .line 217
    return-void
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

    .line 1048
    if-nez p2, :cond_0

    .line 1071
    .end local p2           #value:Ljava/lang/Object;,"TT;"
    :goto_0
    return v3

    .line 1051
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_0
    const-string v1, "PenManager"

    .line 1053
    .local v1, prefName:Ljava/lang/String;
    invoke-virtual {p3, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1054
    .local v2, records:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1055
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 1056
    check-cast p2, Ljava/lang/Boolean;

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1068
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1071
    const/4 v3, 0x1

    goto :goto_0

    .line 1058
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_2
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1059
    check-cast p2, Ljava/lang/String;

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1061
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_3
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 1062
    check-cast p2, Ljava/lang/Integer;

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1064
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_4
    instance-of v3, p2, Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 1065
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

    .line 1122
    if-nez p2, :cond_0

    .line 1123
    const-string v3, "PenManager"

    const-string v5, "updateGlobalSetting - no save value specified!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    .end local p2           #value:Ljava/lang/Object;,"TT;"
    :goto_0
    return v4

    .line 1126
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_0
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "content"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "com.htc.penmenu"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1129
    .local v0, updateUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1130
    .local v2, values:Landroid/content/ContentValues;
    instance-of v5, p2, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    .line 1131
    check-cast p2, Ljava/lang/Boolean;

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1147
    :goto_1
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "where penset_type = ?"

    new-array v7, v3, [Ljava/lang/String;

    iget v8, p0, Lcom/htc/painting/penmenu/PenManager;->mPenSetType:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v0, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1149
    .local v1, updated:I
    if-ne v1, v3, :cond_5

    :goto_2
    move v4, v3

    goto :goto_0

    .line 1133
    .end local v1           #updated:I
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_1
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1134
    check-cast p2, Ljava/lang/String;

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1136
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_2
    instance-of v5, p2, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 1137
    check-cast p2, Ljava/lang/Integer;

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1139
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_3
    instance-of v5, p2, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 1140
    check-cast p2, Ljava/lang/Float;

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 1143
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

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    .restart local v1       #updated:I
    :cond_5
    move v3, v4

    .line 1149
    goto :goto_2
.end method
