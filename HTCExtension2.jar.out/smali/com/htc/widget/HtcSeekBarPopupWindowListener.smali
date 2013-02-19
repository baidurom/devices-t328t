.class public Lcom/htc/widget/HtcSeekBarPopupWindowListener;
.super Lcom/htc/widget/HtcPopupWindow;
.source "HtcSeekBarPopupWindowListener.java"

# interfaces
.implements Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;
.implements Lcom/htc/widget/HtcPopupWindow$OnPopupChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;
    }
.end annotation


# instance fields
.field private mArchorOff:I

.field mContext:Landroid/content/Context;

.field private mCurLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

.field private mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

.field private mDrawingLocation:[I

.field private mHeightOfProgressButton:I

.field private mMargin5:I

.field private mMinPaddingLeft:I

.field private mMinPaddingRight:I

.field private mNotesLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

.field mPopupWindowDrawable:Lcom/htc/graphic/PopupWindowDrawable;

.field private mSeekbar:Landroid/widget/SeekBar;

.field private mUserControl:Z

.field private mUserVisible:Z

.field private mXoff:I

.field private mYoff:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/htc/widget/HtcPopupWindow;-><init>()V

    .line 32
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMargin5:I

    .line 33
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mHeightOfProgressButton:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserVisible:Z

    .line 35
    iput-boolean v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserControl:Z

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I

    .line 341
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 389
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mNotesLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 434
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mCurLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcPopupWindow;-><init>(II)V

    .line 32
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMargin5:I

    .line 33
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mHeightOfProgressButton:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserVisible:Z

    .line 35
    iput-boolean v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserControl:Z

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I

    .line 341
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 389
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mNotesLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 434
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mCurLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->init(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcPopupWindow;-><init>(Landroid/content/Context;)V

    .line 32
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMargin5:I

    .line 33
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mHeightOfProgressButton:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserVisible:Z

    .line 35
    iput-boolean v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserControl:Z

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I

    .line 341
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 389
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mNotesLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 434
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mCurLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 85
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->init(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMargin5:I

    .line 33
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mHeightOfProgressButton:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserVisible:Z

    .line 35
    iput-boolean v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserControl:Z

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I

    .line 341
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 389
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mNotesLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 434
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mCurLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 104
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->init(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMargin5:I

    .line 33
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mHeightOfProgressButton:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserVisible:Z

    .line 35
    iput-boolean v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserControl:Z

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I

    .line 341
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 389
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mNotesLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 434
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mCurLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 126
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->init(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMargin5:I

    .line 33
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mHeightOfProgressButton:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserVisible:Z

    .line 35
    iput-boolean v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserControl:Z

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I

    .line 341
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 389
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mNotesLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 434
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mCurLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 150
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->init(Landroid/content/Context;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "contentView"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcPopupWindow;-><init>(Landroid/view/View;)V

    .line 32
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMargin5:I

    .line 33
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mHeightOfProgressButton:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserVisible:Z

    .line 35
    iput-boolean v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserControl:Z

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I

    .line 341
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 389
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mNotesLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 434
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mCurLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->init(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 2
    .parameter "contentView"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcPopupWindow;-><init>(Landroid/view/View;II)V

    .line 32
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMargin5:I

    .line 33
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mHeightOfProgressButton:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserVisible:Z

    .line 35
    iput-boolean v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserControl:Z

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I

    .line 341
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 389
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mNotesLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 434
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mCurLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->init(Landroid/content/Context;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 2
    .parameter "contentView"
    .parameter "width"
    .parameter "height"
    .parameter "focusable"

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcPopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 32
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMargin5:I

    .line 33
    iput v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mHeightOfProgressButton:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserVisible:Z

    .line 35
    iput-boolean v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserControl:Z

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I

    .line 341
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 389
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$2;-><init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mNotesLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 434
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mCurLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->init(Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->getXoff()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcSeekBarPopupWindowListener;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->setArchorOff(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMinPaddingRight:I

    return v0
.end method

.method private getArchorOff()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mArchorOff:I

    return v0
.end method

.method private getXoff()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mXoff:I

    return v0
.end method

.method private getYOff(Landroid/widget/SeekBar;)I
    .locals 3
    .parameter "seekbar"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->isAboveAnchor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v0, v1, 0x2

    .line 168
    .local v0, yoff:I
    :goto_0
    iget v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMargin5:I

    iget v2, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mHeightOfProgressButton:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 169
    return v0

    .line 167
    .end local v0           #yoff:I
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v0, v1, 0x2

    goto :goto_0
.end method

.method private getYoff()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mYoff:I

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, -0x2

    .line 43
    iput-object p1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mContext:Landroid/content/Context;

    .line 44
    if-eqz p1, :cond_0

    .line 45
    new-instance v3, Lcom/htc/graphic/PopupWindowDrawable;

    invoke-direct {v3, p1}, Lcom/htc/graphic/PopupWindowDrawable;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mPopupWindowDrawable:Lcom/htc/graphic/PopupWindowDrawable;

    .line 46
    iget-object v3, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mPopupWindowDrawable:Lcom/htc/graphic/PopupWindowDrawable;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2080125

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 51
    .local v1, mTriangle:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 52
    .local v2, padding:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mPopupWindowDrawable:Lcom/htc/graphic/PopupWindowDrawable;

    invoke-virtual {v3, v2}, Lcom/htc/graphic/PopupWindowDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 54
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMinPaddingLeft:I

    .line 55
    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMinPaddingRight:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2080188

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    .local v0, ProgressButtonDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mHeightOfProgressButton:I

    .line 65
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x205000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMargin5:I

    .line 67
    .end local v0           #ProgressButtonDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #mTriangle:Landroid/graphics/drawable/Drawable;
    .end local v2           #padding:Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0, v5, v5}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->setWindowLayoutMode(II)V

    .line 68
    return-void

    .line 61
    .restart local v0       #ProgressButtonDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #mTriangle:Landroid/graphics/drawable/Drawable;
    .restart local v2       #padding:Landroid/graphics/Rect;
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mHeightOfProgressButton:I

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Can\'t get the height of the thumb of the seekbar"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setArchorOff(I)V
    .locals 0
    .parameter "archorOff"

    .prologue
    .line 475
    iput p1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mArchorOff:I

    .line 476
    return-void
.end method

.method private setXoff(I)V
    .locals 0
    .parameter "xoff"

    .prologue
    .line 447
    iput p1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mXoff:I

    .line 448
    return-void
.end method

.method private setYoff(I)V
    .locals 0
    .parameter "yoff"

    .prologue
    .line 461
    iput p1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mYoff:I

    .line 462
    return-void
.end method

.method private show(Landroid/widget/SeekBar;Z)I
    .locals 2
    .parameter "seekbar"
    .parameter "fromUser"

    .prologue
    .line 173
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserControl:Z

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-boolean v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserVisible:Z

    if-nez v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->dismiss()V

    .line 190
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 181
    :cond_2
    iget-boolean v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserVisible:Z

    if-eqz v0, :cond_1

    .line 182
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->getYOff(Landroid/widget/SeekBar;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->setYoff(I)V

    .line 183
    invoke-direct {p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->getXoff()I

    move-result v0

    invoke-direct {p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->getYoff()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method


# virtual methods
.method public enableNoteLayouter(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 339
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mNotesLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mCurLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    .line 340
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDefLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->dismiss()V

    .line 274
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->dismiss()V

    .line 284
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter "seekbar"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v4, -0x1

    .line 203
    iput-object p1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mSeekbar:Landroid/widget/SeekBar;

    .line 204
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mCurLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    if-eqz p3, :cond_0

    .end local p2
    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;->updatePopupPosition(Landroid/widget/SeekBar;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->setXoff(I)V

    .line 205
    invoke-direct {p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->getXoff()I

    move-result v2

    invoke-direct {p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->getYoff()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->update(Landroid/view/View;IIII)V

    .line 206
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mPopupWindowDrawable:Lcom/htc/graphic/PopupWindowDrawable;

    iget v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mArchorOff:I

    invoke-virtual {v0, v1}, Lcom/htc/graphic/PopupWindowDrawable;->setOffset(I)V

    .line 207
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mPopupWindowDrawable:Lcom/htc/graphic/PopupWindowDrawable;

    invoke-virtual {v0}, Lcom/htc/graphic/PopupWindowDrawable;->invalidateSelf()V

    .line 209
    invoke-direct {p0, p1, p3}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->show(Landroid/widget/SeekBar;Z)I

    .line 210
    return-void

    .line 204
    .restart local p2
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v4, -0x1

    .line 481
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mCurLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    iget-object v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mSeekbar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;->updatePopupPosition(Landroid/widget/SeekBar;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->setXoff(I)V

    .line 483
    iget-object v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mSeekbar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->getXoff()I

    move-result v2

    invoke-direct {p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->getYoff()I

    move-result v3

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->update(Landroid/view/View;IIII)V

    .line 484
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mPopupWindowDrawable:Lcom/htc/graphic/PopupWindowDrawable;

    iget v1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mArchorOff:I

    invoke-virtual {v0, v1}, Lcom/htc/graphic/PopupWindowDrawable;->setOffset(I)V

    .line 485
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mPopupWindowDrawable:Lcom/htc/graphic/PopupWindowDrawable;

    invoke-virtual {v0}, Lcom/htc/graphic/PopupWindowDrawable;->invalidateSelf()V

    .line 487
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 9
    .parameter "seekbar"

    .prologue
    const/4 v8, 0x0

    .line 221
    iput-object p1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mSeekbar:Landroid/widget/SeekBar;

    .line 222
    invoke-virtual {p0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->setPopupChangeListener(Lcom/htc/widget/HtcPopupWindow$OnPopupChangedListener;)V

    .line 226
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 227
    .local v4, wpw:I
    iget-object v5, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I

    invoke-virtual {p1, v5}, Landroid/widget/SeekBar;->getLocationInWindow([I)V

    .line 229
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I

    aget v6, v6, v8

    add-int v1, v5, v6

    .line 230
    .local v1, l:I
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v3

    .line 231
    .local v3, t:I
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I

    aget v6, v6, v8

    sub-int v6, v4, v6

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    add-int v2, v5, v6

    .line 232
    .local v2, r:I
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v0

    .line 234
    .local v0, b:I
    iget v5, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMinPaddingLeft:I

    if-lez v5, :cond_0

    iget v5, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMinPaddingLeft:I

    if-ge v1, v5, :cond_0

    .line 235
    iget v5, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMinPaddingLeft:I

    iget-object v6, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I

    aget v6, v6, v8

    sub-int v1, v5, v6

    .line 240
    :goto_0
    iget v5, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMinPaddingRight:I

    if-lez v5, :cond_1

    iget v5, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMinPaddingRight:I

    if-ge v2, v5, :cond_1

    .line 241
    iget v5, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mMinPaddingRight:I

    iget-object v6, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I

    aget v6, v6, v8

    sub-int v6, v4, v6

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v2, v5, v6

    .line 245
    :goto_1
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 247
    iget-object v5, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mCurLayouter:Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-interface {v5, p1, v6}, Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;->updatePopupPosition(Landroid/widget/SeekBar;I)I

    .line 248
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->show(Landroid/widget/SeekBar;Z)I

    .line 249
    return-void

    .line 237
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    goto :goto_1
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekbar"

    .prologue
    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mSeekbar:Landroid/widget/SeekBar;

    .line 262
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->setPopupChangeListener(Lcom/htc/widget/HtcPopupWindow$OnPopupChangedListener;)V

    .line 263
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->dismiss()V

    .line 264
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "contentView"

    .prologue
    .line 318
    invoke-super {p0, p1}, Lcom/htc/widget/HtcPopupWindow;->setContentView(Landroid/view/View;)V

    .line 319
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->dismiss()V

    .line 294
    return-void
.end method

.method public setUserVisible(Z)V
    .locals 1
    .parameter "bVisible"

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserVisible:Z

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mUserControl:Z

    .line 310
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->dismiss()V

    .line 304
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 0
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 331
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 332
    return-void
.end method
