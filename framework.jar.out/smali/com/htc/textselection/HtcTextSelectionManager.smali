.class public Lcom/htc/textselection/HtcTextSelectionManager;
.super Ljava/lang/Object;
.source "HtcTextSelectionManager.java"

# interfaces
.implements Landroid/text/method/MovementMethod;
.implements Landroid/text/method/TextSelectionMovementMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;
    }
.end annotation


# static fields
.field public static final ENABLED:Z = true

.field public static final FLAG_END_BY_OUTSIDE_TOUCH:I = 0x8

.field public static final FLAG_INPUT_TYPE_NULL_SELECTION:I = 0x4

.field public static final FLAG_NON_EDITABLE_SELECTION:I = 0x1

.field public static final FLAG_SHOW_QUICK_ACTION:I = 0x10

.field public static final FLAG_TRIGGER_BY_LONG_CLICK:I = 0x2

.field private static HTC_SKIN_ENABLED:Z = false

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_URL:I = 0x1020023

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_LOOKUP:I = 0x54d

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_SHARE:I = 0x54e

.field private static final ID_START_SELECTING_TEXT:I = 0x1020028

.field private static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field private static icon_copy:Landroid/graphics/drawable/Drawable;

.field private static icon_cut:Landroid/graphics/drawable/Drawable;

.field private static icon_ime_switch:Landroid/graphics/drawable/Drawable;

.field private static icon_lookup:Landroid/graphics/drawable/Drawable;

.field private static icon_open_link:Landroid/graphics/drawable/Drawable;

.field private static icon_paste:Landroid/graphics/drawable/Drawable;

.field private static icon_select:Landroid/graphics/drawable/Drawable;

.field private static icon_select_all:Landroid/graphics/drawable/Drawable;

.field private static icon_share:Landroid/graphics/drawable/Drawable;

.field private static isPasteWindow:Z

.field private static mAnchorBar:Landroid/graphics/drawable/Drawable;

.field private static mAnchorBarTop:Landroid/graphics/drawable/Drawable;

.field private static mAutoScroller:Lcom/htc/textselection/AutoScroller;

.field private static mMagnifier:Lcom/htc/textselection/Magnifier;

.field private static mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

.field private static mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

.field private static mSkinName:Ljava/lang/String;

.field private static sInstance:Lcom/htc/textselection/HtcTextSelectionManager;

.field private static str_lookup:Ljava/lang/String;


# instance fields
.field private ACTION_BAR_HEIGHT:I

.field private final MSG_FLY_POST_ANCHOR_TO_END:I

.field private final MSG_FLY_PRIOR_ANCHOR_TO_START:I

.field private STATUS_BAR_HEIGHT:I

.field private mCurrentView:Landroid/widget/TextView;

.field private mPreMenuSize:I

.field private mPrivateHandler:Landroid/os/Handler;

.field private mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWindowManager:Landroid/view/WindowManager;

