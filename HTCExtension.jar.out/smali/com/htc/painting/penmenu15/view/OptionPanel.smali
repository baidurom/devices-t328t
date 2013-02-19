.class public Lcom/htc/painting/penmenu15/view/OptionPanel;
.super Lcom/htc/painting/penmenu15/view/CircularPanel;
.source "OptionPanel.java"

# interfaces
.implements Lcom/htc/painting/penmenu15/transition/Transitionable;
.implements Lcom/htc/painting/penmenu15/view/Scrollable;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/htc/painting/penmenu15/view/SectorController$OnProgressChangedListener;
.implements Lcom/htc/painting/penmenu15/view/ColorPickerView$OnColorChangedListener;
.implements Lcom/htc/painting/penmenu15/view/PenTypeSector$OnPenSelectedListener;
.implements Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;
.implements Lcom/htc/painting/penmenu15/core/InternalHLConfigListener;
.implements Lcom/htc/painting/penmenu15/view/HighlightColorPicker$OnHLColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu15/view/OptionPanel$2;
    }
.end annotation


# static fields
.field private static final ERASER_BUTTON_POSITION:I = 0xbe

.field private static final HIGHLIGHT_BUTTON_POSITION:I = -0xa

.field private static final ID_COLOR:I = 0x2a

.field private static final ID_PENTYPE:I = 0x2c

.field private static final ID_SIZE:I = 0x2b

.field private static final STATE_COLOR_SECTOR:I = 0x12c

.field private static final STATE_HIGHLIGHT_COLOR_SECTOR:I = 0x12f

.field private static final STATE_NONE:I = 0x134

.field private static final STATE_PENTYPE_SECTOR:I = 0x12e

.field private static final STATE_SIZE_SECTOR:I = 0x12d

.field private static final TAG:Ljava/lang/String; = "PenMenuNew"


# instance fields
.field private final INNER_RADIUS:I

.field private final OUTER_RADIUS:I

.field private mColorButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

.field private mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

.field private mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

.field private mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

.field private mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

.field private mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private mPenMenuStateMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

.field private mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

.field private mSizeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

.field private mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

.field private mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

