.class public Lcom/htc/painting/penmenu15/view/ActionPanel;
.super Lcom/htc/painting/penmenu15/view/CircularPanel;
.source "ActionPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;
.implements Lcom/htc/painting/penmenu15/view/PenTypeSector$OnPenSelectedListener;
.implements Lcom/htc/painting/penmenu15/core/InternalHLConfigListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu15/view/ActionPanel$2;,
        Lcom/htc/painting/penmenu15/view/ActionPanel$OnActionPanelClickedListener;
    }
.end annotation


# static fields
.field private static final ID_CLEAR:I = 0x39

.field private static final ID_ERASER:I = 0x3b

.field private static final ID_HIDE:I = 0x3a

.field private static final ID_HIGHLIGHT:I = 0x3c

.field private static final ID_REDO:I = 0x38

.field private static final ID_UNDO:I = 0x37

.field private static final TAG:Ljava/lang/String; = "ActionPanel"


# instance fields
.field private final INNER_RADIUS:I

.field private final OUTER_RADIUS:I

.field private mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

.field private mButtonStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mClearButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

.field private mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

.field private mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

.field private mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

.field private mHistorySector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

.field private mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private mInitialized:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/view/ActionPanel$OnActionPanelClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPenMenuStateMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

.field private mRedoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

.field private mUndoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