.field suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow:Z

    .line 391
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/textselection/HtcTextSelectionManager;->HTC_SKIN_ENABLED:Z

    .line 393
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    .line 677
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->MSG_FLY_PRIOR_ANCHOR_TO_START:I

    .line 678
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->MSG_FLY_POST_ANCHOR_TO_END:I

    .line 694
    new-instance v0, Lcom/htc/textselection/HtcTextSelectionManager$2;

    invoke-direct {v0, p0}, Lcom/htc/textselection/HtcTextSelectionManager$2;-><init>(Lcom/htc/textselection/HtcTextSelectionManager;)V

    iput-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Lcom/htc/textselection/AutoScroller;

    invoke-direct {v0}, Lcom/htc/textselection/AutoScroller;-><init>()V

    sput-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    .line 96
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-direct {v0}, Lcom/htc/textselection/FetchSuggestionFromIME;-><init>()V

    iput-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    .line 99
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/textselection/HtcTextSelectionManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mVisibleRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkSkinChanged(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 395
    sget-boolean v2, Lcom/htc/textselection/HtcTextSelectionManager;->HTC_SKIN_ENABLED:Z

    if-nez v2, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v1

    .line 397
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 398
    .local v0, currentSkin:Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 399
    invoke-virtual {p0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 400
    sput-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    .line 401
    sput-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    .line 402
    sput-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    .line 403
    sput-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    .line 404
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private doCJKSelection(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 6
    .parameter "tv"
    .parameter "sp"

    .prologue
    const/4 v5, 0x1

    .line 663
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 664
    .local v2, start:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 666
    .local v0, end:I
    iget-object v3, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 667
    sub-int v3, v0, v2

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 670
    const-string v3, "1"

    invoke-direct {p0, p1, v2, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->findChineseWord(Landroid/widget/TextView;ILjava/lang/String;)[I

    move-result-object v1

    .line 672
    .local v1, ret:[I
    if-eqz v1, :cond_0

    .line 673
    const/4 v3, 0x0

    aget v3, v1, v3

    aget v4, v1, v5

    invoke-static {p2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 675
    .end local v1           #ret:[I
    :cond_0
    return-void
.end method

.method private findChineseWord(Landroid/widget/TextView;ILjava/lang/String;)[I
    .locals 4
    .parameter "view"
    .parameter "offset"
    .parameter "lang"

    .prologue
    .line 643
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 644
    .local v1, text:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, ret:[I
    iget-object v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v2}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    iget-object v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v2, v1, p2, p3}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/CharSequence;ILjava/lang/String;)[I

    move-result-object v0

    .line 652
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    if-ne v2, v3, :cond_0

    .line 653
    const/4 v0, 0x0

    .line 656
    :cond_0
    iget-object v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 658
    return-object v0
.end method

.method public static getInstance()Lcom/htc/textselection/HtcTextSelectionManager;
    .locals 1

    .prologue
    .line 468
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->sInstance:Lcom/htc/textselection/HtcTextSelectionManager;

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-direct {v0}, Lcom/htc/textselection/HtcTextSelectionManager;-><init>()V

    sput-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->sInstance:Lcom/htc/textselection/HtcTextSelectionManager;

    .line 471
    :cond_0
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->sInstance:Lcom/htc/textselection/HtcTextSelectionManager;

    return-object v0
.end method

.method public static getInstanceIfExist()Lcom/htc/textselection/HtcTextSelectionManager;
    .locals 1

    .prologue
    .line 476
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->sInstance:Lcom/htc/textselection/HtcTextSelectionManager;

    return-object v0
.end method

.method private getOutsideTouchListener()Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;
    .locals 1

    .prologue
    .line 622
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Lcom/htc/textselection/HtcTextSelectionManager$1;

    invoke-direct {v0, p0}, Lcom/htc/textselection/HtcTextSelectionManager$1;-><init>(Lcom/htc/textselection/HtcTextSelectionManager;)V

    sput-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    .line 635
    :cond_0
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    return-object v0
.end method

.method private loadIconDrawable(Landroid/content/Context;)V
    .locals 7
    .parameter "ctx"

    .prologue
    const v6, 0x208025d

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 145
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x2080248

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_copy:Landroid/graphics/drawable/Drawable;

    .line 146
    const v5, 0x2080257

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_paste:Landroid/graphics/drawable/Drawable;

    .line 147
    const v5, 0x2080249

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_cut:Landroid/graphics/drawable/Drawable;

    .line 148
    const v5, 0x208025a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_lookup:Landroid/graphics/drawable/Drawable;

    .line 149
    const v5, 0x20800e4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_share:Landroid/graphics/drawable/Drawable;

    .line 150
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select:Landroid/graphics/drawable/Drawable;

    .line 151
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select_all:Landroid/graphics/drawable/Drawable;

    .line 152
    const v5, 0x2080253

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_ime_switch:Landroid/graphics/drawable/Drawable;

    .line 155
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 158
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string/jumbo v6, "http:"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    .local v4, target:Landroid/content/Intent;
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 160
    .local v1, mainActivitiesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 161
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 162
    .local v0, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_open_link:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v0           #info:Landroid/content/pm/ResolveInfo;
    .end local v1           #mainActivitiesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #target:Landroid/content/Intent;
    :cond_0
    :goto_0
    const v5, 0x1040478

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->str_lookup:Ljava/lang/String;

    .line 170
    return-void

    .line 164
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private prepareMagnifier(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 102
    sget-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    if-nez v2, :cond_1

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    .local v0, ctx:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    :cond_0
    new-instance v2, Lcom/htc/textselection/Magnifier;

    invoke-direct {v2, v0}, Lcom/htc/textselection/Magnifier;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->STATUS_BAR_HEIGHT:I

    .line 111
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 112
    .local v1, heightValue:Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 114
    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->ACTION_BAR_HEIGHT:I

    .line 119
    .end local v0           #ctx:Landroid/content/Context;
    .end local v1           #heightValue:Landroid/util/TypedValue;
    :cond_1
    sget-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v2}, Lcom/htc/textselection/Magnifier;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v2, p1}, Lcom/htc/textselection/Magnifier;->isParentView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    sget-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v2}, Lcom/htc/textselection/Magnifier;->dismiss()V

    .line 124
    :cond_2
    return-void
.end method

.method private prepareSelectionWindow(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 127
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v1, :cond_1

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    .local v0, ctx:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 132
    :cond_0
    new-instance v1, Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-direct {v1, v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    .line 133
    invoke-direct {p0, v0}, Lcom/htc/textselection/HtcTextSelectionManager;->loadIconDrawable(Landroid/content/Context;)V

    .line 135
    .end local v0           #ctx:Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eq v1, p1, :cond_2

    .line 138
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    .line 140
    :cond_2
    return-void
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x1

    return v0
.end method

.method public canUpdateQuickAction(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 300
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-ne v0, p1, :cond_0

    .line 302
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAutoScroll(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 371
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    invoke-virtual {v0, p1, p2}, Lcom/htc/textselection/AutoScroller;->checkAutoScroll(FF)V

    .line 372
    return-void
.end method

.method public dismissMagnifier()V
    .locals 1

    .prologue
    .line 352
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    if-eqz v0, :cond_0

    .line 353
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v0}, Lcom/htc/textselection/Magnifier;->dismiss()V

    .line 354
    :cond_0
    return-void
.end method

.method public dismissQuickAction(Z)V
    .locals 1
    .parameter "fakeDismiss"

    .prologue
    .line 333
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    if-eqz p1, :cond_1

    .line 335
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->fakeDismiss()V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    goto :goto_0
.end method

.method public findScrollableView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "anchoredView"

    .prologue
    .line 366
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    invoke-virtual {v0, p1}, Lcom/htc/textselection/AutoScroller;->findScrollableView(Landroid/widget/TextView;)V

    .line 367
    return-void
.end method

.method public flyToEnd(Landroid/widget/TextView;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 682
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 686
    :goto_0
    return-void

    .line 683
    :cond_0
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 684
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    .line 685
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x19

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public flyToStart(Landroid/widget/TextView;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 689
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 693
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 691
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 692
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x19

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public getAnchorBarDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const v7, 0x2080302

    .line 411
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 412
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 413
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    .line 414
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 416
    .local v2, res:Landroid/content/res/Resources;
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 417
    :cond_1
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    .line 432
    :goto_0
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 435
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_2
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    return-object v4

    .line 421
    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 422
    .local v3, themeres:Landroid/content/res/Resources;
    const-string/jumbo v4, "text_anchor_bar"

    const-string v5, "drawable"

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 424
    .end local v3           #themeres:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 425
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "HtcCheckableImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No skin package matches with the given name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 428
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 429
    .local v1, idNotFoundEx:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getAnchorBarDrawableTop(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const v7, 0x2080303

    .line 440
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 441
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 442
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    .line 443
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 444
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 445
    .local v2, res:Landroid/content/res/Resources;
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 446
    :cond_1
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    .line 461
    :goto_0
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 464
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_2
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    return-object v4

    .line 450
    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 451
    .local v3, themeres:Landroid/content/res/Resources;
    const-string/jumbo v4, "text_anchor_bar_top"

    const-string v5, "drawable"

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 453
    .end local v3           #themeres:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 454
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "HtcCheckableImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No skin package matches with the given name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 457
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 458
    .local v1, idNotFoundEx:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getCurrentView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMagnifier()Lcom/htc/textselection/Magnifier;
    .locals 1

    .prologue
    .line 361
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    return-object v0
.end method

.method public getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .parameter "ctx"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 387
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mWindowManager:Landroid/view/WindowManager;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 578
    iget-object v3, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 586
    :cond_0
    :goto_0
    return v2

    .line 580
    :cond_1
    iget-object v3, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 581
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 582
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 583
    .local v1, windowParams:Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_0

    .line 586
    .end local v1           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->STATUS_BAR_HEIGHT:I

    goto :goto_0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 0
    .parameter "widget"
    .parameter "text"

    .prologue
    .line 481
    if-eqz p2, :cond_0

    .line 482
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 483
    :cond_0
    return-void
.end method

.method public isAutoScrolling()Z
    .locals 1

    .prologue
    .line 381
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    invoke-virtual {v0}, Lcom/htc/textselection/AutoScroller;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public isPasteWindow()Z
    .locals 1

    .prologue
    .line 175
    sget-boolean v0, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow:Z

    return v0
.end method

.method public onEndSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1
    .parameter "tv"
    .parameter "sp"

    .prologue
    .line 556
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-eqz v0, :cond_0

    .line 557
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    .line 558
    :cond_0
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    if-eqz v0, :cond_1

    .line 559
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v0}, Lcom/htc/textselection/Magnifier;->dismiss()V

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

    if-eqz v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

    invoke-interface {v0, p1}, Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;->onEndSelect(Landroid/widget/TextView;)V

    .line 562
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/textselection/HtcTextSelectionManager;->updateCurrentView(Landroid/widget/TextView;)V

    .line 563
    return-void
.end method

.method public onFocusChanged(Landroid/widget/TextView;ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "tv"
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 608
    return-void
.end method

.method public onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "text"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "text"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method public onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 594
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-eqz v0, :cond_0

    .line 595
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    .line 596
    :cond_0
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    if-eqz v0, :cond_1

    .line 597
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v0}, Lcom/htc/textselection/Magnifier;->dismiss()V

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hideControllers()V

    .line 601
    :cond_2
    return-void
.end method

.method public onStartSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1
    .parameter "tv"
    .parameter "sp"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eq v0, p1, :cond_0

    .line 544
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 545
    invoke-virtual {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->updateCurrentView(Landroid/widget/TextView;)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

    invoke-interface {v0, p1}, Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;->onStartSelect(Landroid/widget/TextView;)V

    .line 550
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/htc/textselection/HtcTextSelectionManager;->doCJKSelection(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 552
    return-void
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 0
    .parameter "widget"
    .parameter "text"
    .parameter "direction"

    .prologue
    .line 513
    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Landroid/widget/TextView;Z)V
    .locals 0
    .parameter "tv"
    .parameter "hasWindowFocus"

    .prologue
    .line 614
    return-void
.end method

.method public prepareHtcPasteWindow(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;ZZ)V
    .locals 5
    .parameter "view"
    .parameter "listener"
    .parameter "context"
    .parameter "canPaste"
    .parameter "showSelectAll"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    .line 182
    sput-boolean v1, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow:Z

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, mMenuSize:I
    if-eqz p4, :cond_5

    move v0, v1

    .line 186
    :goto_0
    if-eqz p5, :cond_6

    :goto_1
    add-int/2addr v0, v1

    .line 187
    iget v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    if-nez v1, :cond_1

    .line 188
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 189
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    .line 191
    :cond_1
    iput v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    .line 193
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v1, :cond_2

    .line 194
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareSelectionWindow(Landroid/view/View;)V

    .line 195
    :cond_2
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->reset()V

    .line 197
    if-eqz p5, :cond_3

    .line 198
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x102001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select_all:Landroid/graphics/drawable/Drawable;

    const v4, 0x104000d

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 199
    :cond_3
    if-eqz p4, :cond_4

    .line 200
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x1020022

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_paste:Landroid/graphics/drawable/Drawable;

    const v4, 0x104000b

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 201
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 185
    goto :goto_0

    :cond_6
    move v1, v2

    .line 186
    goto :goto_1
.end method

.method public prepareQuickActions(Landroid/view/View;Landroid/view/Menu;Landroid/view/View$OnClickListener;)V
    .locals 8
    .parameter "view"
    .parameter "menu"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    .line 245
    sput-boolean v5, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow:Z

    .line 247
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v3

    .line 248
    .local v3, size:I
    iget v4, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    if-ge v3, v4, :cond_0

    .line 249
    invoke-virtual {p0, v5}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 250
    const/4 v4, 0x0

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    .line 252
    :cond_0
    iput v3, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    .line 255
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v4, :cond_1

    .line 256
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareSelectionWindow(Landroid/view/View;)V

    .line 257
    :cond_1
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->reset()V

    .line 259
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 260
    invoke-interface {p2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 261
    .local v2, item:Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 262
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 263
    .local v1, id:I
    sparse-switch v1, :sswitch_data_0

    .line 259
    .end local v1           #id:I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .restart local v1       #id:I
    :sswitch_0
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select_all:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 268
    :sswitch_1
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 271
    :sswitch_2
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_cut:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 274
    :sswitch_3
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_copy:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :sswitch_4
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_paste:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 280
    :sswitch_5
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_open_link:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 283
    :sswitch_6
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_ime_switch:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 286
    :sswitch_7
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->str_lookup:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 287
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->icon_lookup:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->str_lookup:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, p3, v7}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 290
    :sswitch_8
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_share:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 296
    .end local v1           #id:I
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_3
    return-void

    .line 263
    :sswitch_data_0
    .sparse-switch
        0x54d -> :sswitch_7
        0x54e -> :sswitch_8
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_3
        0x1020022 -> :sswitch_4
        0x1020023 -> :sswitch_5
        0x1020024 -> :sswitch_6
        0x1020028 -> :sswitch_1
    .end sparse-switch
.end method

.method public prepareQuickActions(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;ZZZZZ)V
    .locals 5
    .parameter "view"
    .parameter "listener"
    .parameter "context"
    .parameter "canSelectText"
    .parameter "canCut"
    .parameter "canCopy"
    .parameter "canPaste"
    .parameter "isSelectableTextView"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    .line 207
    sput-boolean v2, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow:Z

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, mMenuSize:I
    if-eqz p4, :cond_9

    move v0, v1

    .line 211
    :goto_0
    if-eqz p5, :cond_a

    move v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 212
    if-eqz p6, :cond_b

    move v3, v1

    :goto_2
    add-int/2addr v0, v3

    .line 213
    if-eqz p7, :cond_c

    :goto_3
    add-int/2addr v0, v1

    .line 214
    if-eqz p8, :cond_d

    const/4 v1, 0x2

    :goto_4
    add-int/2addr v0, v1

    .line 215
    iget v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    if-nez v1, :cond_1

    .line 216
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 217
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    .line 219
    :cond_1
    iput v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    .line 222
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v1, :cond_2

    .line 223
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareSelectionWindow(Landroid/view/View;)V

    .line 224
    :cond_2
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->reset()V

    .line 226
    if-eqz p4, :cond_3

    .line 227
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x102001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select_all:Landroid/graphics/drawable/Drawable;

    const v4, 0x104000d

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 228
    :cond_3
    if-eqz p5, :cond_4

    .line 229
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x1020020

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_cut:Landroid/graphics/drawable/Drawable;

    const v4, 0x1040003

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 230
    :cond_4
    if-eqz p6, :cond_5

    .line 231
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x1020021

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_copy:Landroid/graphics/drawable/Drawable;

    const v4, 0x1040001

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 232
    :cond_5
    if-eqz p7, :cond_6

    .line 233
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x1020022

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_paste:Landroid/graphics/drawable/Drawable;

    const v4, 0x104000b

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 234
    :cond_6
    if-eqz p8, :cond_8

    .line 235
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->str_lookup:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 236
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const/16 v2, 0x54d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_lookup:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->str_lookup:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 237
    :cond_7
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const/16 v2, 0x54e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_share:Landroid/graphics/drawable/Drawable;

    const v4, 0x20401ab

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 239
    :cond_8
    return-void

    :cond_9
    move v0, v2

    .line 210
    goto/16 :goto_0

    :cond_a
    move v3, v2

    .line 211
    goto/16 :goto_1

    :cond_b
    move v3, v2

    .line 212
    goto/16 :goto_2

    :cond_c
    move v1, v2

    .line 213
    goto/16 :goto_3

    :cond_d
    move v1, v2

    .line 214
    goto/16 :goto_4
.end method

.method public setFineTune(Z)V
    .locals 1
    .parameter "needFineTune"

    .prologue
    .line 327
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-eqz v0, :cond_0

    .line 328
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0, p1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->setFineTune(Z)V

    .line 329
    :cond_0
    return-void
.end method

.method public setSelectionWatcher(Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;)V
    .locals 0
    .parameter "watcher"

    .prologue
    .line 765
    iput-object p1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

    .line 766
    return-void
.end method

.method public showMagnifier(Landroid/widget/TextView;IIILcom/htc/textselection/Magnifier$TouchingMode;)V
    .locals 6
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "offset"
    .parameter "mode"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareMagnifier(Landroid/view/View;)V

    .line 346
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/textselection/Magnifier;->show(Landroid/widget/TextView;IIILcom/htc/textselection/Magnifier$TouchingMode;)V

    .line 348
    :cond_0
    return-void
.end method

.method public showQuickAction(Landroid/widget/TextView;Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "parent"
    .parameter "r"
    .parameter "flags"

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 321
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    .line 311
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareSelectionWindow(Landroid/view/View;)V

    .line 312
    invoke-virtual {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->updateCurrentView(Landroid/widget/TextView;)V

    .line 313
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_1

    .line 314
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-direct {p0}, Lcom/htc/textselection/HtcTextSelectionManager;->getOutsideTouchListener()Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->setOutsideTouchListener(Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;)V

    .line 318
    :goto_1
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {p0}, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->doNotShowInMiddle(Z)V

    .line 320
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->show(Landroid/view/View;Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 316
    :cond_1
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->setOutsideTouchListener(Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;)V

    goto :goto_1
.end method

.method public stopAutoScroll()V
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    invoke-virtual {v0}, Lcom/htc/textselection/AutoScroller;->stopScroll()V

    .line 377
    return-void
.end method

.method public updateCurrentView(Landroid/widget/TextView;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 567
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eq v0, p1, :cond_1

    .line 568
    iput-object p1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    if-nez p1, :cond_0

    .line 571
    iput-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    .line 572
    iput-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method