.field private mTypeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/CircularPanel;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    .line 65
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    .line 66
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    .line 67
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    .line 68
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 69
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 70
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mTypeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 74
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    .line 76
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    .line 79
    new-instance v1, Lcom/htc/painting/penmenu15/transition/StateManager;

    invoke-direct {v1}, Lcom/htc/painting/penmenu15/transition/StateManager;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

    .line 80
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenMenuStateMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    .line 818
    new-instance v1, Lcom/htc/painting/penmenu15/view/OptionPanel$1;

    invoke-direct {v1, p0}, Lcom/htc/painting/penmenu15/view/OptionPanel$1;-><init>(Lcom/htc/painting/penmenu15/view/OptionPanel;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, 0x30d

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->OUTER_RADIUS:I

    .line 89
    const/16 v1, 0x30e

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->INNER_RADIUS:I

    .line 90
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->internalInit(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/CircularPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    .line 65
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    .line 66
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    .line 67
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    .line 68
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 69
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 70
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mTypeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 74
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    .line 76
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    .line 79
    new-instance v1, Lcom/htc/painting/penmenu15/transition/StateManager;

    invoke-direct {v1}, Lcom/htc/painting/penmenu15/transition/StateManager;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

    .line 80
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenMenuStateMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    .line 818
    new-instance v1, Lcom/htc/painting/penmenu15/view/OptionPanel$1;

    invoke-direct {v1, p0}, Lcom/htc/painting/penmenu15/view/OptionPanel$1;-><init>(Lcom/htc/painting/penmenu15/view/OptionPanel;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, 0x30d

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->OUTER_RADIUS:I

    .line 97
    const/16 v1, 0x30e

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->INNER_RADIUS:I

    .line 98
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->internalInit(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/painting/penmenu15/view/CircularPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    .line 65
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    .line 66
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    .line 67
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    .line 68
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 69
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 70
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mTypeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 74
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    .line 76
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    .line 79
    new-instance v1, Lcom/htc/painting/penmenu15/transition/StateManager;

    invoke-direct {v1}, Lcom/htc/painting/penmenu15/transition/StateManager;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

    .line 80
    iput-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenMenuStateMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    .line 818
    new-instance v1, Lcom/htc/painting/penmenu15/view/OptionPanel$1;

    invoke-direct {v1, p0}, Lcom/htc/painting/penmenu15/view/OptionPanel$1;-><init>(Lcom/htc/painting/penmenu15/view/OptionPanel;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, 0x30d

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->OUTER_RADIUS:I

    .line 105
    const/16 v1, 0x30e

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIntValue(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->INNER_RADIUS:I

    .line 106
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->internalInit(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/htc/painting/penmenu15/view/OptionPanel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/painting/penmenu15/view/OptionPanel;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->inflateInternal(Landroid/content/Context;)V

    return-void
.end method

.method private addColorPickerSector(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 276
    new-instance v0, Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    invoke-direct {v0, p1}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    .line 277
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->getProposedLayOutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    return-void
.end method

.method private addHighlightColorSector(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 293
    new-instance v0, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    invoke-direct {v0, p1}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    .line 294
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    const v1, 0x20802e2

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->setBackgroundResource(I)V

    .line 295
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->setOnHLColorSelectedListener(Lcom/htc/painting/penmenu15/view/HighlightColorPicker$OnHLColorSelectedListener;)V

    .line 296
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->getProposedLayOutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    return-void
.end method

.method private addPenTypeSector(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 281
    iget v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->INNER_RADIUS:I

    iget v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->OUTER_RADIUS:I

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 283
    .local v0, dist:I
    new-instance v1, Lcom/htc/painting/penmenu15/view/PenTypeSector;

    invoke-direct {v1, p1}, Lcom/htc/painting/penmenu15/view/PenTypeSector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    .line 284
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    const v2, 0x20802e2

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->setBackgroundResource(I)V

    .line 285
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    const/16 v2, 0xbe

    invoke-virtual {v1, v2, v0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->addEraserButton(II)V

    .line 286
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    const/16 v2, -0xa

    invoke-virtual {v1, v2, v0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->addHLButton(II)V

    .line 287
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->getProposedLayOutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/painting/penmenu15/view/OptionPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    invoke-virtual {v1, p0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->setOnPenSelectedListener(Lcom/htc/painting/penmenu15/view/PenTypeSector$OnPenSelectedListener;)V

    .line 289
    return-void
.end method

.method private addSectorController(Landroid/content/Context;)V
    .locals 6
    .parameter "ctx"

    .prologue
    .line 263
    new-instance v0, Lcom/htc/painting/penmenu15/view/SizeSector;

    invoke-direct {v0, p1}, Lcom/htc/painting/penmenu15/view/SizeSector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    .line 264
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    const v2, 0x20802e1

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu15/view/SizeSector;->setBackgroundResource(I)V

    .line 265
    iget v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->INNER_RADIUS:I

    iget v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->OUTER_RADIUS:I

    iget v3, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->INNER_RADIUS:I

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x7

    add-int v1, v0, v2

    .line 266
    .local v1, btnDist:I
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    const v2, 0x20802df

    const v3, 0x20802de

    iget v4, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->INNER_RADIUS:I

    iget v5, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->OUTER_RADIUS:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    const v5, 0x20802cf

    invoke-virtual/range {v0 .. v5}, Lcom/htc/painting/penmenu15/view/SizeSector;->initialize(IIIII)V

    .line 272
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/view/SizeSector;->getProposedLayOutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/painting/penmenu15/view/OptionPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    return-void
.end method

.method private changeStateTo(IZ)V
    .locals 2
    .parameter "state"
    .parameter "playAnimation"

    .prologue
    .line 562
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/painting/penmenu15/transition/StateManager;->setState(IZ)V

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, activeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
    const/16 v1, 0x12e

    if-ne p1, v1, :cond_1

    .line 566
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mTypeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 573
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->setSelectedButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)V

    .line 574
    return-void

    .line 567
    :cond_1
    const/16 v1, 0x12c

    if-eq p1, v1, :cond_2

    const/16 v1, 0x12f

    if-ne p1, v1, :cond_3

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    goto :goto_0

    .line 570
    :cond_3
    const/16 v1, 0x12d

    if-ne p1, v1, :cond_0

    .line 571
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    goto :goto_0
.end method

.method private currentPenIsEraser()Z
    .locals 2

    .prologue
    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, eraser:Z
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    if-eqz v1, :cond_0

    .line 742
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/PenType;->isEraser()Z

    move-result v0

    .line 744
    :cond_0
    return v0
.end method

.method private currentPenIsHighlighter()Z
    .locals 2

    .prologue
    .line 732
    const/4 v0, 0x0

    .line 733
    .local v0, highlighter:Z
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    if-eqz v1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/PenType;->isHighlighter()Z

    move-result v0

    .line 736
    :cond_0
    return v0
.end method

.method private inflateInternal(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mTypeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->addHighlightColorSector(Landroid/content/Context;)V

    .line 214
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->addSectorController(Landroid/content/Context;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->addPenTypeSector(Landroid/content/Context;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->addColorPickerSector(Landroid/content/Context;)V

    .line 218
    iget v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->INNER_RADIUS:I

    iget v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->OUTER_RADIUS:I

    add-int/2addr v0, v1

    div-int/lit8 v4, v0, 0x2

    .line 220
    .local v4, dist:I
    const/16 v2, 0x2c

    const/16 v3, 0x10e

    const v5, 0x20403ba

    const v6, 0x20802db

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/penmenu15/view/OptionPanel;->makeButton(Landroid/content/Context;IIIII)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mTypeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 222
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mTypeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mTypeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-super {p0, v1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getLayOutParamFor(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 223
    const/16 v2, 0x2b

    const/16 v3, 0x134

    const v5, 0x20403bb

    const v6, 0x20802d8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/penmenu15/view/OptionPanel;->makeButton(Landroid/content/Context;IIIII)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 225
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-super {p0, v1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getLayOutParamFor(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 226
    const/16 v2, 0x2a

    const/16 v3, 0xe8

    const v5, 0x20403b9

    const v6, 0x20802d5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/penmenu15/view/OptionPanel;->makeButton(Landroid/content/Context;IIIII)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    .line 228
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-super {p0, v1}, Lcom/htc/painting/penmenu15/view/CircularPanel;->getLayOutParamFor(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 229
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->setupStateInfo()V

    .line 232
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->setDragDropManager(Lcom/htc/painting/penmenu15/core/DragDropManager;)V

    .line 234
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/transition/StateManager;->getCurrenState()I

    move-result v0

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->startDrag()V

    goto/16 :goto_0
.end method

.method private internalInit(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 110
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 111
    return-void
.end method

.method private setSelectedButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)V
    .locals 2
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    .line 577
    if-nez p1, :cond_0

    .line 584
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mTypeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setColorOn(Z)V

    .line 580
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setColorOn(Z)V

    .line 581
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setColorOn(Z)V

    .line 583
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setColorOn(Z)V

    goto :goto_0
.end method

.method private setupPenButtons(Ljava/util/List;)V
    .locals 7
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
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 151
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->getEraserButton()Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v1

    .line 152
    .local v1, eraserButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
    if-eqz v1, :cond_0

    .line 153
    invoke-static {p1}, Lcom/htc/painting/penmenu15/PenManager;->findEraser(Ljava/util/List;)Lcom/htc/painting/penmenu15/core/PenRepresentation;

    move-result-object v0

    .line 154
    .local v0, eraser:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    if-eqz v0, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v1, v4}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setEnabled(Z)V

    .line 155
    invoke-virtual {v1, v0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setTag(Ljava/lang/Object;)V

    .line 159
    .end local v0           #eraser:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :cond_0
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->getHLButton()Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v3

    .line 160
    .local v3, hlButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
    if-eqz v3, :cond_1

    .line 161
    invoke-static {p1}, Lcom/htc/painting/penmenu15/PenManager;->findHighLighter(Ljava/util/List;)Lcom/htc/painting/penmenu15/core/PenRepresentation;

    move-result-object v2

    .line 162
    .local v2, highlighter:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v3, v5}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setEnabled(Z)V

    .line 163
    invoke-virtual {v3, v2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setTag(Ljava/lang/Object;)V

    .line 166
    .end local v2           #highlighter:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :cond_1
    return-void

    .end local v3           #hlButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
    .restart local v0       #eraser:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :cond_2
    move v4, v6

    .line 154
    goto :goto_0

    .end local v0           #eraser:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .restart local v2       #highlighter:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .restart local v3       #hlButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
    :cond_3
    move v5, v6

    .line 162
    goto :goto_1
.end method

.method private setupStateInfo()V
    .locals 15

    .prologue
    .line 303
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 306
    .local v0, in:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 308
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 311
    .local v1, out:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 314
    new-instance v13, Lcom/htc/painting/penmenu15/transition/ViewConfig;

    const/16 v2, 0x12e

    invoke-direct {v13, v2}, Lcom/htc/painting/penmenu15/transition/ViewConfig;-><init>(I)V

    .line 315
    .local v13, penTypeConfig:Lcom/htc/painting/penmenu15/transition/ViewConfig;
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    const/16 v3, 0x8

    invoke-virtual {v13, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 316
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    const/16 v3, 0x8

    invoke-virtual {v13, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 317
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    const/16 v3, 0x8

    invoke-virtual {v13, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 318
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 319
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

    invoke-virtual {v2, v13}, Lcom/htc/painting/penmenu15/transition/StateManager;->addConfig(Lcom/htc/painting/penmenu15/transition/ViewConfig;)V

    .line 323
    new-instance v14, Lcom/htc/painting/penmenu15/transition/ViewConfig;

    const/16 v2, 0x12d

    invoke-direct {v14, v2}, Lcom/htc/painting/penmenu15/transition/ViewConfig;-><init>(I)V

    .line 324
    .local v14, sizeConfig:Lcom/htc/painting/penmenu15/transition/ViewConfig;
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    const/16 v3, 0x8

    invoke-virtual {v14, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 325
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    const/16 v3, 0x8

    invoke-virtual {v14, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 326
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    const/16 v3, 0x8

    invoke-virtual {v14, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 327
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 328
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

    invoke-virtual {v2, v14}, Lcom/htc/painting/penmenu15/transition/StateManager;->addConfig(Lcom/htc/painting/penmenu15/transition/ViewConfig;)V

    .line 331
    new-instance v10, Lcom/htc/painting/penmenu15/transition/ViewConfig;

    const/16 v2, 0x12c

    invoke-direct {v10, v2}, Lcom/htc/painting/penmenu15/transition/ViewConfig;-><init>(I)V

    .line 332
    .local v10, colorConfig:Lcom/htc/painting/penmenu15/transition/ViewConfig;
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    const/16 v3, 0x8

    invoke-virtual {v10, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 333
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    const/16 v3, 0x8

    invoke-virtual {v10, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 334
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    const/16 v3, 0x8

    invoke-virtual {v10, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 335
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 336
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

    invoke-virtual {v2, v10}, Lcom/htc/painting/penmenu15/transition/StateManager;->addConfig(Lcom/htc/painting/penmenu15/transition/ViewConfig;)V

    .line 339
    new-instance v11, Lcom/htc/painting/penmenu15/transition/ViewConfig;

    const/16 v2, 0x12f

    invoke-direct {v11, v2}, Lcom/htc/painting/penmenu15/transition/ViewConfig;-><init>(I)V

    .line 340
    .local v11, highlightConfig:Lcom/htc/painting/penmenu15/transition/ViewConfig;
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    const/16 v3, 0x8

    invoke-virtual {v11, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 341
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    const/16 v3, 0x8

    invoke-virtual {v11, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 342
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 343
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    const/16 v3, 0x8

    invoke-virtual {v11, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 344
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

    invoke-virtual {v2, v11}, Lcom/htc/painting/penmenu15/transition/StateManager;->addConfig(Lcom/htc/painting/penmenu15/transition/ViewConfig;)V

    .line 347
    new-instance v12, Lcom/htc/painting/penmenu15/transition/ViewConfig;

    const/16 v2, 0x134

    invoke-direct {v12, v2}, Lcom/htc/painting/penmenu15/transition/ViewConfig;-><init>(I)V

    .line 348
    .local v12, noneConfig:Lcom/htc/painting/penmenu15/transition/ViewConfig;
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    const/16 v3, 0x8

    invoke-virtual {v12, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 349
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    const/16 v3, 0x8

    invoke-virtual {v12, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 350
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    const/16 v3, 0x8

    invoke-virtual {v12, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 351
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    const/16 v3, 0x8

    invoke-virtual {v12, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 352
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

    invoke-virtual {v2, v12}, Lcom/htc/painting/penmenu15/transition/StateManager;->addConfig(Lcom/htc/painting/penmenu15/transition/ViewConfig;)V

    .line 355
    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/htc/painting/penmenu15/view/OptionPanel;->changeStateTo(IZ)V

    .line 356
    return-void
.end method

.method private updateOptionPanelToEraserConfig()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 720
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->currentPenIsEraser()Z

    move-result v0

    .line 721
    .local v0, eraser:Z
    if-eqz v0, :cond_1

    .line 722
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/transition/StateManager;->getCurrenState()I

    move-result v2

    const/16 v3, 0x12f

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/transition/StateManager;->getCurrenState()I

    move-result v2

    const/16 v3, 0x12c

    if-ne v2, v3, :cond_1

    .line 724
    :cond_0
    const/16 v2, 0x12d

    invoke-direct {p0, v2, v1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->changeStateTo(IZ)V

    .line 727
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setEnabled(Z)V

    .line 728
    return-void
.end method

.method private updateOptionPanelToHLConfig()V
    .locals 9

    .prologue
    const/16 v8, 0x12f

    const/16 v7, 0x12c

    const/4 v4, 0x0

    .line 693
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->currentPenIsHighlighter()Z

    move-result v2

    .line 694
    .local v2, highlighter:Z
    if-eqz v2, :cond_4

    .line 695
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu15/transition/StateManager;->getCurrenState()I

    move-result v5

    const/16 v6, 0x12d

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu15/transition/StateManager;->getCurrenState()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 697
    :cond_0
    invoke-direct {p0, v8, v4}, Lcom/htc/painting/penmenu15/view/OptionPanel;->changeStateTo(IZ)V

    .line 704
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    if-nez v2, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {v5, v4}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setEnabled(Z)V

    .line 706
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenMenuStateMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->getHLConfig()Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    move-result-object v1

    .line 707
    .local v1, config:Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 709
    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->getColor()I

    move-result v0

    .line 710
    .local v0, color:I
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    if-eqz v4, :cond_3

    .line 711
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getColor()I

    move-result v3

    .line 712
    .local v3, penColor:I
    if-eq v0, v3, :cond_3

    .line 713
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v4, v0}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->setColor(I)V

    .line 717
    .end local v0           #color:I
    .end local v3           #penColor:I
    :cond_3
    return-void

    .line 700
    .end local v1           #config:Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;
    :cond_4
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu15/transition/StateManager;->getCurrenState()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 701
    invoke-direct {p0, v7, v4}, Lcom/htc/painting/penmenu15/view/OptionPanel;->changeStateTo(IZ)V

    goto :goto_0
.end method

.method private updateSizeSectorOnNewPen()V
    .locals 5

    .prologue
    .line 611
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/core/PenType;->getMaxSize()F

    move-result v0

    .line 612
    .local v0, max:F
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/core/PenType;->getMinSize()F

    move-result v1

    .line 613
    .local v1, min:F
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    float-to-int v3, v1

    float-to-int v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/htc/painting/penmenu15/view/SizeSector;->setMinMax(II)V

    .line 614
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->updateSizeSectorOnSizeChange()V

    .line 615
    return-void
.end method

.method private updateSizeSectorOnSizeChange()V
    .locals 3

    .prologue
    .line 618
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getSize()I

    move-result v1

    int-to-float v0, v1

    .line 619
    .local v0, curSize:F
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu15/view/SizeSector;->setProgress(I)V

    .line 620
    return-void
.end method


# virtual methods
.method public addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0
    .parameter "button"
    .parameter "params"

    .prologue
    .line 258
    invoke-super {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/CircularPanel;->addButton(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 259
    invoke-virtual {p1, p0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    return-void
.end method

.method public getButtonPoint(I)Landroid/graphics/Point;
    .locals 2
    .parameter "elementId"

    .prologue
    .line 500
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 502
    .local v0, ret:Landroid/graphics/Point;
    sparse-switch p1, :sswitch_data_0

    .line 517
    :goto_0
    return-object v0

    .line 504
    :sswitch_0
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getButtonPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 505
    goto :goto_0

    .line 507
    :sswitch_1
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getButtonPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 508
    goto :goto_0

    .line 510
    :sswitch_2
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mTypeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->getButtonPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 511
    goto :goto_0

    .line 513
    :sswitch_3
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->getUnhighlightPoint()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0

    .line 502
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x23 -> :sswitch_3
    .end sparse-switch
.end method

.method public getHistoryColors()[I
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->getColors()[I

    move-result-object v0

    return-object v0
.end method

.method public handleMotionEvent(ILandroid/view/MotionEvent;)Z
    .locals 7
    .parameter "elementId"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 444
    const/4 v1, 0x0

    .line 446
    .local v1, ret:Z
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 447
    .local v0, location:[I
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->getLocationOnScreen([I)V

    .line 450
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aget v3, v0, v5

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aget v4, v0, v6

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 453
    sparse-switch p1, :sswitch_data_0

    .line 489
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aget v3, v0, v5

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aget v4, v0, v6

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 492
    return v1

    .line 455
    :sswitch_0
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mTypeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v2, p2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->contains(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mTypeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->performClick()Z

    .line 457
    const/4 v1, 0x1

    goto :goto_0

    .line 461
    :sswitch_1
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v2, p2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->contains(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->performClick()Z

    .line 463
    const/4 v1, 0x1

    goto :goto_0

    .line 467
    :sswitch_2
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v2, p2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->contains(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->performClick()Z

    .line 469
    const/4 v1, 0x1

    goto :goto_0

    .line 473
    :sswitch_3
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    invoke-virtual {v2, p2}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->colorChoose(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 474
    goto :goto_0

    .line 476
    :sswitch_4
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    invoke-virtual {v2, p2}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->typeChoose(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 477
    goto :goto_0

    .line 479
    :sswitch_5
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    invoke-virtual {v2, p2}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->containsUnhighlight(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->performUnhighlightClick()V

    .line 481
    const/4 v1, 0x1

    goto :goto_0

    .line 453
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x1f -> :sswitch_3
        0x21 -> :sswitch_4
        0x23 -> :sswitch_5
    .end sparse-switch
.end method

.method public initialize(Lcom/htc/painting/penmenu15/core/PenMenuStateManager;II)V
    .locals 10
    .parameter "penmenuMgr"
    .parameter "includeSet"
    .parameter "excludeSet"

    .prologue
    const v9, 0x20802c9

    .line 118
    const-string v2, "PenMenuNew"

    const-string v3, " init OptionPanel "

    invoke-static {v2, v3}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu15/view/OptionPanel;->inflateInternal(Landroid/content/Context;)V

    .line 123
    invoke-virtual {p1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->getPenTypes()Ljava/util/List;

    move-result-object v1

    .line 125
    .local v1, types:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenMenuStateMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    .line 126
    new-instance v0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    or-int/lit8 v4, p3, 0x1

    or-int/lit8 v5, v4, 0x10

    const/16 v6, 0x1a

    const/16 v7, 0x9a

    iget v8, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->INNER_RADIUS:I

    move v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Landroid/graphics/drawable/Drawable$Callback;IIIII)V

    .line 134
    .local v0, adapter:Lcom/htc/painting/penmenu15/view/PenTypeAdapter;
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mContext:Landroid/content/Context;

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v9, v3}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->addDivider(Landroid/content/Context;II)V

    .line 135
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mContext:Landroid/content/Context;

    const/16 v3, 0xaa

    invoke-virtual {v0, v2, v9, v3}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->addDivider(Landroid/content/Context;II)V

    .line 136
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    invoke-virtual {v2, v0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->setAdapter(Lcom/htc/painting/penmenu15/view/PenTypeAdapter;)V

    .line 138
    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->setupPenButtons(Ljava/util/List;)V

    .line 141
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->updateOptionPanelToHLConfig()V

    .line 142
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenMenuStateMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v2, p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->addInternalHighlightListener(Lcom/htc/painting/penmenu15/core/InternalHLConfigListener;)V

    .line 144
    sget-object v2, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;->PROVISION:Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu15/view/OptionPanel;->onInternalHighlightConfigChanged(Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;)V

    .line 146
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mHLColorPicker:Lcom/htc/painting/penmenu15/view/HighlightColorPicker;

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenMenuStateMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu15/view/HighlightColorPicker;->initialize(Lcom/htc/painting/penmenu15/core/PenMenuStateManager;)V

    .line 147
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenMenuStateMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/SizeSector;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/SizeSector;->isScrolling()Z

    move-result v0

    .line 534
    :goto_0
    return v0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->isScrolling()Z

    move-result v0

    goto :goto_0

    .line 534
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeButton(Landroid/content/Context;IIIII)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
    .locals 10
    .parameter "context"
    .parameter "id"
    .parameter "deg"
    .parameter "dist"
    .parameter "texRes"
    .parameter "iconRes"

    .prologue
    .line 245
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-super/range {v0 .. v8}, Lcom/htc/painting/penmenu15/view/CircularPanel;->makeButton(Landroid/content/Context;IIIIIIZ)Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v9

    .line 246
    .local v9, result:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
    const v0, 0x20802d2

    const v1, 0x20802d3

    const v2, 0x20802d4

    invoke-virtual {v9, v0, v1, v2}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setButtonBackgroundResource(III)V

    .line 250
    return-object v9
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 559
    :goto_0
    return-void

    .line 545
    :pswitch_0
    const/16 v0, 0x12e

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->changeStateTo(IZ)V

    goto :goto_0

    .line 548
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->currentPenIsHighlighter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    const/16 v0, 0x12f

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->changeStateTo(IZ)V

    goto :goto_0

    .line 551
    :cond_0
    const/16 v0, 0x12c

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->changeStateTo(IZ)V

    goto :goto_0

    .line 555
    :pswitch_2
    const/16 v0, 0x12d

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->changeStateTo(IZ)V

    goto :goto_0

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onColorChanged(I)V
    .locals 4
    .parameter "color"

    .prologue
    .line 644
    const-string v1, "ColorPickerSector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onColorChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v0

    .line 647
    .local v0, curType:Lcom/htc/painting/penmenu15/core/PenType;
    if-eqz v0, :cond_0

    .line 648
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->setColor(I)V

    .line 651
    .end local v0           #curType:Lcom/htc/painting/penmenu15/core/PenType;
    :cond_0
    return-void
.end method

.method public onCurrentPenChanged(Ljava/lang/String;Lcom/htc/painting/penmenu15/core/PenRepresentation;Lcom/htc/painting/penmenu15/core/PenRepresentation;)V
    .locals 2
    .parameter "key"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 593
    const-string v0, "all_config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "penType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->refresh()V

    .line 596
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->updateSizeSectorOnNewPen()V

    .line 602
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 603
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    invoke-interface {p3}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->setCurrentColor(I)V

    .line 606
    :cond_2
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->updateOptionPanelToHLConfig()V

    .line 607
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->updateOptionPanelToEraserConfig()V

    .line 608
    return-void

    .line 597
    :cond_3
    const-string v0, "size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 598
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->updateSizeSectorOnSizeChange()V

    goto :goto_0

    .line 599
    :cond_4
    const-string v0, "color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->refresh()V

    goto :goto_0
.end method

.method public onHLColorSelected(II)V
    .locals 10
    .parameter "index"
    .parameter "color"

    .prologue
    const/16 v5, 0x66

    const/16 v6, 0x65

    .line 775
    const-string v7, "PenMenuNew"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onHLColorSelected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v7, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenMenuStateMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v7}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->getHLConfig()Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    move-result-object v1

    .line 778
    .local v1, config:Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;
    if-nez v1, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    const/16 v7, -0xa

    if-ne p1, v7, :cond_6

    const/4 v4, 0x1

    .line 782
    .local v4, unHighlightSelected:Z
    :goto_1
    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->getConfigState()I

    move-result v2

    .line 784
    .local v2, state:I
    const/4 v0, 0x0

    .line 785
    .local v0, colorChanged:Z
    const/4 v3, 0x0

    .line 786
    .local v3, stateChanged:Z
    const/16 v7, 0x64

    if-ne v2, v7, :cond_7

    .line 787
    const-string v7, "PenMenuNew"

    const-string v8, "highlightmode is changed but Highlighyt state is off"

    invoke-static {v7, v8}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 804
    if-eqz v4, :cond_a

    :goto_3
    const-string v6, "com.htc.penmenu"

    invoke-virtual {v1, v5, v6}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->setConfigState(ILjava/lang/String;)V

    .line 809
    :cond_3
    if-eqz v0, :cond_4

    .line 810
    const-string v5, "com.htc.penmenu"

    invoke-virtual {v1, p2, v5}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->setColor(ILjava/lang/String;)V

    .line 812
    :cond_4
    if-nez v3, :cond_5

    if-eqz v0, :cond_0

    .line 813
    :cond_5
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->updateOptionPanelToHLConfig()V

    goto :goto_0

    .line 780
    .end local v0           #colorChanged:Z
    .end local v2           #state:I
    .end local v3           #stateChanged:Z
    .end local v4           #unHighlightSelected:Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 788
    .restart local v0       #colorChanged:Z
    .restart local v2       #state:I
    .restart local v3       #stateChanged:Z
    .restart local v4       #unHighlightSelected:Z
    :cond_7
    if-ne v2, v6, :cond_9

    .line 789
    if-eqz v4, :cond_8

    .line 790
    const/4 v3, 0x1

    goto :goto_2

    .line 792
    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    .line 794
    :cond_9
    if-ne v2, v5, :cond_2

    .line 795
    if-nez v4, :cond_2

    .line 798
    const/4 v3, 0x1

    .line 799
    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    move v5, v6

    .line 804
    goto :goto_3
.end method

.method public onInternalHighlightConfigChanged(Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 753
    sget-object v1, Lcom/htc/painting/penmenu15/view/OptionPanel$2;->$SwitchMap$com$htc$painting$penmenu15$core$InternalHLConfigListener$CHANGE_TYPE:[I

    invoke-virtual {p1}, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 756
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->updateOptionPanelToHLConfig()V

    goto :goto_0

    .line 760
    :pswitch_1
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenTypesSector:Lcom/htc/painting/penmenu15/view/PenTypeSector;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/view/PenTypeSector;->getHLButton()Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    move-result-object v0

    .line 761
    .local v0, hlButton:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;
    if-eqz v0, :cond_0

    .line 762
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mPenMenuStateMgr:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->isHighlightEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->setEnabled(Z)V

    goto :goto_0

    .line 753
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 671
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 672
    .local v2, width:I
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 674
    .local v1, height:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 677
    .local v0, bkg:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    if-eqz v3, :cond_1

    .line 678
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    invoke-virtual {p0, v3, p1, p2}, Lcom/htc/painting/penmenu15/view/OptionPanel;->measureChild(Landroid/view/View;II)V

    .line 679
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->getMeasuredWidth()I

    move-result v2

    .line 680
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->getMeasuredHeight()I

    move-result v1

    .line 687
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 688
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 689
    invoke-super {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/CircularPanel;->onMeasure(II)V

    .line 690
    return-void

    .line 681
    :cond_1
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v3, :cond_0

    .line 682
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 683
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_0
.end method

.method public onPenTypeSelected(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V
    .locals 3
    .parameter "selectedPen"

    .prologue
    .line 659
    const-string v0, "PenMenuNew"

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

    .line 660
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->setPenRepresentation(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 663
    :cond_0
    return-void
.end method

.method public onProgressChanged(Lcom/htc/painting/penmenu15/view/SectorController;I)V
    .locals 5
    .parameter "sector"
    .parameter "progress"

    .prologue
    .line 628
    const-string v2, "PenMenuNew"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeProgress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    if-eqz v2, :cond_0

    .line 630
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v0

    .line 631
    .local v0, curType:Lcom/htc/painting/penmenu15/core/PenType;
    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenType;->getMaxSize()F

    move-result v2

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenType;->getMinSize()F

    move-result v3

    sub-float v1, v2, v3

    .line 633
    .local v1, range:F
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v2, p2}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->setPenSize(I)V

    .line 636
    .end local v0           #curType:Lcom/htc/painting/penmenu15/core/PenType;
    .end local v1           #range:F
    :cond_0
    return-void
.end method

.method public onTransitionIn()V
    .locals 2

    .prologue
    .line 402
    const-string v0, "PenMenuNew"

    const-string v1, " OptionPanel onTransitionIn "

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/transition/StateManager;->getLastState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->changeStateTo(IZ)V

    .line 404
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->updateOptionPanelToHLConfig()V

    .line 405
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->updateOptionPanelToEraserConfig()V

    .line 406
    return-void
.end method

.method public onTransitionOut()V
    .locals 2

    .prologue
    .line 413
    const-string v0, "PenMenuNew"

    const-string v1, " OptionPanel onTransitionOut "

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/16 v0, 0x134

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->changeStateTo(IZ)V

    .line 416
    return-void
.end method

.method public releaseResources()V
    .locals 2

    .prologue
    .line 366
    const-string v0, "PenMenuNew"

    const-string v1, " OptionPanel.releaseResources()"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/OptionPanel;->removeAllViews()V

    .line 370
    return-void
.end method

.method public setCurrentPen(Lcom/htc/painting/penmenu15/core/CurrentPenContainer;)V
    .locals 2
    .parameter "curPenContainer"

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->removeCurrentPenChangedListener(Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;)V

    .line 185
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    .line 186
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->addCurrentPenChangedListener(Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;)V

    .line 188
    const-string v0, "all_config"

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->onCurrentPenChanged(Ljava/lang/String;Lcom/htc/painting/penmenu15/core/PenRepresentation;Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 190
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mSizeSector:Lcom/htc/painting/penmenu15/view/SizeSector;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu15/view/SizeSector;->setOnProgressChangedListener(Lcom/htc/painting/penmenu15/view/SectorController$OnProgressChangedListener;)V

    .line 191
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->setOnColorChangeListener(Lcom/htc/painting/penmenu15/view/ColorPickerView$OnColorChangedListener;)V

    .line 192
    return-void
.end method

.method public setDragColorMonitor(Lcom/htc/painting/penmenu15/PenMenu$DragColorMonitor;)V
    .locals 1
    .parameter "monitor"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->setDragColorMonitor(Lcom/htc/painting/penmenu15/PenMenu$DragColorMonitor;)V

    .line 426
    :cond_0
    return-void
.end method

.method public setDragDropManager(Lcom/htc/painting/penmenu15/core/DragDropManager;)V
    .locals 2
    .parameter "DragDropManager"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    .line 200
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->setDragDropManager(Lcom/htc/painting/penmenu15/core/DragDropManager;)V

    .line 202
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mStateManager:Lcom/htc/painting/penmenu15/transition/StateManager;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/transition/StateManager;->getCurrenState()I

    move-result v0

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->startDrag()V

    .line 205
    :cond_0
    return-void
.end method

.method public setHistoryColors([I)V
    .locals 1
    .parameter "colors"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/OptionPanel;->mColorPickerSector:Lcom/htc/painting/penmenu15/view/ColorPickerSector;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->setColors([I)V

    .line 379
    return-void
.end method