.field private mVisibilityButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    .line 54
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    .line 55
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHistorySector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    .line 56
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mVisibilityButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 57
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mUndoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 58
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mRedoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 59
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mClearButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 60
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 61
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mListeners:Ljava/util/List;

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mInitialized:Z

    .line 97
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mButtonStatus:Ljava/util/HashMap;

    .line 626
    new-instance v1, Lcom/htc/painting/penmenu15/view/ActionPanel$1;

    invoke-direct {v1, p0}, Lcom/htc/painting/penmenu15/view/ActionPanel$1;-><init>(Lcom/htc/painting/penmenu15/view/ActionPanel;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, 0x30d

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->OUTER_RADIUS:I

    .line 76
    const/16 v1, 0x30e

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->INNER_RADIUS:I

    .line 77
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->internalInit(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/CircularPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    .line 54
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    .line 55
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHistorySector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    .line 56
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mVisibilityButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 57
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mUndoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 58
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mRedoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 59
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mClearButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 60
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 61
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mListeners:Ljava/util/List;

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mInitialized:Z

    .line 97
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mButtonStatus:Ljava/util/HashMap;

    .line 626
    new-instance v1, Lcom/htc/painting/penmenu15/view/ActionPanel$1;

    invoke-direct {v1, p0}, Lcom/htc/painting/penmenu15/view/ActionPanel$1;-><init>(Lcom/htc/painting/penmenu15/view/ActionPanel;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, 0x30d

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->OUTER_RADIUS:I

    .line 84
    const/16 v1, 0x30e

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->INNER_RADIUS:I

    .line 85
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->internalInit(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/painting/penmenu15/view/CircularPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    .line 54
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    .line 55
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHistorySector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    .line 56
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mVisibilityButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 57
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mUndoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 58
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mRedoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 59
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mClearButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 60
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 61
    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mListeners:Ljava/util/List;

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mInitialized:Z

    .line 97
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mButtonStatus:Ljava/util/HashMap;

    .line 626
    new-instance v1, Lcom/htc/painting/penmenu15/view/ActionPanel$1;

    invoke-direct {v1, p0}, Lcom/htc/painting/penmenu15/view/ActionPanel$1;-><init>(Lcom/htc/painting/penmenu15/view/ActionPanel;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, 0x30d

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->OUTER_RADIUS:I

    .line 92
    const/16 v1, 0x30e

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->INNER_RADIUS:I

    .line 93
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->internalInit(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/htc/painting/penmenu15/view/ActionPanel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/painting/penmenu15/view/ActionPanel;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->inflateInternal(Landroid/content/Context;)V

    return-void
.end method

.method private addPenHistorySector(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 215
    new-instance v0, Lcom/htc/painting/penmenu15/view/PenTypeSector;

    invoke-direct {v0, p1}, Lcom/htc/painting/penmenu15/view/PenTypeSector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHistorySector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    .line 216
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHistorySector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHistorySector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->getProposedLayOutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHistorySector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->setOnPenSelectedListener(Lcom/htc/painting/penmenu15/view/PenTypeSector$OnPenSelectedListener;)V

    .line 218
    return-void
.end method

.method private inflateInternal(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 111
    const-string v0, "ActionPanel"

    const-string v1, " init ActionPanel "

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mUndoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->addPenHistorySector(Landroid/content/Context;)V

    .line 116
    const/16 v0, 0x30e

    invoke-static {p1, v0}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/Context;I)I

    move-result v8

    .line 117
    .local v8, innerRadius:I
    const/16 v0, 0x30d

    invoke-static {p1, v0}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/Context;I)I

    move-result v9

    .line 118
    .local v9, outerRadius:I
    add-int v0, v8, v9

    div-int/lit8 v4, v0, 0x2

    .line 121
    .local v4, dist:I
    const/16 v7, 0x24

    .line 122
    .local v7, base:I
    const/16 v2, 0x37

    const/16 v3, 0xd8

    const v5, 0x20403b3

    const v6, 0x20802c1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/penmenu15/view/ActionPanel;->makeButton(Landroid/content/Context;IIIII)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mUndoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 123
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mUndoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mUndoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-super {p0, v1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getLayOutParamFor(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 125
    const/16 v2, 0x3a

    const/16 v3, 0xfc

    const v5, 0x20403b5

    const v6, 0x20802c3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/penmenu15/view/ActionPanel;->makeButton(Landroid/content/Context;IIIII)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mVisibilityButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 126
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mVisibilityButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mVisibilityButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-super {p0, v1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getLayOutParamFor(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 128
    const/16 v2, 0x39

    const/16 v3, 0x120

    const v5, 0x20403b4

    const v6, 0x20802bb

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/penmenu15/view/ActionPanel;->makeButton(Landroid/content/Context;IIIII)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mClearButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 129
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mClearButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mClearButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-super {p0, v1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getLayOutParamFor(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 131
    const/16 v2, 0x38

    const/16 v3, 0x144

    const v5, 0x20403b2

    const v6, 0x20802c0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/penmenu15/view/ActionPanel;->makeButton(Landroid/content/Context;IIIII)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mRedoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 132
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mRedoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mRedoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-super {p0, v1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getLayOutParamFor(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 135
    const/16 v2, 0x3b

    const/16 v3, 0xb7

    const v5, 0x20403b7

    const v6, 0x20802bc

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/penmenu15/view/ActionPanel;->makeButton(Landroid/content/Context;IIIII)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 136
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-super {p0, v1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getLayOutParamFor(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 137
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    sget-object v1, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->OPTION_BUTTON_CONTENT_SHIFTS:[I

    aget v1, v1, v10

    sget-object v2, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->OPTION_BUTTON_CONTENT_SHIFTS:[I

    aget v2, v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setViewShifts(II)V

    .line 139
    const/16 v2, 0x3c

    const/16 v3, 0x165

    const v5, 0x20403b8

    const v6, 0x20802bd

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/penmenu15/view/ActionPanel;->makeButton(Landroid/content/Context;IIIII)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 140
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-super {p0, v1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getLayOutParamFor(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 141
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    sget-object v1, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->OPTION_BUTTON_CONTENT_SHIFTS:[I

    aget v1, v1, v10

    sget-object v2, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->OPTION_BUTTON_CONTENT_SHIFTS:[I

    aget v2, v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setViewShifts(II)V

    .line 143
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/ActionPanel;->onButtonStatusChanged()V

    goto/16 :goto_0
.end method

.method private internalInit(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x1

    .line 99
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 101
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mButtonStatus:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mButtonStatus:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mButtonStatus:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mButtonStatus:Ljava/util/HashMap;

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mButtonStatus:Ljava/util/HashMap;

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mButtonStatus:Ljava/util/HashMap;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method private notifyActionPerformed(I)V
    .locals 3
    .parameter "actionId"

    .prologue
    .line 502
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu15/view/ActionPanel$OnActionPanelClickedListener;

    .line 503
    .local v1, listener:Lcom/htc/painting/penmenu15/view/ActionPanel$OnActionPanelClickedListener;
    invoke-interface {v1, p1}, Lcom/htc/painting/penmenu15/view/ActionPanel$OnActionPanelClickedListener;->onActionPanelClicked(I)V

    goto :goto_0

    .line 505
    .end local v1           #listener:Lcom/htc/painting/penmenu15/view/ActionPanel$OnActionPanelClickedListener;
    :cond_0
    return-void
.end method

.method private onButtonStatusChanged()V
    .locals 5

    .prologue
    .line 450
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mButtonStatus:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 451
    .local v0, buttonIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 452
    .local v2, id:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mButtonStatus:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v4, v3}, Lcom/htc/painting/penmenu15/view/ActionPanel;->onButtonStatusChanged(IZ)V

    goto :goto_0

    .line 454
    .end local v2           #id:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private onButtonStatusChanged(IZ)V
    .locals 1
    .parameter "buttonId"
    .parameter "active"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mRedoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    if-nez v0, :cond_0

    .line 447
    :goto_0
    return-void

    .line 433
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 435
    :sswitch_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mUndoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v0, p2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setEnabled(Z)V

    goto :goto_0

    .line 438
    :sswitch_1
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mRedoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v0, p2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setEnabled(Z)V

    goto :goto_0

    .line 441
    :sswitch_2
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mClearButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v0, p2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setEnabled(Z)V

    goto :goto_0

    .line 444
    :sswitch_3
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mVisibilityButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v0, p2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setEnabled(Z)V

    goto :goto_0

    .line 433
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_2
        0x190 -> :sswitch_1
    .end sparse-switch
.end method

.method private onHighlightProvisionChanged()V
    .locals 4

    .prologue
    .line 598
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mPenMenuStateMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->isHighlightEnabled()Z

    move-result v0

    .line 599
    .local v0, enabled:Z
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v2, v0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setEnabled(Z)V

    .line 602
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/core/PenType;->isHighlighter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->getItem(I)Lcom/htc/painting/penmenu15/core/PenRepresentation;

    move-result-object v1

    .line 605
    .local v1, pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->setPenToCurPenContainer(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 609
    .end local v1           #pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :cond_0
    return-void
.end method

.method private setPenHistory(Ljava/util/List;II)V
    .locals 8
    .parameter
    .parameter "includeSet"
    .parameter "excludeSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, types:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    new-instance v0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHistorySector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    const/4 v4, 0x4

    iget v7, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->INNER_RADIUS:I

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Landroid/graphics/drawable/Drawable$Callback;IIII)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    .line 210
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHistorySector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->setAdapter(Lcom/htc/painting/penmenu15/view/PenTypeAdapter;)V

    .line 211
    return-void
.end method

.method private setPenToCurPenContainer(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V
    .locals 2
    .parameter "selectedPen"

    .prologue
    .line 566
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mPenMenuStateMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->findPenAndApply(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Lcom/htc/painting/penmenu15/core/PenRepresentation;

    move-result-object v0

    .line 567
    .local v0, target:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v1, v0}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->setPenRepresentation(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 570
    :cond_0
    return-void
.end method

.method private setupPenButtons(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, types:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 582
    invoke-static {p1}, Lcom/htc/painting/penmenu15/PenManager;->findEraser(Ljava/util/List;)Lcom/htc/painting/penmenu15/core/PenRepresentation;

    move-result-object v0

    .line 583
    .local v0, eraser:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    invoke-static {p1}, Lcom/htc/painting/penmenu15/PenManager;->findHighLighter(Ljava/util/List;)Lcom/htc/painting/penmenu15/core/PenRepresentation;

    move-result-object v1

    .line 585
    .local v1, highlighter:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setEnabled(Z)V

    .line 586
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mEraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v2, v0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setTag(Ljava/lang/Object;)V

    .line 587
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setEnabled(Z)V

    .line 588
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v2, v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setTag(Ljava/lang/Object;)V

    .line 589
    return-void

    :cond_0
    move v2, v4

    .line 585
    goto :goto_0

    :cond_1
    move v3, v4

    .line 587
    goto :goto_1
.end method

.method private toAngle(FF)D
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 393
    neg-float p2, p2

    .line 395
    float-to-double v4, p2

    float-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 396
    .local v0, arc:D
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 398
    .local v2, degree:D
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    .line 399
    const-wide v4, 0x4076800000000000L

    add-double/2addr v2, v4

    .line 401
    :cond_0
    return-wide v2
.end method

.method private toRadius(FF)D
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 406
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private updateStrokeVisibilityButton(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 509
    if-eqz p1, :cond_0

    const v1, 0x20403b5

    .line 510
    .local v1, textRes:I
    :goto_0
    if-eqz p1, :cond_1

    const v0, 0x20802c3

    .line 511
    .local v0, iconRes:I
    :goto_1
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mVisibilityButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v2, v1, v0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setLabel(II)V

    .line 512
    return-void

    .line 509
    .end local v0           #iconRes:I
    .end local v1           #textRes:I
    :cond_0
    const v1, 0x20403b6

    goto :goto_0

    .line 510
    .restart local v1       #textRes:I
    :cond_1
    const v0, 0x20802be

    goto :goto_1
.end method


# virtual methods
.method public addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0
    .parameter "button"
    .parameter "params"

    .prologue
    .line 275
    invoke-super {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/CircularPanel;->addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 276
    invoke-virtual {p1, p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    return-void
.end method

.method public addOnActionPanelClickedListener(Lcom/htc/painting/penmenu15/view/ActionPanel$OnActionPanelClickedListener;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    return-void
.end method

.method public getButtonPoint(I)Landroid/graphics/Point;
    .locals 4
    .parameter "elementId"

    .prologue
    .line 364
    const-string v1, "ActionPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mActionPanel visibility:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/ActionPanel;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 368
    .local v0, ret:Landroid/graphics/Point;
    sparse-switch p1, :sswitch_data_0

    .line 387
    :goto_0
    return-object v0

    .line 370
    :sswitch_0
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mUndoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getButtonPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 371
    goto :goto_0

    .line 373
    :sswitch_1
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mRedoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getButtonPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 374
    goto :goto_0

    .line 376
    :sswitch_2
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mClearButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getButtonPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 377
    goto :goto_0

    .line 379
    :sswitch_3
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mVisibilityButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getButtonPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 380
    goto :goto_0

    .line 382
    :sswitch_4
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getButtonPoint()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0

    .line 368
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_2
        0x190 -> :sswitch_1
    .end sparse-switch
.end method

.method public getHistoryPens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->getPens()Ljava/util/List;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMotionEvent(ILandroid/view/MotionEvent;)Z
    .locals 11
    .parameter "elementId"
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 295
    const/4 v5, 0x0

    .line 298
    .local v5, ret:Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/htc/painting/penmenu15/view/ActionPanel;->toRadius(FF)D

    move-result-wide v3

    .line 299
    .local v3, ra:D
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/htc/painting/penmenu15/view/ActionPanel;->toAngle(FF)D

    move-result-wide v0

    .line 301
    .local v0, aa:D
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 302
    .local v2, location:[I
    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu15/view/ActionPanel;->getLocationOnScreen([I)V

    .line 305
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    aget v7, v2, v9

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    aget v8, v2, v10

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {p2, v6, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 308
    sparse-switch p1, :sswitch_data_0

    .line 352
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    aget v7, v2, v9

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    aget v8, v2, v10

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {p2, v6, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 356
    return v5

    .line 311
    :sswitch_0
    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mUndoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v6, p2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->contains(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 313
    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mUndoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->performClick()Z

    .line 315
    const/4 v5, 0x1

    goto :goto_0

    .line 319
    :sswitch_1
    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mRedoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v6, p2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->contains(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 321
    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mRedoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->performClick()Z

    .line 322
    const/4 v5, 0x1

    goto :goto_0

    .line 326
    :sswitch_2
    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mClearButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v6, p2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->contains(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 328
    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mClearButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->performClick()Z

    .line 329
    const/4 v5, 0x1

    goto :goto_0

    .line 333
    :sswitch_3
    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mVisibilityButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v6, p2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->contains(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 335
    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mVisibilityButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->performClick()Z

    .line 336
    const/4 v5, 0x1

    goto :goto_0

    .line 340
    :sswitch_4
    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v6, p2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->contains(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 342
    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHLButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->performClick()Z

    .line 343
    const/4 v5, 0x1

    goto :goto_0

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_2
        0x190 -> :sswitch_1
    .end sparse-switch
.end method

.method public initialize(Lcom/htc/painting/penmenu15/core/PenMenuStateManager;II)V
    .locals 2
    .parameter "manager"
    .parameter "includeSet"
    .parameter "excludeSet"

    .prologue
    .line 181
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mInitialized:Z

    .line 183
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->inflateInternal(Landroid/content/Context;)V

    .line 185
    invoke-virtual {p1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->getPenTypes()Ljava/util/List;

    move-result-object v0

    .line 187
    .local v0, types:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    invoke-direct {p0, v0, p2, p3}, Lcom/htc/painting/penmenu15/view/ActionPanel;->setPenHistory(Ljava/util/List;II)V

    .line 188
    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu15/view/ActionPanel;->setupPenButtons(Ljava/util/List;)V

    .line 189
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mPenMenuStateMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    .line 192
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/ActionPanel;->onHighlightProvisionChanged()V

    .line 193
    invoke-virtual {p1, p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->addInternalHighlightListener(Lcom/htc/painting/penmenu15/core/InternalHLConfigListener;)V

    .line 194
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mPenMenuStateMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->isHighlightEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    sget-object v1, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;->PROVISION:Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->onInternalHighlightConfigChanged(Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;)V

    .line 197
    :cond_0
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mInitialized:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "clicked: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 497
    :goto_0
    const-string v3, "ActionPanel"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void

    .line 467
    :pswitch_0
    const/16 v3, 0x64

    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu15/view/ActionPanel;->notifyActionPerformed(I)V

    .line 468
    const-string v3, "UNDO"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 471
    :pswitch_1
    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu15/view/ActionPanel;->notifyActionPerformed(I)V

    .line 472
    const-string v3, "REDO"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 475
    :pswitch_2
    const/16 v3, 0x12c

    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu15/view/ActionPanel;->notifyActionPerformed(I)V

    .line 476
    const-string v3, "CLEAR"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 479
    :pswitch_3
    const/16 v3, 0xc8

    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu15/view/ActionPanel;->notifyActionPerformed(I)V

    .line 480
    const-string v3, "HIDE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 483
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 484
    .local v2, pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    if-eqz v2, :cond_0

    .line 485
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v3, v2}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->setPenRepresentation(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 487
    :cond_0
    const-string v3, "ERASER"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 490
    .end local v2           #pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 491
    .local v1, highlighter:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    if-eqz v1, :cond_1

    .line 492
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v3, v1}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->setPenRepresentation(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 494
    :cond_1
    const-string v3, "HIGHLIGHT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCurrentPenChanged(Ljava/lang/String;Lcom/htc/painting/penmenu15/core/PenRepresentation;Lcom/htc/painting/penmenu15/core/PenRepresentation;)V
    .locals 5
    .parameter "key"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 540
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    if-eqz v1, :cond_1

    .line 541
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->getPenPositionData()Ljava/util/List;

    move-result-object v0

    .line 544
    .local v0, oldPositionData:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;>;"
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    invoke-virtual {v1, p3}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->removePen(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z

    .line 546
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getLastUsedTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    invoke-virtual {v1, p2}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->addPenToPenHistory(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->playTransitionAnimation(Ljava/util/List;)V

    .line 551
    .end local v0           #oldPositionData:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;>;"
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHistorySector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->refresh()V

    .line 553
    return-void
.end method

.method public onInternalHighlightConfigChanged(Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 617
    sget-object v0, Lcom/htc/painting/penmenu15/view/ActionPanel$2;->$SwitchMap$com$htc$painting$penmenu15$core$InternalHLConfigListener$CHANGE_TYPE:[I

    invoke-virtual {p1}, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 623
    :goto_0
    return-void

    .line 619
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/ActionPanel;->onHighlightProvisionChanged()V

    goto :goto_0

    .line 617
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 578
    invoke-super/range {p0 .. p5}, Lcom/htc/painting/penmenu15/view/CircularPanel;->onLayout(ZIIII)V

    .line 579
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/ActionPanel;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 524
    .local v0, bkg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 526
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 529
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/CircularPanel;->onMeasure(II)V

    .line 530
    return-void
.end method

.method public onPenTypeSelected(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V
    .locals 3
    .parameter "selectedPen"

    .prologue
    .line 561
    const-string v0, "ActionPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPenTypeSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->setPenToCurPenContainer(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 563
    return-void
.end method

.method public releaseResources()V
    .locals 3

    .prologue
    .line 259
    const-string v0, "ActionPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ActionPanel.releaseResources()   , in pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/ActionPanel;->removeAllViews()V

    .line 263
    return-void
.end method

.method public removeOnActionPanelClickedListener(Lcom/htc/painting/penmenu15/view/ActionPanel$OnActionPanelClickedListener;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    return-void
.end method

.method public setButtonActive(IZ)V
    .locals 3
    .parameter "actionId"
    .parameter "active"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mButtonStatus:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/ActionPanel;->onButtonStatusChanged(IZ)V

    .line 428
    return-void
.end method

.method public setCurrentPen(Lcom/htc/painting/penmenu15/core/CurrentPenContainer;)V
    .locals 2
    .parameter "curPenContainer"

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->removeCurrentPenChangedListener(Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;)V

    .line 168
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    .line 169
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->addCurrentPenChangedListener(Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;)V

    .line 171
    const-string v0, "all_config"

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->onCurrentPenChanged(Ljava/lang/String;Lcom/htc/painting/penmenu15/core/PenRepresentation;Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 172
    return-void
.end method

.method public setHistoryPens(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, pens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    if-nez v2, :cond_1

    .line 227
    const-string v2, "ActionPanel"

    const-string v3, "trying to update history Pens while mAdapter is null: abort operation for now! "

    invoke-static {v2, v3}, Lcom/htc/painting/penmenu15/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    return-void

    .line 231
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, j:I
    :goto_0
    if-lez v1, :cond_0

    .line 232
    add-int/lit8 v2, v1, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 235
    .local v0, hPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int/lit8 v4, v1, 0x5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->markLastUsed(J)V

    .line 236
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mAdapter:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->addPenToPenHistory(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 237
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mHistorySector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->refresh()V

    .line 231
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public updateButtons(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;Z)V
    .locals 2
    .parameter "paintingView"
    .parameter "strokeVisible"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mUndoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-interface {p1}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->canUndo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setEnabled(Z)V

    .line 415
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ActionPanel;->mRedoButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-interface {p1}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->canRedo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setEnabled(Z)V

    .line 416
    invoke-direct {p0, p2}, Lcom/htc/painting/penmenu15/view/ActionPanel;->updateStrokeVisibilityButton(Z)V

    .line 417
    return-void
.end method
