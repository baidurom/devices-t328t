.class public Lcom/htc/widget/HtcListViewCore2;
.super Lcom/htc/widget/HtcAbsListView2;
.source "HtcListViewCore2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcListViewCore2$SavedState;,
        Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;,
        Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;,
        Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;,
        Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;
    }
.end annotation


# static fields
.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1

.field static final STATE_DRAGGING:I = 0x3


# instance fields
.field private mAreAllItemsSelectable:Z

.field private mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

.field private mBottomFirst:Z

.field mCheckForItemReleased:Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;

.field private mCheckForPressAnimationDelay:J

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mChoiceMode:I

.field mClickAnimationEnabled:Z

.field private mClipDivider:Z

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field mDividerWidth:I

.field protected mDrawEndRound:Z

.field mFakeSelectorOn:Z

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFooterViewWithoutDivider:Landroid/view/View;

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsCanFocus:Z

.field private mLastPosition:I

.field final mListSelector:Landroid/graphics/drawable/Drawable;

.field mPVHScaleX:Landroid/animation/PropertyValuesHolder;

.field mPVHScaleY:Landroid/animation/PropertyValuesHolder;

.field private mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;

.field mPressAnimators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mPressedView:Landroid/view/View;

.field mPressedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mReleaseAnimationDuration:I

.field mRoundedCornerGetView:Z

.field mSeperatorDiver:Landroid/graphics/drawable/Drawable;

.field protected mSpeedUp:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field mThisContext:Landroid/content/Context;

.field private mTransparentWrap:Z

.field mUseDivider:Z

.field private mWrappingHeader:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 212
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcListViewCore2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 216
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 155
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 169
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore2;->mAreAllItemsSelectable:Z

    .line 171
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    .line 173
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    .line 179
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    .line 185
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore2;->mSpeedUp:Z

    .line 189
    new-instance v7, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;-><init>(Lcom/htc/widget/HtcListViewCore2$1;)V

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    .line 192
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore2;->mTransparentWrap:Z

    .line 197
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore2;->mDrawEndRound:Z

    .line 5115
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore2;->mClickAnimationEnabled:Z

    .line 5119
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mPressedViews:Ljava/util/ArrayList;

    .line 5124
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mPressAnimators:Ljava/util/Map;

    .line 5129
    const-string v7, "scaleX"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mPVHScaleX:Landroid/animation/PropertyValuesHolder;

    .line 5130
    const-string v7, "scaleY"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mPVHScaleY:Landroid/animation/PropertyValuesHolder;

    .line 5373
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mPressedView:Landroid/view/View;

    .line 5374
    const/16 v7, 0x3c

    iput v7, p0, Lcom/htc/widget/HtcListViewCore2;->mReleaseAnimationDuration:I

    .line 5375
    const-wide/16 v7, 0x64

    iput-wide v7, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckForPressAnimationDelay:J

    .line 5734
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore2;->mBottomFirst:Z

    .line 5742
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore2;->mFakeSelectorOn:Z

    .line 5757
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore2;->mUseDivider:Z

    .line 5772
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore2;->mRoundedCornerGetView:Z

    .line 5787
    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/widget/HtcListViewCore2;->mLastPosition:I

    .line 5788
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore2;->mWrappingHeader:Z

    .line 217
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2;->mThisContext:Landroid/content/Context;

    .line 218
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_0

    .line 219
    const-string v7, "list_selector_background"

    invoke-static {p1, v7}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mListSelector:Landroid/graphics/drawable/Drawable;

    .line 222
    sget-object v7, Lcom/android/internal/R$styleable;->ListView:[I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 225
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 226
    .local v4, entries:[Ljava/lang/CharSequence;
    if-eqz v4, :cond_1

    .line 227
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090003

    invoke-direct {v7, p1, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 233
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 234
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 237
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 242
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    .line 243
    .local v6, htcContext:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20803e2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 246
    .local v5, group_divider:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_3

    .line 247
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    .end local v5           #group_divider:Landroid/graphics/drawable/Drawable;
    .end local v6           #htcContext:Landroid/content/Context;
    :cond_3
    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 257
    .local v2, dividerHeight:I
    if-eqz v2, :cond_4

    .line 258
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->setDividerHeight(I)V

    .line 261
    :cond_4
    const/4 v7, 0x3

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderDividersEnabled:Z

    .line 263
    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterDividersEnabled:Z

    .line 266
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 268
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 270
    return-void

    .line 248
    .end local v2           #dividerHeight:I
    :catch_0
    move-exception v3

    .line 249
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "HtcListViewCore"

    const-string v8, "resource not found"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v3

    .line 251
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 5129
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 5130
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method

.method static synthetic access$101(Lcom/htc/widget/HtcListViewCore2;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView2;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcListViewCore2;Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->get2DPressAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 4542
    add-int/lit8 v2, p2, -0x1

    .line 4543
    .local v2, abovePosition:I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 4546
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4547
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v5, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int v3, v0, v5

    .line 4552
    .local v3, edgeOfNewChild:I
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore2;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 4554
    return-object v1

    .line 4549
    .end local v3           #edgeOfNewChild:I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    sub-int v3, v0, v5

    .restart local v3       #edgeOfNewChild:I
    goto :goto_0
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 4558
    add-int/lit8 v2, p2, 0x1

    .line 4559
    .local v2, belowPosition:I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 4562
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4563
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int v3, v0, v4

    .line 4568
    .local v3, edgeOfNewChild:I
    :goto_0
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore2;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 4570
    return-object v1

    .line 4565
    .end local v3           #edgeOfNewChild:I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    sub-int v3, v0, v4

    .restart local v3       #edgeOfNewChild:I
    goto :goto_0
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v1

    .line 301
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 304
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v3, :cond_4

    .line 308
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 310
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 311
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBoundary()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBorderWidth()I

    move-result v4

    sub-int v2, v3, v4

    .line 312
    .local v2, delta:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 315
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int/2addr v2, v3

    .line 329
    :cond_0
    :goto_0
    if-gez v2, :cond_1

    .line 331
    const/4 v2, 0x0

    .line 362
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 364
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 365
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    .line 372
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    :goto_2
    return-void

    .line 319
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 320
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBoundary()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBorderHeight()I

    move-result v4

    sub-int v2, v3, v4

    .line 321
    .restart local v2       #delta:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 324
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 335
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 337
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 338
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBoundary()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBorderWidth()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 340
    .restart local v2       #delta:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-ge v3, v4, :cond_5

    .line 343
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    add-int/2addr v2, v3

    .line 357
    :cond_5
    :goto_3
    if-lez v2, :cond_1

    .line 358
    const/4 v2, 0x0

    goto :goto_1

    .line 347
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_6
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 348
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBoundary()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBorderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 350
    .restart local v2       #delta:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-ge v3, v4, :cond_5

    .line 353
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    add-int/2addr v2, v3

    goto :goto_3

    .line 367
    :cond_7
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    goto/16 :goto_2
.end method

.method private amountToScroll(II)I
    .locals 17
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 3920
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v12

    .line 3923
    .local v12, numChildren:I
    const/4 v1, 0x0

    .line 3925
    .local v1, amountToScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x11

    move/from16 v0, p1

    if-eq v0, v15, :cond_1

    :cond_0
    const/16 v15, 0x42

    move/from16 v0, p1

    if-ne v0, v15, :cond_e

    .line 3926
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v9, v15, v16

    .line 3927
    .local v9, listRight:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v15, Landroid/graphics/Rect;->left:I

    .line 3928
    .local v8, listLeft:I
    const/16 v15, 0x42

    move/from16 v0, p1

    if-ne v0, v15, :cond_8

    .line 3929
    add-int/lit8 v6, v12, -0x1

    .line 3930
    .local v6, indexToMakeVisible:I
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_2

    .line 3931
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int v6, p2, v15

    .line 3934
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int v13, v15, v6

    .line 3935
    .local v13, positionToMakeVisible:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3937
    .local v14, viewToMakeVisible:Landroid/view/View;
    move v4, v9

    .line 3938
    .local v4, goalRight:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v15, v15, -0x1

    if-ge v13, v15, :cond_4

    .line 3939
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v15

    sub-int/2addr v4, v15

    .line 3946
    :cond_3
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v15, v4, v15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_5

    .line 3949
    const/4 v15, 0x0

    .line 4079
    .end local v4           #goalRight:I
    .end local v6           #indexToMakeVisible:I
    .end local v8           #listLeft:I
    .end local v9           #listRight:I
    .end local v13           #positionToMakeVisible:I
    .end local v14           #viewToMakeVisible:Landroid/view/View;
    :goto_0
    return v15

    .line 3941
    .restart local v4       #goalRight:I
    .restart local v6       #indexToMakeVisible:I
    .restart local v8       #listLeft:I
    .restart local v9       #listRight:I
    .restart local v13       #positionToMakeVisible:I
    .restart local v14       #viewToMakeVisible:Landroid/view/View;
    :cond_4
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    if-gt v15, v4, :cond_3

    .line 3943
    const/4 v15, 0x0

    goto :goto_0

    .line 3952
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    if-ne v15, v4, :cond_7

    .line 3953
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v1

    .line 3958
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 3960
    add-int/lit8 v15, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int v11, v15, v9

    .line 3961
    .local v11, max:I
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4079
    .end local v4           #goalRight:I
    .end local v6           #indexToMakeVisible:I
    .end local v8           #listLeft:I
    .end local v9           #listRight:I
    .end local v11           #max:I
    .end local v13           #positionToMakeVisible:I
    .end local v14           #viewToMakeVisible:Landroid/view/View;
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v15

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    goto :goto_0

    .line 3956
    .restart local v4       #goalRight:I
    .restart local v6       #indexToMakeVisible:I
    .restart local v8       #listLeft:I
    .restart local v9       #listRight:I
    .restart local v13       #positionToMakeVisible:I
    .restart local v14       #viewToMakeVisible:Landroid/view/View;
    :cond_7
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int v1, v15, v4

    goto :goto_1

    .line 3966
    .end local v4           #goalRight:I
    .end local v6           #indexToMakeVisible:I
    .end local v13           #positionToMakeVisible:I
    .end local v14           #viewToMakeVisible:Landroid/view/View;
    :cond_8
    const/4 v6, 0x0

    .line 3967
    .restart local v6       #indexToMakeVisible:I
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_9

    .line 3968
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int v6, p2, v15

    .line 3970
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int v13, v15, v6

    .line 3971
    .restart local v13       #positionToMakeVisible:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3972
    .restart local v14       #viewToMakeVisible:Landroid/view/View;
    move v3, v8

    .line 3973
    .local v3, goalLeft:I
    if-lez v13, :cond_b

    .line 3974
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v15

    add-int/2addr v3, v15

    .line 3981
    :cond_a
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_c

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int/2addr v15, v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_c

    .line 3984
    const/4 v15, 0x0

    goto :goto_0

    .line 3976
    :cond_b
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-lt v15, v3, :cond_a

    .line 3978
    const/4 v15, 0x0

    goto :goto_0

    .line 3987
    :cond_c
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-ne v15, v3, :cond_d

    .line 3988
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v1

    .line 3993
    :goto_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-nez v15, :cond_6

    .line 3995
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v11, v8, v15

    .line 3996
    .restart local v11       #max:I
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 3991
    .end local v11           #max:I
    :cond_d
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v1, v3, v15

    goto :goto_3

    .line 4001
    .end local v3           #goalLeft:I
    .end local v6           #indexToMakeVisible:I
    .end local v8           #listLeft:I
    .end local v9           #listRight:I
    .end local v13           #positionToMakeVisible:I
    .end local v14           #viewToMakeVisible:Landroid/view/View;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v7, v15, v16

    .line 4002
    .local v7, listBottom:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v15, Landroid/graphics/Rect;->top:I

    .line 4003
    .local v10, listTop:I
    const/16 v15, 0x21

    move/from16 v0, p1

    if-eq v0, v15, :cond_f

    const/16 v15, 0x82

    move/from16 v0, p1

    if-ne v0, v15, :cond_6

    .line 4004
    :cond_f
    const/16 v15, 0x82

    move/from16 v0, p1

    if-ne v0, v15, :cond_15

    .line 4005
    add-int/lit8 v6, v12, -0x1

    .line 4006
    .restart local v6       #indexToMakeVisible:I
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_10

    .line 4007
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int v6, p2, v15

    .line 4010
    :cond_10
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int v13, v15, v6

    .line 4011
    .restart local v13       #positionToMakeVisible:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 4013
    .restart local v14       #viewToMakeVisible:Landroid/view/View;
    move v2, v7

    .line 4015
    .local v2, goalBottom:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v15, v15, -0x1

    if-ge v13, v15, :cond_12

    .line 4016
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v15

    sub-int/2addr v2, v15

    .line 4024
    :cond_11
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_13

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v15, v2, v15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_13

    .line 4027
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 4019
    :cond_12
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    if-gt v15, v2, :cond_11

    .line 4021
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 4030
    :cond_13
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    if-ne v15, v2, :cond_14

    .line 4031
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v1

    .line 4036
    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 4038
    add-int/lit8 v15, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int v11, v15, v7

    .line 4039
    .restart local v11       #max:I
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto/16 :goto_2

    .line 4034
    .end local v11           #max:I
    :cond_14
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int v1, v15, v2

    goto :goto_4

    .line 4044
    .end local v2           #goalBottom:I
    .end local v6           #indexToMakeVisible:I
    .end local v13           #positionToMakeVisible:I
    .end local v14           #viewToMakeVisible:Landroid/view/View;
    :cond_15
    const/4 v6, 0x0

    .line 4045
    .restart local v6       #indexToMakeVisible:I
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_16

    .line 4046
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int v6, p2, v15

    .line 4048
    :cond_16
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int v13, v15, v6

    .line 4049
    .restart local v13       #positionToMakeVisible:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 4050
    .restart local v14       #viewToMakeVisible:Landroid/view/View;
    move v5, v10

    .line 4051
    .local v5, goalTop:I
    if-lez v13, :cond_18

    .line 4052
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v15

    add-int/2addr v5, v15

    .line 4059
    :cond_17
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_19

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int/2addr v15, v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_19

    .line 4062
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 4054
    :cond_18
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    if-lt v15, v5, :cond_17

    .line 4056
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 4065
    :cond_19
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    if-ne v15, v5, :cond_1a

    .line 4066
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v1

    .line 4071
    :goto_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-nez v15, :cond_6

    .line 4073
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v11, v10, v15

    .line 4074
    .restart local v11       #max:I
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto/16 :goto_2

    .line 4069
    .end local v11           #max:I
    :cond_1a
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v1, v5, v15

    goto :goto_5
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 5
    .parameter "direction"
    .parameter "newFocus"
    .parameter "positionOfNewFocus"

    .prologue
    .line 4305
    const/4 v0, 0x0

    .line 4306
    .local v0, amountToScroll:I
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4307
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v3}, Lcom/htc/widget/HtcListViewCore2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4308
    const/16 v3, 0x21

    if-ne p1, v3, :cond_1

    .line 4309
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_0

    .line 4310
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v4

    .line 4311
    if-lez p3, :cond_0

    .line 4312
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v0, v3

    .line 4339
    :cond_0
    :goto_0
    return v0

    .line 4315
    :cond_1
    const/16 v3, 0x11

    if-ne p1, v3, :cond_2

    .line 4316
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_0

    .line 4317
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v0, v3, v4

    .line 4318
    if-lez p3, :cond_0

    .line 4319
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 4322
    :cond_2
    const/16 v3, 0x42

    if-ne p1, v3, :cond_3

    .line 4323
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v2, v3, v4

    .line 4324
    .local v2, listRight:I
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-le v3, v2, :cond_0

    .line 4325
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v3, v2

    .line 4326
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge p3, v3, :cond_0

    .line 4327
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 4331
    .end local v2           #listRight:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v3, v4

    .line 4332
    .local v1, listBottom:I
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v3, v1, :cond_0

    .line 4333
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v1

    .line 4334
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge p3, v3, :cond_0

    .line 4335
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;
    .locals 25
    .parameter "direction"

    .prologue
    .line 4178
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getSelectedView()Landroid/view/View;

    move-result-object v18

    .line 4180
    .local v18, selectedView:Landroid/view/View;
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasFocus()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 4181
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v14

    .line 4182
    .local v14, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v14, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 4226
    .end local v14           #oldFocus:Landroid/view/View;
    .local v13, newFocus:Landroid/view/View;
    :goto_0
    if-eqz v13, :cond_16

    .line 4227
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/widget/HtcListViewCore2;->positionOfNewFocus(Landroid/view/View;)I

    move-result v15

    .line 4231
    .local v15, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v15, v0, :cond_14

    .line 4232
    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePositionOnScreen(I)I

    move-result v17

    .line 4233
    .local v17, selectablePosition:I
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    const/16 v22, 0x82

    move/from16 v0, p1

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    const/16 v22, 0x42

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    :cond_0
    move/from16 v0, v17

    if-lt v0, v15, :cond_3

    :cond_1
    const/16 v22, 0x21

    move/from16 v0, p1

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x11

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    :cond_2
    move/from16 v0, v17

    if-le v0, v15, :cond_14

    .line 4236
    :cond_3
    const/16 v22, 0x0

    .line 4258
    .end local v15           #positionOfNewFocus:I
    .end local v17           #selectablePosition:I
    :goto_1
    return-object v22

    .line 4184
    .end local v13           #newFocus:Landroid/view/View;
    :cond_4
    const/16 v22, 0x82

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 4185
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v22, v0

    if-lez v22, :cond_5

    const/16 v19, 0x1

    .line 4186
    .local v19, topFadingEdgeShowing:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    if-eqz v19, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v22

    :goto_3
    add-int v11, v23, v22

    .line 4188
    .local v11, listTop:I
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v11, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v21

    .line 4192
    .local v21, ySearchPoint:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v24

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4223
    .end local v11           #listTop:I
    .end local v19           #topFadingEdgeShowing:Z
    .end local v21           #ySearchPoint:I
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v13

    .restart local v13       #newFocus:Landroid/view/View;
    goto/16 :goto_0

    .line 4185
    .end local v13           #newFocus:Landroid/view/View;
    :cond_5
    const/16 v19, 0x0

    goto :goto_2

    .line 4186
    .restart local v19       #topFadingEdgeShowing:Z
    :cond_6
    const/16 v22, 0x0

    goto :goto_3

    .restart local v11       #listTop:I
    :cond_7
    move/from16 v21, v11

    .line 4188
    goto :goto_4

    .line 4193
    .end local v11           #listTop:I
    .end local v19           #topFadingEdgeShowing:Z
    :cond_8
    const/16 v22, 0x42

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 4194
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v22, v0

    if-lez v22, :cond_9

    const/4 v7, 0x1

    .line 4195
    .local v7, leftFadingEdgeShowing:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    if-eqz v7, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v22

    :goto_7
    add-int v9, v23, v22

    .line 4197
    .local v9, listLeft:I
    if-eqz v18, :cond_b

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v9, :cond_b

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v20

    .line 4201
    .local v20, xSearchPoint:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 4194
    .end local v7           #leftFadingEdgeShowing:Z
    .end local v9           #listLeft:I
    .end local v20           #xSearchPoint:I
    :cond_9
    const/4 v7, 0x0

    goto :goto_6

    .line 4195
    .restart local v7       #leftFadingEdgeShowing:Z
    :cond_a
    const/16 v22, 0x0

    goto :goto_7

    .restart local v9       #listLeft:I
    :cond_b
    move/from16 v20, v9

    .line 4197
    goto :goto_8

    .line 4202
    .end local v7           #leftFadingEdgeShowing:Z
    .end local v9           #listLeft:I
    :cond_c
    const/16 v22, 0x11

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 4203
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v23

    add-int v22, v22, v23

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    const/16 v16, 0x1

    .line 4205
    .local v16, rightFadingEdgeShowing:Z
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v23, v22, v23

    if-eqz v16, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v22

    :goto_a
    sub-int v10, v23, v22

    .line 4207
    .local v10, listRight:I
    if-eqz v18, :cond_f

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v22

    move/from16 v0, v22

    if-ge v0, v10, :cond_f

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v20

    .line 4211
    .restart local v20       #xSearchPoint:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_5

    .line 4203
    .end local v10           #listRight:I
    .end local v16           #rightFadingEdgeShowing:Z
    .end local v20           #xSearchPoint:I
    :cond_d
    const/16 v16, 0x0

    goto :goto_9

    .line 4205
    .restart local v16       #rightFadingEdgeShowing:Z
    :cond_e
    const/16 v22, 0x0

    goto :goto_a

    .restart local v10       #listRight:I
    :cond_f
    move/from16 v20, v10

    .line 4207
    goto :goto_b

    .line 4213
    .end local v10           #listRight:I
    .end local v16           #rightFadingEdgeShowing:Z
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v23

    add-int v22, v22, v23

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    const/4 v5, 0x1

    .line 4215
    .local v5, bottomFadingEdgeShowing:Z
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v23, v22, v23

    if-eqz v5, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v22

    :goto_d
    sub-int v8, v23, v22

    .line 4217
    .local v8, listBottom:I
    if-eqz v18, :cond_13

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v0, v22

    if-ge v0, v8, :cond_13

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v21

    .line 4221
    .restart local v21       #ySearchPoint:I
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v24

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_5

    .line 4213
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v8           #listBottom:I
    .end local v21           #ySearchPoint:I
    :cond_11
    const/4 v5, 0x0

    goto :goto_c

    .line 4215
    .restart local v5       #bottomFadingEdgeShowing:Z
    :cond_12
    const/16 v22, 0x0

    goto :goto_d

    .restart local v8       #listBottom:I
    :cond_13
    move/from16 v21, v8

    .line 4217
    goto :goto_e

    .line 4240
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v8           #listBottom:I
    .restart local v13       #newFocus:Landroid/view/View;
    .restart local v15       #positionOfNewFocus:I
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v13, v15}, Lcom/htc/widget/HtcListViewCore2;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v6

    .line 4242
    .local v6, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v12

    .line 4243
    .local v12, maxScrollAmount:I
    if-ge v6, v12, :cond_15

    .line 4245
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 4246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v6}, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;->populate(II)V

    .line 4247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    move-object/from16 v22, v0

    goto/16 :goto_1

    .line 4248
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/widget/HtcListViewCore2;->distanceToView(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    if-ge v0, v12, :cond_16

    .line 4253
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 4254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v12}, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;->populate(II)V

    .line 4255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    move-object/from16 v22, v0

    goto/16 :goto_1

    .line 4258
    .end local v6           #focusScroll:I
    .end local v12           #maxScrollAmount:I
    .end local v15           #positionOfNewFocus:I
    :cond_16
    const/16 v22, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 3601
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_1

    .line 3687
    :cond_0
    :goto_0
    return v8

    .line 3605
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 3607
    .local v5, selectedView:Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 3608
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Lcom/htc/widget/HtcListViewCore2;->amountToScroll(II)I

    move-result v0

    .line 3611
    .local v0, amountToScroll:I
    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v6, :cond_9

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->arrowScrollFocused(I)Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    move-result-object v1

    .line 3612
    .local v1, focusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 3613
    invoke-virtual {v1}, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 3614
    invoke-virtual {v1}, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 3617
    :cond_2
    if-eqz v1, :cond_a

    move v3, v7

    .line 3618
    .local v3, needToRedraw:Z
    :goto_2
    if-eq v4, v9, :cond_4

    .line 3619
    if-eqz v1, :cond_b

    move v6, v7

    :goto_3
    invoke-direct {p0, v5, p1, v4, v6}, Lcom/htc/widget/HtcListViewCore2;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 3620
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->setSelectedPositionInt(I)V

    .line 3621
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    .line 3622
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 3623
    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v6, :cond_3

    if-nez v1, :cond_3

    .line 3626
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 3627
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 3628
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 3631
    .end local v2           #focused:Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 3632
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->checkSelectionChanged()V

    .line 3635
    :cond_4
    if-lez v0, :cond_5

    .line 3637
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 3638
    const/16 v6, 0x11

    if-ne p1, v6, :cond_c

    .end local v0           #amountToScroll:I
    :goto_4
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->scrollListItemsBy(I)V

    .line 3643
    :goto_5
    const/4 v3, 0x1

    .line 3648
    :cond_5
    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v6, :cond_6

    if-nez v1, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3650
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 3651
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-lez v6, :cond_6

    .line 3652
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 3657
    .end local v2           #focused:Landroid/view/View;
    :cond_6
    if-ne v4, v9, :cond_7

    if-eqz v5, :cond_7

    invoke-direct {p0, v5, p0}, Lcom/htc/widget/HtcListViewCore2;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 3659
    const/4 v5, 0x0

    .line 3660
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->hideSelector()V

    .line 3664
    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3667
    :cond_7
    if-eqz v3, :cond_0

    .line 3669
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3670
    if-eqz v5, :cond_8

    .line 3671
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    .line 3672
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    .line 3682
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    .line 3683
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    move v8, v7

    .line 3684
    goto/16 :goto_0

    .line 3611
    .end local v1           #focusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    .restart local v0       #amountToScroll:I
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1       #focusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;
    :cond_a
    move v3, v8

    .line 3617
    goto :goto_2

    .restart local v3       #needToRedraw:Z
    :cond_b
    move v6, v8

    .line 3619
    goto :goto_3

    .line 3638
    :cond_c
    neg-int v0, v0

    goto :goto_4

    .line 3640
    :cond_d
    const/16 v6, 0x21

    if-ne p1, v6, :cond_e

    .end local v0           #amountToScroll:I
    :goto_7
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->scrollListItemsBy(I)V

    goto :goto_5

    .restart local v0       #amountToScroll:I
    :cond_e
    neg-int v0, v0

    goto :goto_7

    .line 3675
    .end local v0           #amountToScroll:I
    :cond_f
    if-eqz v5, :cond_8

    .line 3676
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    .line 3677
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    goto :goto_6
.end method

.method private cancelPressAnimation()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 5247
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;

    if-eqz v3, :cond_0

    .line 5248
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5250
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 5251
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 5252
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 5253
    .local v0, anim:Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_1

    .line 5254
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 5255
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5257
    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 5258
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 5250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5260
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    .end local v2           #v:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5261
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 5262
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/16 v8, 0x82

    const/16 v7, 0x42

    const/16 v6, 0x21

    const/16 v5, 0x11

    const/4 v3, 0x1

    .line 3209
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_1

    .line 3210
    const/4 v3, 0x0

    .line 3337
    :cond_0
    :goto_0
    return v3

    .line 3213
    :cond_1
    iget-boolean v4, p0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    if-eqz v4, :cond_2

    .line 3214
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->layoutChildren()V

    .line 3217
    :cond_2
    const/4 v1, 0x0

    .line 3218
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 3220
    .local v0, action:I
    if-eq v0, v3, :cond_4

    .line 3221
    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-gez v4, :cond_3

    .line 3222
    sparse-switch p1, :sswitch_data_0

    .line 3233
    :cond_3
    sparse-switch p1, :sswitch_data_1

    .line 3319
    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 3320
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore2;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 3323
    :cond_5
    if-nez v1, :cond_0

    .line 3326
    packed-switch v0, :pswitch_data_0

    .line 3337
    const/4 v3, 0x0

    goto :goto_0

    .line 3228
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->resurrectSelection()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 3237
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 3238
    :goto_2
    if-lez p2, :cond_4

    .line 3239
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListViewCore2;->arrowScroll(I)Z

    move-result v1

    .line 3240
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 3243
    :cond_6
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListViewCore2;->fullScroll(I)Z

    move-result v1

    .line 3246
    goto :goto_1

    .line 3250
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_8

    .line 3251
    :goto_3
    if-lez p2, :cond_7

    .line 3252
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->arrowScroll(I)Z

    move-result v1

    .line 3253
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 3255
    :cond_7
    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x1

    .line 3256
    .local v2, lastPosition:I
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mLastPosition:I

    if-eq v4, v2, :cond_4

    .line 3257
    iput v2, p0, Lcom/htc/widget/HtcListViewCore2;->mLastPosition:I

    .line 3258
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->layoutChildren()V

    goto :goto_1

    .line 3261
    .end local v2           #lastPosition:I
    :cond_8
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->fullScroll(I)Z

    move-result v1

    .line 3264
    goto :goto_1

    .line 3267
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3268
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 3269
    :goto_4
    if-lez p2, :cond_4

    .line 3270
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->arrowScroll(I)Z

    move-result v1

    .line 3271
    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    .line 3274
    :cond_9
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    .line 3277
    :cond_a
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 3279
    goto :goto_1

    .line 3281
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3282
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_b

    .line 3283
    :goto_5
    if-lez p2, :cond_4

    .line 3284
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->arrowScroll(I)Z

    move-result v1

    .line 3285
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    .line 3288
    :cond_b
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->fullScroll(I)Z

    move-result v1

    goto/16 :goto_1

    .line 3291
    :cond_c
    invoke-direct {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 3294
    goto/16 :goto_1

    .line 3298
    :sswitch_5
    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-lez v4, :cond_e

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_e

    .line 3299
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->keyPressed()V

    .line 3303
    :cond_d
    :goto_6
    const/4 v1, 0x1

    .line 3304
    goto/16 :goto_1

    .line 3300
    :cond_e
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3301
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->unPressedUnSelectChildren(Landroid/view/View;)V

    goto :goto_6

    .line 3307
    :sswitch_6
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3308
    :cond_f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_10

    .line 3309
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->pageScroll(I)Z

    .line 3313
    :goto_7
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 3311
    :cond_10
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListViewCore2;->pageScroll(I)Z

    goto :goto_7

    .line 3328
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView2;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 3331
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView2;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 3334
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView2;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 3222
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 3233
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    .line 3326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 13
    .parameter "childCount"

    .prologue
    const/4 v12, 0x0

    .line 2276
    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v10, p1

    add-int/lit8 v7, v10, -0x1

    .line 2277
    .local v7, lastPosition:I
    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ne v7, v10, :cond_2

    if-lez p1, :cond_2

    .line 2280
    add-int/lit8 v10, p1, -0x1

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2283
    .local v6, lastChild:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2285
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v8

    .line 2288
    .local v8, lastRight:I
    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mRight:I

    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mLeft:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBoundary()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBorderWidth()I

    move-result v11

    sub-int v1, v10, v11

    .line 2292
    .local v1, end:I
    sub-int v9, v1, v8

    .line 2293
    .local v9, rightOffset:I
    invoke-virtual {p0, v12}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2294
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2298
    .local v3, firstLeft:I
    if-lez v9, :cond_2

    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-gtz v10, :cond_0

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-ge v3, v10, :cond_2

    .line 2299
    :cond_0
    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-nez v10, :cond_1

    .line 2301
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2304
    :cond_1
    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    .line 2305
    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-lez v10, :cond_2

    .line 2308
    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v11

    iget v12, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    .line 2310
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 2348
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstLeft:I
    .end local v6           #lastChild:Landroid/view/View;
    .end local v8           #lastRight:I
    .end local v9           #rightOffset:I
    :cond_2
    :goto_0
    return-void

    .line 2316
    .restart local v6       #lastChild:Landroid/view/View;
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2319
    .local v5, lastBottom:I
    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mBottom:I

    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mTop:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBoundary()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBorderHeight()I

    move-result v11

    sub-int v1, v10, v11

    .line 2323
    .restart local v1       #end:I
    sub-int v0, v1, v5

    .line 2324
    .local v0, bottomOffset:I
    invoke-virtual {p0, v12}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2325
    .restart local v2       #firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2329
    .local v4, firstTop:I
    if-lez v0, :cond_2

    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-gtz v10, :cond_4

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v4, v10, :cond_2

    .line 2330
    :cond_4
    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-nez v10, :cond_5

    .line 2332
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v4

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2335
    :cond_5
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    .line 2336
    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-lez v10, :cond_2

    .line 2339
    iget v10, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    iget v12, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    sub-int/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    .line 2341
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private correctTooLow(I)V
    .locals 14
    .parameter "childCount"

    .prologue
    .line 2361
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-nez v11, :cond_2

    if-lez p1, :cond_2

    .line 2364
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2367
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2369
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2372
    .local v2, firstLeft:I
    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBoundary()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBorderWidth()I

    move-result v12

    add-int v9, v11, v12

    .line 2375
    .local v9, start:I
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mRight:I

    iget v12, p0, Lcom/htc/widget/HtcAdapterView2;->mLeft:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBorderWidth()I

    move-result v12

    sub-int v0, v11, v12

    .line 2379
    .local v0, end:I
    sub-int v8, v2, v9

    .line 2380
    .local v8, leftOffset:I
    add-int/lit8 v11, p1, -0x1

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2381
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    .line 2382
    .local v7, lastRight:I
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v11, p1

    add-int/lit8 v6, v11, -0x1

    .line 2386
    .local v6, lastPosition:I
    if-lez v8, :cond_2

    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-lt v6, v11, :cond_0

    if-le v7, v0, :cond_2

    .line 2387
    :cond_0
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ne v6, v11, :cond_1

    .line 2389
    sub-int v11, v7, v0

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2392
    :cond_1
    neg-int v11, v8

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    .line 2393
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_2

    .line 2396
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v12

    iget v13, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    add-int/2addr v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 2398
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 2438
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstLeft:I
    .end local v5           #lastChild:Landroid/view/View;
    .end local v6           #lastPosition:I
    .end local v7           #lastRight:I
    .end local v8           #leftOffset:I
    .end local v9           #start:I
    :cond_2
    :goto_0
    return-void

    .line 2403
    .restart local v1       #firstChild:Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2406
    .local v3, firstTop:I
    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBoundary()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBorderHeight()I

    move-result v12

    add-int v9, v11, v12

    .line 2409
    .restart local v9       #start:I
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mBottom:I

    iget v12, p0, Lcom/htc/widget/HtcAdapterView2;->mTop:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBorderHeight()I

    move-result v12

    sub-int v0, v11, v12

    .line 2413
    .restart local v0       #end:I
    sub-int v10, v3, v9

    .line 2414
    .local v10, topOffset:I
    add-int/lit8 v11, p1, -0x1

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2415
    .restart local v5       #lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 2416
    .local v4, lastBottom:I
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v11, p1

    add-int/lit8 v6, v11, -0x1

    .line 2420
    .restart local v6       #lastPosition:I
    if-lez v10, :cond_2

    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-lt v6, v11, :cond_4

    if-le v4, v0, :cond_2

    .line 2421
    :cond_4
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ne v6, v11, :cond_5

    .line 2423
    sub-int v11, v4, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2426
    :cond_5
    neg-int v11, v10

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    .line 2427
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_2

    .line 2430
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v12

    iget v13, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    add-int/2addr v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 2432
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 5
    .parameter "descendant"

    .prologue
    .line 4351
    const/4 v0, 0x0

    .line 4352
    .local v0, distance:I
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4353
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v3}, Lcom/htc/widget/HtcListViewCore2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4356
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4357
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mRight:I

    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mLeft:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v2, v3, v4

    .line 4358
    .local v2, listRight:I
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_1

    .line 4359
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v0, v3, v4

    .line 4372
    .end local v2           #listRight:I
    :cond_0
    :goto_0
    return v0

    .line 4360
    .restart local v2       #listRight:I
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v3, v2, :cond_0

    .line 4361
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v3, v2

    goto :goto_0

    .line 4364
    .end local v2           #listRight:I
    :cond_2
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mBottom:I

    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v3, v4

    .line 4365
    .local v1, listBottom:I
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_3

    .line 4366
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    goto :goto_0

    .line 4367
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v3, v1, :cond_0

    .line 4368
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 4
    .parameter "sel"
    .parameter "position"

    .prologue
    .line 1244
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1245
    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    .line 1246
    .local v1, dividerWidth:I
    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v2, :cond_0

    .line 1247
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    .line 1248
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 1249
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 1267
    .end local v1           #dividerWidth:I
    :goto_0
    return-void

    .line 1251
    .restart local v1       #dividerWidth:I
    :cond_0
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 1252
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 1253
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1256
    .end local v1           #dividerWidth:I
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    .line 1257
    .local v0, dividerHeight:I
    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v2, :cond_2

    .line 1258
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    .line 1259
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 1260
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    goto :goto_0

    .line 1262
    :cond_2
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 1263
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 1264
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 11
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 1196
    sub-int v6, p2, p1

    .line 1199
    .local v6, height:I
    sub-int v10, p2, p1

    .line 1202
    .local v10, width:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->reconcileSelectedPosition()I

    move-result v1

    .line 1204
    .local v1, position:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 1206
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 1209
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1210
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1211
    .local v9, selWidth:I
    if-gt v9, v10, :cond_0

    .line 1212
    sub-int v0, v10, v9

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1222
    .end local v9           #selWidth:I
    :cond_0
    :goto_0
    invoke-direct {p0, v7, v1}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1224
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1225
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    .line 1230
    :goto_1
    return-object v7

    .line 1215
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1216
    .local v8, selHeight:I
    if-gt v8, v6, :cond_0

    .line 1217
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 1227
    .end local v8           #selHeight:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 17
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

    move-result v9

    .line 1284
    .local v9, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    .line 1288
    .local v3, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v9, v3}, Lcom/htc/widget/HtcListViewCore2;->getTopSelectionPixel(III)I

    move-result v16

    .line 1290
    .local v16, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v9, v3}, Lcom/htc/widget/HtcListViewCore2;->getBottomSelectionPixel(III)I

    move-result v8

    .line 1294
    .local v8, bottomSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v9, v3}, Lcom/htc/widget/HtcListViewCore2;->getTopSelectionPixel(III)I

    move-result v10

    .line 1296
    .local v10, leftSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v9, v3}, Lcom/htc/widget/HtcListViewCore2;->getBottomSelectionPixel(III)I

    move-result v12

    .line 1300
    .local v12, rightSelectionPixel:I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v13

    .line 1303
    .local v13, sel:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1305
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v12, :cond_1

    .line 1308
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v14, v2, v10

    .line 1312
    .local v14, spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v15, v2, v12

    .line 1313
    .local v15, spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1316
    .local v11, offset:I
    neg-int v2, v11

    invoke-virtual {v13, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1361
    .end local v11           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1363
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v2, :cond_4

    .line 1364
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    .line 1369
    :goto_1
    return-object v13

    .line 1317
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, v10, :cond_0

    .line 1320
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v14, v10, v2

    .line 1324
    .restart local v14       #spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v15, v12, v2

    .line 1325
    .restart local v15       #spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1328
    .restart local v11       #offset:I
    invoke-virtual {v13, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 1332
    .end local v11           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_3

    .line 1335
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v14, v2, v16

    .line 1339
    .restart local v14       #spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v15, v2, v8

    .line 1340
    .restart local v15       #spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1343
    .restart local v11       #offset:I
    neg-int v2, v11

    invoke-virtual {v13, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 1344
    .end local v11           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v16

    if-ge v2, v0, :cond_0

    .line 1347
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v14, v16, v2

    .line 1351
    .restart local v14       #spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v15, v8, v2

    .line 1352
    .restart local v15       #spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1355
    .restart local v11       #offset:I
    invoke-virtual {v13, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 1366
    .end local v11           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2
    .parameter "nextTop"

    .prologue
    .line 1175
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 1176
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 1177
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 1178
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 1180
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 2191
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 2194
    .local v5, tempIsSelected:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2195
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v11

    .line 2202
    .local v11, temp:Landroid/view/View;
    :goto_1
    iput p1, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 2208
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2209
    iget v10, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    .line 2210
    .local v10, dividerWidth:I
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v0, :cond_3

    .line 2211
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 2213
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 2214
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 2215
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v8

    .line 2216
    .local v8, childCount:I
    if-lez v8, :cond_0

    .line 2217
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    .line 2256
    .end local v10           #dividerWidth:I
    :cond_0
    :goto_2
    if-eqz v5, :cond_6

    .line 2261
    .end local v11           #temp:Landroid/view/View;
    :goto_3
    return-object v11

    .line 2191
    .end local v5           #tempIsSelected:Z
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2198
    .restart local v5       #tempIsSelected:Z
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v11

    .restart local v11       #temp:Landroid/view/View;
    goto :goto_1

    .line 2220
    .restart local v10       #dividerWidth:I
    :cond_3
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 2222
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 2223
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 2224
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v8

    .line 2225
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 2226
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

    goto :goto_2

    .line 2230
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    .end local v10           #dividerWidth:I
    :cond_4
    iget v9, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    .line 2231
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v0, :cond_5

    .line 2232
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 2234
    .restart local v6       #above:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 2235
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 2236
    .restart local v7       #below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v8

    .line 2237
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 2238
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    goto :goto_2

    .line 2241
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    :cond_5
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 2243
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 2244
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 2245
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v8

    .line 2246
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 2247
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

    goto :goto_2

    .line 2258
    .end local v9           #dividerHeight:I
    :cond_6
    if-eqz v6, :cond_7

    move-object v11, v6

    .line 2259
    goto/16 :goto_3

    :cond_7
    move-object v11, v7

    .line 2261
    goto/16 :goto_3
.end method

.method private get2DPressAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 6
    .parameter "animatedView"

    .prologue
    const/4 v5, 0x2

    .line 5233
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 5234
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 5235
    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 5236
    .local v1, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const-string v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 5237
    .local v2, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5238
    .local v0, pressAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5239
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5240
    return-object v0

    .line 5235
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 5236
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method

.method private get2DReleaseAnimation(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .locals 13
    .parameter "animatedView"
    .parameter "onlyRelease"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    .line 5208
    const/4 v1, 0x0

    .line 5209
    .local v1, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x0

    .line 5210
    .local v2, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    const v4, 0x3f666666

    .line 5211
    .local v4, scaleX:F
    const v5, 0x3f666666

    .line 5212
    .local v5, scaleY:F
    iget v6, p0, Lcom/htc/widget/HtcListViewCore2;->mReleaseAnimationDuration:I

    add-int/lit8 v0, v6, 0x64

    .line 5213
    .local v0, duration:I
    if-eqz p2, :cond_0

    .line 5214
    const-string v6, "scaleX"

    new-array v7, v11, [F

    aput v4, v7, v9

    aput v8, v7, v10

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 5215
    const-string v6, "scaleY"

    new-array v7, v11, [F

    aput v5, v7, v9

    aput v8, v7, v10

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 5216
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mReleaseAnimationDuration:I

    .line 5221
    :goto_0
    new-array v6, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v6, v9

    aput-object v2, v6, v10

    invoke-static {p1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 5222
    .local v3, releaseAnimation:Landroid/animation/ObjectAnimator;
    int-to-long v6, v0

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5223
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5224
    return-object v3

    .line 5218
    .end local v3           #releaseAnimation:Landroid/animation/ObjectAnimator;
    :cond_0
    const-string v6, "scaleX"

    new-array v7, v12, [F

    aput v8, v7, v9

    aput v4, v7, v10

    aput v8, v7, v11

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 5219
    const-string v6, "scaleY"

    new-array v7, v12, [F

    aput v8, v7, v9

    aput v5, v7, v10

    aput v8, v7, v11

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto :goto_0
.end method

.method private getArrowScrollPreviewLength()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 3889
    const/4 v0, 0x0

    .line 3890
    .local v0, val:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3891
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHorizontalFadingEdgeLength()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3898
    :goto_0
    return v0

    .line 3894
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 1385
    move v0, p1

    .line 1386
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1387
    sub-int/2addr v0, p2

    .line 1389
    :cond_0
    return v0
.end method

.method private getLeftSelectionPixel(III)I
    .locals 1
    .parameter "childrenLeft"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 1448
    move v0, p1

    .line 1449
    .local v0, leftSelectionPixel:I
    if-lez p3, :cond_0

    .line 1450
    add-int/2addr v0, p2

    .line 1452
    :cond_0
    return v0
.end method

.method private getRightSelectionPixel(III)I
    .locals 2
    .parameter "childrenRight"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 1427
    move v0, p1

    .line 1428
    .local v0, rightSelectionPixel:I
    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1429
    sub-int/2addr v0, p2

    .line 1431
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 1406
    move v0, p1

    .line 1407
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 1408
    add-int/2addr v0, p2

    .line 1410
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 3480
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 3481
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3484
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v3

    .line 3485
    .local v3, numChildren:I
    iget-boolean v5, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 3486
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 3487
    .local v4, selectedView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 3488
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3489
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 3493
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3495
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3496
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/htc/widget/HtcListViewCore2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3497
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcListViewCore2;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3498
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3499
    const/4 v5, 0x1

    .line 3516
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 3506
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3511
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 3512
    invoke-direct {p0, v1, p0}, Lcom/htc/widget/HtcListViewCore2;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 3516
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 16
    .parameter "selectedView"
    .parameter "direction"
    .parameter "newSelectedPosition"
    .parameter "newFocusAssigned"

    .prologue
    .line 3710
    const/4 v14, -0x1

    move/from16 v0, p3

    if-ne v0, v14, :cond_0

    .line 3711
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "newSelectedPosition needs to be valid"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 3719
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3723
    const/4 v3, 0x0

    .line 3724
    .local v3, leftSelected:Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int v10, v14, v15

    .line 3725
    .local v10, selectedIndex:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int v6, p3, v14

    .line 3726
    .local v6, nextSelectedIndex:I
    const/16 v14, 0x11

    move/from16 v0, p2

    if-ne v0, v14, :cond_3

    .line 3727
    move v5, v6

    .line 3728
    .local v5, leftViewIndex:I
    move v9, v10

    .line 3729
    .local v9, rightViewIndex:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3730
    .local v4, leftView:Landroid/view/View;
    move-object/from16 v8, p1

    .line 3731
    .local v8, rightView:Landroid/view/View;
    const/4 v3, 0x1

    .line 3739
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v7

    .line 3742
    .local v7, numChildren:I
    if-eqz v4, :cond_1

    .line 3743
    if-nez p4, :cond_4

    if-eqz v3, :cond_4

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v4, v14}, Landroid/view/View;->setSelected(Z)V

    .line 3744
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v7}, Lcom/htc/widget/HtcListViewCore2;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3748
    :cond_1
    if-eqz v8, :cond_2

    .line 3749
    if-nez p4, :cond_5

    if-nez v3, :cond_5

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v8, v14}, Landroid/view/View;->setSelected(Z)V

    .line 3750
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v7}, Lcom/htc/widget/HtcListViewCore2;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3787
    .end local v3           #leftSelected:Z
    .end local v4           #leftView:Landroid/view/View;
    .end local v5           #leftViewIndex:I
    .end local v8           #rightView:Landroid/view/View;
    .end local v9           #rightViewIndex:I
    :cond_2
    :goto_3
    return-void

    .line 3733
    .end local v7           #numChildren:I
    .restart local v3       #leftSelected:Z
    :cond_3
    move v5, v10

    .line 3734
    .restart local v5       #leftViewIndex:I
    move v9, v6

    .line 3735
    .restart local v9       #rightViewIndex:I
    move-object/from16 v4, p1

    .line 3736
    .restart local v4       #leftView:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .restart local v8       #rightView:Landroid/view/View;
    goto :goto_0

    .line 3743
    .restart local v7       #numChildren:I
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 3749
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .line 3756
    .end local v3           #leftSelected:Z
    .end local v4           #leftView:Landroid/view/View;
    .end local v5           #leftViewIndex:I
    .end local v6           #nextSelectedIndex:I
    .end local v7           #numChildren:I
    .end local v8           #rightView:Landroid/view/View;
    .end local v9           #rightViewIndex:I
    .end local v10           #selectedIndex:I
    :cond_6
    const/4 v11, 0x0

    .line 3757
    .local v11, topSelected:Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int v10, v14, v15

    .line 3758
    .restart local v10       #selectedIndex:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int v6, p3, v14

    .line 3759
    .restart local v6       #nextSelectedIndex:I
    const/16 v14, 0x21

    move/from16 v0, p2

    if-ne v0, v14, :cond_8

    .line 3760
    move v13, v6

    .line 3761
    .local v13, topViewIndex:I
    move v2, v10

    .line 3762
    .local v2, bottomViewIndex:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 3763
    .local v12, topView:Landroid/view/View;
    move-object/from16 v1, p1

    .line 3764
    .local v1, bottomView:Landroid/view/View;
    const/4 v11, 0x1

    .line 3772
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v7

    .line 3775
    .restart local v7       #numChildren:I
    if-eqz v12, :cond_7

    .line 3776
    if-nez p4, :cond_9

    if-eqz v11, :cond_9

    const/4 v14, 0x1

    :goto_5
    invoke-virtual {v12, v14}, Landroid/view/View;->setSelected(Z)V

    .line 3777
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v7}, Lcom/htc/widget/HtcListViewCore2;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3781
    :cond_7
    if-eqz v1, :cond_2

    .line 3782
    if-nez p4, :cond_a

    if-nez v11, :cond_a

    const/4 v14, 0x1

    :goto_6
    invoke-virtual {v1, v14}, Landroid/view/View;->setSelected(Z)V

    .line 3783
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v7}, Lcom/htc/widget/HtcListViewCore2;->measureAndAdjustDown(Landroid/view/View;II)V

    goto :goto_3

    .line 3766
    .end local v1           #bottomView:Landroid/view/View;
    .end local v2           #bottomViewIndex:I
    .end local v7           #numChildren:I
    .end local v12           #topView:Landroid/view/View;
    .end local v13           #topViewIndex:I
    :cond_8
    move v13, v10

    .line 3767
    .restart local v13       #topViewIndex:I
    move v2, v6

    .line 3768
    .restart local v2       #bottomViewIndex:I
    move-object/from16 v12, p1

    .line 3769
    .restart local v12       #topView:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .restart local v1       #bottomView:Landroid/view/View;
    goto :goto_4

    .line 3776
    .restart local v7       #numChildren:I
    :cond_9
    const/4 v14, 0x0

    goto :goto_5

    .line 3782
    :cond_a
    const/4 v14, 0x0

    goto :goto_6
.end method

.method private handleVerticalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 3530
    const/16 v5, 0x21

    if-eq p1, v5, :cond_0

    const/16 v5, 0x82

    if-eq p1, v5, :cond_0

    .line 3531
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3534
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v3

    .line 3535
    .local v3, numChildren:I
    iget-boolean v5, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 3536
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 3537
    .local v4, selectedView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 3538
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3539
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 3543
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3545
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3546
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/htc/widget/HtcListViewCore2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3547
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcListViewCore2;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3548
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3549
    const/4 v5, 0x1

    .line 3566
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 3556
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3561
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 3562
    invoke-direct {p0, v1, p0}, Lcom/htc/widget/HtcListViewCore2;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 3566
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 2783
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2784
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2785
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 2786
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    iget-object v5, v5, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 2797
    :goto_1
    return v5

    .line 2785
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2790
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2791
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2792
    .local v3, numFooters:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 2793
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    iget-object v5, v5, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 2794
    goto :goto_1

    .line 2792
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2797
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 4282
    if-ne p1, p2, :cond_1

    .line 4287
    :cond_0
    :goto_0
    return v1

    .line 4286
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4287
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListViewCore2;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v6, -0x1

    .line 4126
    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 4127
    .local v1, firstPosition:I
    const/16 v7, 0x82

    if-eq p1, v7, :cond_0

    const/16 v7, 0x42

    if-ne p1, v7, :cond_6

    .line 4128
    :cond_0
    iget v7, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-eq v7, v6, :cond_2

    iget v7, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 4130
    .local v5, startPos:I
    :goto_0
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_3

    move v4, v6

    .line 4164
    :cond_1
    :goto_1
    return v4

    .end local v5           #startPos:I
    :cond_2
    move v5, v1

    .line 4128
    goto :goto_0

    .line 4133
    .restart local v5       #startPos:I
    :cond_3
    if-ge v5, v1, :cond_4

    .line 4134
    move v5, v1

    .line 4137
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLastVisiblePosition()I

    move-result v3

    .line 4138
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 4139
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_2
    if-gt v4, v3, :cond_b

    .line 4140
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    .line 4139
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4146
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 4147
    .local v2, last:I
    iget v7, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 4149
    .restart local v5       #startPos:I
    :goto_3
    if-gez v5, :cond_8

    move v4, v6

    .line 4150
    goto :goto_1

    .line 4147
    .end local v5           #startPos:I
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    .line 4152
    .restart local v5       #startPos:I
    :cond_8
    if-le v5, v2, :cond_9

    .line 4153
    move v5, v2

    .line 4156
    :cond_9
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 4157
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_4
    if-lt v4, v1, :cond_b

    .line 4158
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    .line 4157
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2           #last:I
    :cond_b
    move v4, v6

    .line 4164
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"

    .prologue
    .line 2823
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2825
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 2826
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2834
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore2;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 2846
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_0
    return-object v8

    .line 2841
    .end local v8           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 2844
    .restart local v1       #child:Landroid/view/View;
    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore2;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 2846
    .end local v1           #child:Landroid/view/View;
    .restart local v8       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .parameter "child"
    .parameter "childIndex"
    .parameter "numChildren"

    .prologue
    .line 3802
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 3803
    .local v1, oldWidth:I
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->measureItem(Landroid/view/View;)V

    .line 3804
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 3806
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 3809
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v2, v3, v1

    .line 3810
    .local v2, widthDelta:I
    add-int/lit8 v0, p2, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 3811
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3810
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3815
    .end local v0           #i:I
    .end local v2           #widthDelta:I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 10
    .parameter "child"

    .prologue
    const/high16 v9, 0x4000

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v8, 0x0

    .line 3824
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 3829
    .local v4, p:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3830
    if-nez v4, :cond_0

    .line 3831
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .end local v4           #p:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v4, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3836
    .restart local v4       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mHeightMeasureSpec:I

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 3838
    .local v0, childHeightSpec:I
    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3839
    .local v3, lpWidth:I
    if-lez v3, :cond_1

    .line 3840
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3864
    .end local v3           #lpWidth:I
    .local v1, childWidthSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 3865
    return-void

    .line 3843
    .end local v1           #childWidthSpec:I
    .restart local v3       #lpWidth:I
    :cond_1
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1       #childWidthSpec:I
    goto :goto_0

    .line 3847
    .end local v0           #childHeightSpec:I
    .end local v1           #childWidthSpec:I
    .end local v3           #lpWidth:I
    :cond_2
    if-nez v4, :cond_3

    .line 3848
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .end local v4           #p:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v4, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3853
    .restart local v4       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mWidthMeasureSpec:I

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 3855
    .restart local v1       #childWidthSpec:I
    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3856
    .local v2, lpHeight:I
    if-lez v2, :cond_4

    .line 3857
    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0

    .line 3860
    .end local v0           #childHeightSpec:I
    :cond_4
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 9
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/high16 v8, 0x4000

    const/4 v7, 0x0

    .line 1922
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .line 1923
    .local v4, p:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    if-nez v4, :cond_0

    .line 1924
    new-instance v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .end local v4           #p:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView2$LayoutParams;-><init>(III)V

    .line 1926
    .restart local v4       #p:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1928
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    iput v5, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    .line 1931
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1932
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1934
    .local v0, childHeightSpec:I
    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1936
    .local v3, lpWidth:I
    if-lez v3, :cond_1

    .line 1937
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1941
    .local v1, childWidthSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1955
    .end local v3           #lpWidth:I
    :goto_1
    return-void

    .line 1939
    .end local v1           #childWidthSpec:I
    .restart local v3       #lpWidth:I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1       #childWidthSpec:I
    goto :goto_0

    .line 1943
    .end local v0           #childHeightSpec:I
    .end local v1           #childWidthSpec:I
    .end local v3           #lpWidth:I
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1945
    .restart local v1       #childWidthSpec:I
    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1947
    .local v2, lpHeight:I
    if-lez v2, :cond_3

    .line 1948
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1952
    .restart local v0       #childHeightSpec:I
    :goto_2
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 1950
    .end local v0           #childHeightSpec:I
    :cond_3
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_2
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 25
    .parameter "oldSel"
    .parameter "newSel"
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 1565
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1566
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getHorizontalFadingEdgeLength()I

    move-result v12

    .line 1567
    .local v12, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    move/from16 v21, v0

    .line 1569
    .local v21, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v21

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/widget/HtcListViewCore2;->getLeftSelectionPixel(III)I

    move-result v14

    .line 1571
    .local v14, leftSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v21

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/widget/HtcListViewCore2;->getRightSelectionPixel(III)I

    move-result v19

    .line 1574
    .local v19, rightSelectionPixel:I
    if-lez p3, :cond_2

    .line 1596
    add-int/lit8 v4, v21, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1599
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    .line 1602
    .local v11, dividerWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v7, v3, v11

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1606
    .local v20, sel:Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v3

    move/from16 v0, v19

    if-le v3, v0, :cond_0

    .line 1609
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v22, v3, v14

    .line 1612
    .local v22, spaceAbove:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v23, v3, v19

    .line 1615
    .local v23, spaceBelow:I
    sub-int v3, p5, p4

    div-int/lit8 v13, v3, 0x2

    .line 1616
    .local v13, halfVerticalSpace:I
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1617
    .local v17, offset:I
    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1620
    move/from16 v0, v17

    neg-int v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1622
    move/from16 v0, v17

    neg-int v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1626
    .end local v13           #halfVerticalSpace:I
    .end local v17           #offset:I
    .end local v22           #spaceAbove:I
    .end local v23           #spaceBelow:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1627
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    .line 1628
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 1629
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 1856
    .end local v11           #dividerWidth:I
    .end local v14           #leftSelectionPixel:I
    .end local v19           #rightSelectionPixel:I
    :goto_0
    return-object v20

    .line 1631
    .restart local v11       #dividerWidth:I
    .restart local v14       #leftSelectionPixel:I
    .restart local v19       #rightSelectionPixel:I
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 1632
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 1633
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1635
    .end local v11           #dividerWidth:I
    .end local v20           #sel:Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1656
    if-eqz p2, :cond_4

    .line 1658
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1668
    .restart local v20       #sel:Landroid/view/View;
    :goto_1
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v14, :cond_3

    .line 1670
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v22, v14, v3

    .line 1673
    .restart local v22       #spaceAbove:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v23, v19, v3

    .line 1676
    .restart local v23       #spaceBelow:I
    sub-int v3, p5, p4

    div-int/lit8 v13, v3, 0x2

    .line 1677
    .restart local v13       #halfVerticalSpace:I
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1678
    .restart local v17       #offset:I
    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1681
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1685
    .end local v13           #halfVerticalSpace:I
    .end local v17           #offset:I
    .end local v22           #spaceAbove:I
    .end local v23           #spaceBelow:I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1663
    .end local v20           #sel:Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .restart local v20       #sel:Landroid/view/View;
    goto :goto_1

    .line 1688
    .end local v20           #sel:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v18

    .line 1693
    .local v18, oldLeft:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1696
    .restart local v20       #sel:Landroid/view/View;
    move/from16 v0, v18

    move/from16 v1, p4

    if-ge v0, v1, :cond_6

    .line 1699
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v16

    .line 1700
    .local v16, newRight:I
    add-int/lit8 v3, p4, 0x14

    move/from16 v0, v16

    if-ge v0, v3, :cond_6

    .line 1702
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, p4, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1707
    .end local v16           #newRight:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1710
    .end local v12           #fadingEdgeLength:I
    .end local v14           #leftSelectionPixel:I
    .end local v18           #oldLeft:I
    .end local v19           #rightSelectionPixel:I
    .end local v20           #sel:Landroid/view/View;
    .end local v21           #selectedPosition:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

    move-result v12

    .line 1711
    .restart local v12       #fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    move/from16 v21, v0

    .line 1713
    .restart local v21       #selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v21

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/widget/HtcListViewCore2;->getTopSelectionPixel(III)I

    move-result v24

    .line 1715
    .local v24, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v21

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/widget/HtcListViewCore2;->getBottomSelectionPixel(III)I

    move-result v9

    .line 1718
    .local v9, bottomSelectionPixel:I
    if-lez p3, :cond_a

    .line 1740
    add-int/lit8 v4, v21, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1743
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    .line 1746
    .local v10, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v5, v3, v10

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1750
    .restart local v20       #sel:Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v9, :cond_8

    .line 1753
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v22, v3, v24

    .line 1756
    .restart local v22       #spaceAbove:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v23, v3, v9

    .line 1759
    .restart local v23       #spaceBelow:I
    sub-int v3, p5, p4

    div-int/lit8 v13, v3, 0x2

    .line 1760
    .restart local v13       #halfVerticalSpace:I
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1761
    .restart local v17       #offset:I
    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1764
    move/from16 v0, v17

    neg-int v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1766
    move/from16 v0, v17

    neg-int v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1770
    .end local v13           #halfVerticalSpace:I
    .end local v17           #offset:I
    .end local v22           #spaceAbove:I
    .end local v23           #spaceBelow:I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v3, :cond_9

    .line 1771
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    .line 1772
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 1773
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    goto/16 :goto_0

    .line 1775
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 1776
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 1777
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    goto/16 :goto_0

    .line 1779
    .end local v10           #dividerHeight:I
    .end local v20           #sel:Landroid/view/View;
    :cond_a
    if-gez p3, :cond_d

    .line 1800
    if-eqz p2, :cond_c

    .line 1802
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1812
    .restart local v20       #sel:Landroid/view/View;
    :goto_2
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    move/from16 v0, v24

    if-ge v3, v0, :cond_b

    .line 1814
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v22, v24, v3

    .line 1817
    .restart local v22       #spaceAbove:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v23, v9, v3

    .line 1820
    .restart local v23       #spaceBelow:I
    sub-int v3, p5, p4

    div-int/lit8 v13, v3, 0x2

    .line 1821
    .restart local v13       #halfVerticalSpace:I
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1822
    .restart local v17       #offset:I
    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1825
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1829
    .end local v13           #halfVerticalSpace:I
    .end local v17           #offset:I
    .end local v22           #spaceAbove:I
    .end local v23           #spaceBelow:I
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1807
    .end local v20           #sel:Landroid/view/View;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .restart local v20       #sel:Landroid/view/View;
    goto :goto_2

    .line 1832
    .end local v20           #sel:Landroid/view/View;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1837
    .local v5, oldTop:I
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1840
    .restart local v20       #sel:Landroid/view/View;
    move/from16 v0, p4

    if-ge v5, v0, :cond_e

    .line 1843
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 1844
    .local v15, newBottom:I
    add-int/lit8 v3, p4, 0x14

    if-ge v15, v3, :cond_e

    .line 1846
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, p4, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1851
    .end local v15           #newBottom:I
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .parameter "newFocus"

    .prologue
    .line 4267
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    .line 4268
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 4269
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4270
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore2;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4271
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 4268
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4274
    .end local v0           #child:Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    .line 3875
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 3876
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 3877
    .local v4, h:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 3878
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 3879
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 3880
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 3881
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 3882
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 464
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 465
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    .line 466
    .local v1, info:Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;
    iget-object v3, v1, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 467
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 471
    .end local v1           #info:Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;
    :cond_0
    return-void

    .line 464
    .restart local v1       #info:Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 14
    .parameter "amount"

    .prologue
    const/4 v13, 0x0

    .line 4385
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 4386
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    .line 4388
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int v7, v11, v12

    .line 4389
    .local v7, listRight:I
    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v11, Landroid/graphics/Rect;->left:I

    .line 4390
    .local v6, listLeft:I
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    .line 4392
    .local v10, recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    if-gez p1, :cond_3

    .line 4396
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v9

    .line 4397
    .local v9, numChildren:I
    add-int/lit8 v11, v9, -0x1

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4398
    .local v1, last:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    if-ge v11, v7, :cond_0

    .line 4399
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v11, v9

    add-int/lit8 v3, v11, -0x1

    .line 4400
    .local v3, lastVisiblePosition:I
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v3, v11, :cond_0

    .line 4401
    invoke-direct {p0, v1, v3}, Lcom/htc/widget/HtcListViewCore2;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 4402
    add-int/lit8 v9, v9, 0x1

    .line 4406
    goto :goto_0

    .line 4411
    .end local v3           #lastVisiblePosition:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    if-ge v11, v7, :cond_1

    .line 4412
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    .line 4416
    :cond_1
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4417
    .local v0, first:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v11

    if-ge v11, v6, :cond_f

    .line 4418
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .line 4419
    .local v4, layoutParams:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    iget v11, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4420
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->removeViewInLayout(Landroid/view/View;)V

    .line 4421
    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4425
    :goto_2
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4426
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    goto :goto_1

    .line 4423
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_2

    .line 4430
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    .end local v9           #numChildren:I
    :cond_3
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4433
    .restart local v0       #first:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    if-le v11, v6, :cond_4

    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-lez v11, :cond_4

    .line 4434
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    invoke-direct {p0, v0, v11}, Lcom/htc/widget/HtcListViewCore2;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4435
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    goto :goto_3

    .line 4440
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    if-le v11, v6, :cond_5

    .line 4441
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v11, v6, v11

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    .line 4444
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .line 4445
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4448
    .restart local v1       #last:Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    if-le v11, v7, :cond_f

    .line 4449
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .line 4450
    .restart local v4       #layoutParams:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    iget v11, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 4451
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->removeViewInLayout(Landroid/view/View;)V

    .line 4452
    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4456
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4457
    goto :goto_4

    .line 4454
    :cond_6
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_5

    .line 4460
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    .end local v6           #listLeft:I
    .end local v7           #listRight:I
    .end local v10           #recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    :cond_7
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    .line 4462
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v11

    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v11, v12

    .line 4463
    .local v5, listBottom:I
    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v11, Landroid/graphics/Rect;->top:I

    .line 4464
    .local v8, listTop:I
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    .line 4466
    .restart local v10       #recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    if-gez p1, :cond_b

    .line 4470
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v9

    .line 4471
    .restart local v9       #numChildren:I
    add-int/lit8 v11, v9, -0x1

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4472
    .restart local v1       #last:Landroid/view/View;
    :goto_6
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v11, v5, :cond_8

    .line 4473
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v11, v9

    add-int/lit8 v3, v11, -0x1

    .line 4474
    .restart local v3       #lastVisiblePosition:I
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v3, v11, :cond_8

    .line 4475
    invoke-direct {p0, v1, v3}, Lcom/htc/widget/HtcListViewCore2;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 4476
    add-int/lit8 v9, v9, 0x1

    .line 4480
    goto :goto_6

    .line 4485
    .end local v3           #lastVisiblePosition:I
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v11, v5, :cond_9

    .line 4486
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    sub-int v11, v5, v11

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    .line 4490
    :cond_9
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4491
    .restart local v0       #first:Landroid/view/View;
    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v11, v8, :cond_f

    .line 4492
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .line 4493
    .restart local v4       #layoutParams:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    iget v11, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 4494
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->removeViewInLayout(Landroid/view/View;)V

    .line 4495
    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4499
    :goto_8
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4500
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    goto :goto_7

    .line 4497
    :cond_a
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_8

    .line 4504
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    .end local v9           #numChildren:I
    :cond_b
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4507
    .restart local v0       #first:Landroid/view/View;
    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    if-le v11, v8, :cond_c

    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-lez v11, :cond_c

    .line 4508
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    invoke-direct {p0, v0, v11}, Lcom/htc/widget/HtcListViewCore2;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4509
    iget v11, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    goto :goto_9

    .line 4514
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    if-le v11, v8, :cond_d

    .line 4515
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v11, v8, v11

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    .line 4518
    :cond_d
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .line 4519
    .restart local v2       #lastIndex:I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4522
    .restart local v1       #last:Landroid/view/View;
    :goto_a
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    if-le v11, v5, :cond_f

    .line 4523
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .line 4524
    .restart local v4       #layoutParams:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    iget v11, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 4525
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->removeViewInLayout(Landroid/view/View;)V

    .line 4526
    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4530
    :goto_b
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4531
    goto :goto_a

    .line 4528
    :cond_e
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_b

    .line 4539
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    .end local v5           #listBottom:I
    .end local v8           #listTop:I
    :cond_f
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 20
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 2873
    if-nez p1, :cond_1

    .line 2971
    :cond_0
    :goto_0
    return-void

    .line 2876
    :cond_1
    if-eqz p6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->shouldShowSelector()Z

    move-result v17

    if-eqz v17, :cond_7

    const/4 v10, 0x1

    .line 2877
    .local v10, isSelected:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v17

    move/from16 v0, v17

    if-eq v10, v0, :cond_8

    const/4 v15, 0x1

    .line 2878
    .local v15, updateChildSelected:Z
    :goto_2
    if-eqz p7, :cond_2

    if-nez v15, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v17

    if-eqz v17, :cond_9

    :cond_2
    const/4 v13, 0x1

    .line 2882
    .local v13, needToMeasure:Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .line 2883
    .local v14, p:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    if-nez v14, :cond_3

    .line 2884
    new-instance v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .end local v14           #p:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v14, v0, v1, v2}, Lcom/htc/widget/HtcAbsListView2$LayoutParams;-><init>(III)V

    .line 2887
    .restart local v14       #p:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    .line 2889
    if-nez p7, :cond_4

    iget-boolean v0, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    iget v0, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 2891
    :cond_4
    if-eqz p4, :cond_a

    const/16 v17, -0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v14}, Lcom/htc/widget/HtcListViewCore2;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2899
    :goto_5
    if-eqz v15, :cond_5

    .line 2900
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setSelected(Z)V

    .line 2903
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 2904
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v17, p1

    .line 2905
    check-cast v17, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2909
    :cond_6
    if-eqz v13, :cond_11

    .line 2911
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 2912
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mHeightMeasureSpec:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 2914
    .local v5, childHeightSpec:I
    iget v12, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2916
    .local v12, lpWidth:I
    if-lez v12, :cond_e

    .line 2917
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 2921
    .local v8, childWidthSpec:I
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 2939
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v12           #lpWidth:I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 2940
    .local v16, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 2943
    .local v9, h:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 2944
    if-eqz p4, :cond_12

    move/from16 v7, p3

    .line 2946
    .local v7, childTop:I
    :goto_8
    if-eqz v13, :cond_13

    .line 2947
    add-int v4, p5, v9

    .line 2948
    .local v4, childBottom:I
    add-int v6, v7, v16

    .line 2949
    .local v6, childRight:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v7, v1, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 2968
    .end local v4           #childBottom:I
    .end local v6           #childRight:I
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v17

    if-nez v17, :cond_0

    .line 2969
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_0

    .line 2876
    .end local v7           #childTop:I
    .end local v9           #h:I
    .end local v10           #isSelected:Z
    .end local v13           #needToMeasure:Z
    .end local v14           #p:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    .end local v15           #updateChildSelected:Z
    .end local v16           #w:I
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 2877
    .restart local v10       #isSelected:Z
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 2878
    .restart local v15       #updateChildSelected:Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 2891
    .restart local v13       #needToMeasure:Z
    .restart local v14       #p:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 2893
    :cond_b
    iget v0, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 2894
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->recycledHeaderFooter:Z

    .line 2896
    :cond_c
    if-eqz p4, :cond_d

    const/16 v17, -0x1

    :goto_a
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/htc/widget/HtcListViewCore2;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    :cond_d
    const/16 v17, 0x0

    goto :goto_a

    .line 2919
    .restart local v5       #childHeightSpec:I
    .restart local v12       #lpWidth:I
    :cond_e
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8       #childWidthSpec:I
    goto :goto_6

    .line 2923
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v12           #lpWidth:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mWidthMeasureSpec:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 2925
    .restart local v8       #childWidthSpec:I
    iget v11, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2927
    .local v11, lpHeight:I
    if-lez v11, :cond_10

    .line 2928
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2932
    .restart local v5       #childHeightSpec:I
    :goto_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    goto/16 :goto_7

    .line 2930
    .end local v5           #childHeightSpec:I
    :cond_10
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .restart local v5       #childHeightSpec:I
    goto :goto_b

    .line 2936
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v11           #lpHeight:I
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore2;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_7

    .line 2944
    .restart local v9       #h:I
    .restart local v16       #w:I
    :cond_12
    sub-int v7, p3, v16

    goto/16 :goto_8

    .line 2951
    .restart local v7       #childTop:I
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v17, v7, v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2952
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v17, p5, v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_9

    .line 2955
    .end local v7           #childTop:I
    :cond_14
    if-eqz p4, :cond_15

    move/from16 v7, p3

    .line 2957
    .restart local v7       #childTop:I
    :goto_c
    if-eqz v13, :cond_16

    .line 2958
    add-int v6, p5, v16

    .line 2959
    .restart local v6       #childRight:I
    add-int v4, v7, v9

    .line 2960
    .restart local v4       #childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_9

    .line 2955
    .end local v4           #childBottom:I
    .end local v6           #childRight:I
    .end local v7           #childTop:I
    :cond_15
    sub-int v7, p3, v9

    goto :goto_c

    .line 2962
    .restart local v7       #childTop:I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v17, p5, v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2963
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v17, v7, v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_9
.end method

.method private showingBottomFadingEdge()Z
    .locals 6

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v1

    .line 704
    .local v1, childCount:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 705
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 707
    .local v2, lastVisiblePosition:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollY:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 709
    .local v3, listBottom:I
    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingLeftFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 718
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollX:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v0, v2, v3

    .line 719
    .local v0, listLeft:I
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private showingRightFadingEdge()Z
    .locals 6

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    .line 727
    .local v0, childCount:I
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 728
    .local v3, rightOfRightChild:I
    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, -0x1

    .line 730
    .local v1, lastVisiblePosition:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollX:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 732
    .local v2, listRight:I
    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_0

    if-ge v3, v2, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 695
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollY:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 696
    .local v0, listTop:I
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public addFootViewWithoutDivider(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 530
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewWithoutDivider:Landroid/view/View;

    .line 531
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore2;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 532
    return-void
.end method

.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 554
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 555
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 494
    new-instance v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;-><init>(Lcom/htc/widget/HtcListViewCore2;)V

    .line 495
    .local v0, info:Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;
    iput-object p1, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    .line 496
    iput-object p2, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->data:Ljava/lang/Object;

    .line 497
    iput-boolean p3, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->isSelectable:Z

    .line 498
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->onChanged()V

    .line 505
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 422
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 423
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 395
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 396
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;-><init>(Lcom/htc/widget/HtcListViewCore2;)V

    .line 401
    .local v0, info:Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;
    iget-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mTransparentWrap:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mWrappingHeader:Z

    if-nez v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mThisContext:Landroid/content/Context;

    const-string v2, "list_item_4roundx"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    :cond_1
    iput-object p1, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    .line 404
    iput-object p2, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->data:Ljava/lang/Object;

    .line 405
    iput-boolean p3, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->isSelectable:Z

    .line 406
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method arrowScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 3580
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/widget/HtcAdapterView2;->mInLayout:Z

    .line 3581
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->arrowScrollImpl(I)Z

    move-result v0

    .line 3582
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 3583
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3587
    :cond_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView2;->mInLayout:Z

    return v0

    .end local v0           #handled:Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView2;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2979
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView2;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 5581
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 5582
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5584
    :cond_0
    return-void
.end method

.method public disableFakeSelector()V
    .locals 1

    .prologue
    .line 5748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFakeSelectorOn:Z

    .line 5749
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .parameter "canvas"

    .prologue
    .line 4611
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 4612
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    .line 4614
    .local v8, dividerWidth:I
    if-lez v8, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    .line 4616
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    .line 4617
    .local v4, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 4618
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mBottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mTop:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 4620
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v6

    .line 4621
    .local v6, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4622
    .local v12, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    sub-int v22, v22, v23

    add-int/lit8 v11, v22, -0x1

    .line 4623
    .local v11, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/widget/HtcListViewCore2;->mHeaderDividersEnabled:Z

    .line 4624
    .local v13, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterDividersEnabled:Z

    .line 4625
    .local v10, footerDividers:Z
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 4627
    .local v9, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    .line 4629
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mRight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v18, v22, v23

    .line 4631
    .local v18, listRight:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v6, :cond_f

    .line 4632
    if-nez v13, :cond_0

    add-int v22, v9, v14

    move/from16 v0, v22

    if-lt v0, v12, :cond_2

    :cond_0
    if-nez v10, :cond_1

    add-int v22, v9, v14

    move/from16 v0, v22

    if-ge v0, v11, :cond_2

    .line 4634
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4635
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v20

    .line 4636
    .local v20, right:I
    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 4637
    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 4638
    add-int v22, v20, v8

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 4642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v0, v5, :cond_2

    .line 4644
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v14}, Lcom/htc/widget/HtcListViewCore2;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4631
    .end local v5           #child:Landroid/view/View;
    .end local v20           #right:I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 4654
    .end local v14           #i:I
    .end local v18           #listRight:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 4656
    .local v17, listLeft:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_1
    if-ge v14, v6, :cond_f

    .line 4657
    if-nez v13, :cond_4

    add-int v22, v9, v14

    move/from16 v0, v22

    if-lt v0, v12, :cond_6

    :cond_4
    if-nez v10, :cond_5

    add-int v22, v9, v14

    move/from16 v0, v22

    if-ge v0, v11, :cond_6

    .line 4659
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4660
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v15

    .line 4661
    .local v15, left:I
    move/from16 v0, v17

    if-le v15, v0, :cond_6

    .line 4662
    sub-int v22, v15, v8

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 4663
    iput v15, v4, Landroid/graphics/Rect;->right:I

    .line 4671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v0, v5, :cond_6

    .line 4673
    add-int/lit8 v22, v14, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v4, v2}, Lcom/htc/widget/HtcListViewCore2;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4656
    .end local v5           #child:Landroid/view/View;
    .end local v15           #left:I
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 4684
    .end local v4           #bounds:Landroid/graphics/Rect;
    .end local v6           #count:I
    .end local v8           #dividerWidth:I
    .end local v9           #first:I
    .end local v10           #footerDividers:Z
    .end local v11           #footerLimit:I
    .end local v12           #headerCount:I
    .end local v13           #headerDividers:Z
    .end local v14           #i:I
    .end local v17           #listLeft:I
    :cond_7
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    .line 4686
    .local v7, dividerHeight:I
    if-lez v7, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    .line 4688
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    .line 4689
    .restart local v4       #bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 4690
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mRight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 4692
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v6

    .line 4693
    .restart local v6       #count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4694
    .restart local v12       #headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    sub-int v22, v22, v23

    add-int/lit8 v11, v22, -0x1

    .line 4695
    .restart local v11       #footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/widget/HtcListViewCore2;->mHeaderDividersEnabled:Z

    .line 4696
    .restart local v13       #headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterDividersEnabled:Z

    .line 4697
    .restart local v10       #footerDividers:Z
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 4699
    .restart local v9       #first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 4701
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mBottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mTop:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v16, v22, v23

    .line 4703
    .local v16, listBottom:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_2
    if-ge v14, v6, :cond_f

    .line 4704
    if-nez v13, :cond_8

    add-int v22, v9, v14

    move/from16 v0, v22

    if-lt v0, v12, :cond_a

    :cond_8
    if-nez v10, :cond_9

    add-int v22, v9, v14

    move/from16 v0, v22

    if-ge v0, v11, :cond_a

    .line 4706
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4707
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 4708
    .local v3, bottom:I
    move/from16 v0, v16

    if-ge v3, v0, :cond_a

    .line 4709
    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 4710
    add-int v22, v3, v7

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 4714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v0, v5, :cond_a

    .line 4716
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v14}, Lcom/htc/widget/HtcListViewCore2;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4703
    .end local v3           #bottom:I
    .end local v5           #child:Landroid/view/View;
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 4726
    .end local v14           #i:I
    .end local v16           #listBottom:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    .line 4728
    .local v19, listTop:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_3
    if-ge v14, v6, :cond_f

    .line 4729
    if-nez v13, :cond_c

    add-int v22, v9, v14

    move/from16 v0, v22

    if-lt v0, v12, :cond_e

    :cond_c
    if-nez v10, :cond_d

    add-int v22, v9, v14

    move/from16 v0, v22

    if-ge v0, v11, :cond_e

    .line 4731
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4732
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v21

    .line 4733
    .local v21, top:I
    move/from16 v0, v21

    move/from16 v1, v19

    if-le v0, v1, :cond_e

    .line 4734
    sub-int v22, v21, v7

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 4735
    move/from16 v0, v21

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 4743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v0, v5, :cond_e

    .line 4745
    add-int/lit8 v22, v14, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v4, v2}, Lcom/htc/widget/HtcListViewCore2;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4728
    .end local v5           #child:Landroid/view/View;
    .end local v21           #top:I
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 4759
    .end local v4           #bounds:Landroid/graphics/Rect;
    .end local v6           #count:I
    .end local v7           #dividerHeight:I
    .end local v9           #first:I
    .end local v10           #footerDividers:Z
    .end local v11           #footerLimit:I
    .end local v12           #headerCount:I
    .end local v13           #headerDividers:Z
    .end local v14           #i:I
    .end local v19           #listTop:I
    :cond_f
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView2;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4760
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 3168
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 3169
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 3171
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3172
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 3175
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore2;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 3178
    .end local v0           #focused:Landroid/view/View;
    :cond_0
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 5308
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v1}, Lcom/htc/widget/HtcFastScroller3;->getState()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 5309
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->cancelPressAnimation()V

    .line 5311
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    .line 5312
    .local v0, is2Point:Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScrollEnabled:Z

    if-eqz v1, :cond_1

    .line 5313
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->cancelPressAnimation()V

    .line 5315
    :cond_1
    iget-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mClickAnimationEnabled:Z

    if-eqz v1, :cond_2

    .line 5316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    if-ne v1, v3, :cond_4

    .line 5317
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->cancelPressAnimation()V

    .line 5322
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 5311
    .end local v0           #is2Point:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 5318
    .restart local v0       #is2Point:Z
    :cond_4
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 5319
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->cancelPressAnimation()V

    goto :goto_1
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 4
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 4775
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    .line 4776
    .local v2, seperatorDivider:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 4777
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mClipDivider:Z

    .line 4779
    .local v0, clipDivider:Z
    if-nez v0, :cond_1

    .line 4780
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4781
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4786
    :goto_0
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v3, p3

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->shouldDrawSeperatorDivider(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4787
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4792
    :goto_1
    if-eqz v0, :cond_0

    .line 4793
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4795
    :cond_0
    return-void

    .line 4783
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4784
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 4789
    :cond_2
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected fillDown(II)Landroid/view/View;
    .locals 10
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    .line 1069
    const/4 v8, 0x0

    .line 1072
    .local v8, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1073
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mRight:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mLeft:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v7, v0, v1

    .line 1075
    .local v7, end:I
    :goto_0
    if-ge p2, v7, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-ge p1, v0, :cond_0

    .line 1077
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1078
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 1081
    .local v6, child:Landroid/view/View;
    if-nez v6, :cond_2

    .line 1108
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_0
    return-object v8

    :cond_1
    move v5, v9

    .line 1077
    goto :goto_1

    .line 1083
    .restart local v5       #selected:Z
    .restart local v6       #child:Landroid/view/View;
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    add-int p2, v0, v1

    .line 1084
    if-eqz v5, :cond_3

    .line 1085
    move-object v8, v6

    .line 1087
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 1088
    goto :goto_0

    .line 1090
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    .end local v7           #end:I
    :cond_4
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mBottom:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mTop:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v1

    .line 1092
    .restart local v7       #end:I
    :goto_2
    if-ge p2, v7, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-ge p1, v0, :cond_0

    .line 1094
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-ne p1, v0, :cond_6

    move v5, v3

    .line 1095
    .restart local v5       #selected:Z
    :goto_3
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 1098
    .restart local v6       #child:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 1100
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    add-int p2, v0, v1

    .line 1101
    if-eqz v5, :cond_5

    .line 1102
    move-object v8, v6

    .line 1104
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 1105
    goto :goto_2

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_6
    move v5, v9

    .line 1094
    goto :goto_3
.end method

.method fillGap(Z)V
    .locals 4
    .parameter "down"

    .prologue
    const/4 v3, 0x0

    .line 1014
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    .line 1017
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1018
    if-eqz p1, :cond_1

    .line 1019
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    add-int v1, v2, v3

    .line 1022
    .local v1, startOffset:I
    :goto_0
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 1023
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    .line 1048
    :goto_1
    return-void

    .line 1019
    .end local v1           #startOffset:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getListPaddingLeft()I

    move-result v1

    goto :goto_0

    .line 1025
    :cond_1
    if-lez v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int v1, v2, v3

    .line 1027
    .restart local v1       #startOffset:I
    :goto_2
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    .line 1028
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

    goto :goto_1

    .line 1025
    .end local v1           #startOffset:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getListPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_2

    .line 1031
    :cond_3
    if-eqz p1, :cond_5

    .line 1032
    if-lez v0, :cond_4

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    add-int v1, v2, v3

    .line 1035
    .restart local v1       #startOffset:I
    :goto_3
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 1036
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    goto :goto_1

    .line 1032
    .end local v1           #startOffset:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getListPaddingTop()I

    move-result v1

    goto :goto_3

    .line 1038
    :cond_5
    if-lez v0, :cond_6

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    sub-int v1, v2, v3

    .line 1040
    .restart local v1       #startOffset:I
    :goto_4
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    .line 1041
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

    goto :goto_1

    .line 1038
    .end local v1           #startOffset:I
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getListPaddingBottom()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_4
.end method

.method protected fillUp(II)Landroid/view/View;
    .locals 10
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 1129
    const/4 v8, 0x0

    .line 1132
    .local v8, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1133
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 1135
    .local v7, end:I
    :goto_0
    if-le p2, v7, :cond_5

    if-ltz p1, :cond_5

    .line 1137
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v9

    .line 1138
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 1139
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int p2, v0, v1

    .line 1140
    if-eqz v5, :cond_0

    .line 1141
    move-object v8, v6

    .line 1143
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 1144
    goto :goto_0

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_1
    move v5, v3

    .line 1137
    goto :goto_1

    .line 1146
    .end local v7           #end:I
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 1148
    .restart local v7       #end:I
    :goto_2
    if-le p2, v7, :cond_5

    if-ltz p1, :cond_5

    .line 1150
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-ne p1, v0, :cond_4

    move v5, v9

    .line 1151
    .restart local v5       #selected:Z
    :goto_3
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 1152
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 1153
    if-eqz v5, :cond_3

    .line 1154
    move-object v8, v6

    .line 1156
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 1157
    goto :goto_2

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_4
    move v5, v3

    .line 1150
    goto :goto_3

    .line 1161
    :cond_5
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 1163
    return-object v8
.end method

.method findMotionColumn(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 2147
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    .line 2148
    .local v0, childCount:I
    if-lez v0, :cond_2

    .line 2149
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2150
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2151
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 2152
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 2157
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 2149
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2155
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2157
    .end local v1           #i:I
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 2164
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    .line 2165
    .local v0, childCount:I
    if-lez v0, :cond_2

    .line 2166
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2167
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2168
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 2169
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 2174
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 2166
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2172
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2174
    .end local v1           #i:I
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 5044
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 5045
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5048
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 5049
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    iget-object v2, v3, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    .line 5051
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5052
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 5054
    if-eqz v2, :cond_0

    .line 5060
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 5048
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5060
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 5094
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 5095
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5098
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 5099
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    iget-object v2, v3, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    .line 5101
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5102
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 5104
    if-eqz v2, :cond_0

    .line 5110
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 5098
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5110
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .parameter "id"

    .prologue
    .line 5025
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 5026
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 5027
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore2;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 5028
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 5036
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 5031
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore2;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 5032
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 5033
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 5036
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    .line 5074
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 5075
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 5076
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore2;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 5077
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 5086
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 5081
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore2;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 5082
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 5083
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 5086
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3411
    const/4 v0, 0x0

    .line 3414
    .local v0, moved:Z
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3415
    const/16 v2, 0x11

    if-ne p1, v2, :cond_3

    .line 3416
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 3417
    invoke-virtual {p0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 3418
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 3419
    const/4 v2, 0x7

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3420
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionInt(I)V

    .line 3421
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    .line 3423
    :cond_0
    const/4 v0, 0x1

    .line 3463
    .end local v1           #position:I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 3464
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    .line 3467
    :cond_2
    return v0

    .line 3425
    :cond_3
    const/16 v2, 0x42

    if-ne p1, v2, :cond_1

    .line 3426
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 3427
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 3429
    .restart local v1       #position:I
    if-ltz v1, :cond_4

    .line 3430
    const/16 v2, 0x8

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3431
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionInt(I)V

    .line 3432
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    .line 3434
    :cond_4
    const/4 v0, 0x1

    .line 3435
    goto :goto_0

    .line 3438
    .end local v1           #position:I
    :cond_5
    const/16 v2, 0x21

    if-ne p1, v2, :cond_7

    .line 3439
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 3440
    invoke-virtual {p0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 3441
    .restart local v1       #position:I
    if-ltz v1, :cond_6

    .line 3442
    iput v4, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3443
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionInt(I)V

    .line 3444
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    .line 3446
    :cond_6
    const/4 v0, 0x1

    .line 3447
    goto :goto_0

    .line 3448
    .end local v1           #position:I
    :cond_7
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 3449
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 3450
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 3452
    .restart local v1       #position:I
    if-ltz v1, :cond_8

    .line 3453
    const/4 v2, 0x3

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3454
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionInt(I)V

    .line 3455
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    .line 3457
    :cond_8
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5547
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 5549
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 5552
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 5567
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 5568
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 5570
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 5408
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4807
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 4857
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 4887
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 4600
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    return v0
.end method

.method public getListBottom()I
    .locals 2

    .prologue
    .line 5706
    iget v0, p0, Lcom/htc/widget/HtcAdapterView2;->mBottom:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 5714
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mListSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMaxScrollAmount()I
    .locals 4

    .prologue
    const v3, 0x3ea8f5c3

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, amount:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mRight:I

    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v0, v1

    .line 288
    :goto_0
    return v0

    .line 286
    :cond_0
    iget v1, p0, Lcom/htc/widget/HtcAdapterView2;->mBottom:I

    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v0, v1

    goto :goto_0
.end method

.method public getRoundedCornerGetView()Z
    .locals 1

    .prologue
    .line 5785
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mRoundedCornerGetView:Z

    return v0
.end method

.method public isEndRound()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDrawEndRound:Z

    return v0
.end method

.method public isFakeSelectorOn()Z
    .locals 1

    .prologue
    .line 5755
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFakeSelectorOn:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 5526
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 5527
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 5530
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransparentWrap()Z
    .locals 1

    .prologue
    .line 5731
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mTransparentWrap:Z

    return v0
.end method

.method public isUseDivider()Z
    .locals 1

    .prologue
    .line 5770
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mUseDivider:Z

    return v0
.end method

.method public isWrappingHeader()Z
    .locals 1

    .prologue
    .line 5801
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mWrappingHeader:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 29

    .prologue
    .line 2446
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/widget/HtcAdapterView2;->mBlockLayoutRequests:Z

    .line 2447
    .local v14, blockLayoutRequests:Z
    if-nez v14, :cond_0

    .line 2448
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView2;->mBlockLayoutRequests:Z

    .line 2454
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    .line 2456
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    .line 2458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 2459
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->resetList()V

    .line 2460
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2770
    if-nez v14, :cond_0

    .line 2771
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView2;->mBlockLayoutRequests:Z

    .line 2774
    :cond_0
    :goto_0
    return-void

    .line 2464
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBorderHeight()I

    move-result v8

    add-int v12, v2, v8

    .line 2465
    .local v12, childrenTop:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mBottom:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView2;->mTop:I

    sub-int/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBorderHeight()I

    move-result v8

    sub-int v13, v2, v8

    .line 2468
    .local v13, childrenBottom:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBorderWidth()I

    move-result v8

    add-int v6, v2, v8

    .line 2469
    .local v6, childrenLeft:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mRight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView2;->mLeft:I

    sub-int/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBorderWidth()I

    move-result v8

    sub-int v7, v2, v8

    .line 2472
    .local v7, childrenRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v15

    .line 2474
    .local v15, childCount:I
    const/4 v5, 0x0

    .line 2477
    .local v5, delta:I
    const/4 v3, 0x0

    .line 2478
    .local v3, oldSel:Landroid/view/View;
    const/16 v25, 0x0

    .line 2479
    .local v25, oldFirst:Landroid/view/View;
    const/4 v4, 0x0

    .line 2481
    .local v4, newSel:Landroid/view/View;
    const/16 v19, 0x0

    .line 2484
    .local v19, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    .line 2501
    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int v24, v2, v8

    .line 2502
    .local v24, index:I
    if-ltz v24, :cond_2

    move/from16 v0, v24

    if-ge v0, v15, :cond_2

    .line 2503
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2507
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 2509
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    if-ltz v2, :cond_3

    .line 2510
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    sub-int v5, v2, v8

    .line 2514
    :cond_3
    add-int v2, v24, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2518
    .end local v24           #index:I
    :cond_4
    :goto_1
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    move/from16 v16, v0

    .line 2519
    .local v16, dataChanged:Z
    if-eqz v16, :cond_5

    .line 2520
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->handleDataChanged()V

    .line 2525
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-nez v2, :cond_6

    .line 2526
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->resetList()V

    .line 2527
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2770
    if-nez v14, :cond_0

    .line 2771
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView2;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 2486
    .end local v16           #dataChanged:Z
    :pswitch_2
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int v24, v2, v8

    .line 2487
    .restart local v24       #index:I
    if-ltz v24, :cond_4

    move/from16 v0, v24

    if-ge v0, v15, :cond_4

    .line 2488
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 2531
    .end local v24           #index:I
    .restart local v16       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->setSelectedPositionInt(I)V

    .line 2535
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move/from16 v17, v0

    .line 2536
    .local v17, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    .line 2539
    .local v27, recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    const/16 v18, 0x0

    .line 2544
    .local v18, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v16, :cond_7

    .line 2545
    const/16 v23, 0x0

    .local v23, i:I
    :goto_2
    move/from16 v0, v23

    if-ge v0, v15, :cond_8

    .line 2546
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2545
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 2553
    .end local v23           #i:I
    :cond_7
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->fillActiveViews(II)V

    .line 2560
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getFocusedChild()Landroid/view/View;

    move-result-object v22

    .line 2561
    .local v22, focusedChild:Landroid/view/View;
    if-eqz v22, :cond_b

    .line 2566
    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2567
    :cond_9
    move-object/from16 v18, v22

    .line 2569
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->findFocus()Landroid/view/View;

    move-result-object v19

    .line 2570
    if-eqz v19, :cond_a

    .line 2572
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 2575
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->requestFocus()Z

    .line 2580
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->detachAllViewsFromParent()V

    .line 2582
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    .line 2641
    if-nez v15, :cond_1c

    .line 2642
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v2, :cond_1a

    .line 2643
    const/4 v2, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v26

    .line 2644
    .local v26, position:I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectedPositionInt(I)V

    .line 2646
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2647
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->fillFromTop(I)Landroid/view/View;

    move-result-object v28

    .line 2705
    .end local v6           #childrenLeft:I
    .end local v12           #childrenTop:I
    .end local v26           #position:I
    .local v28, sel:Landroid/view/View;
    :goto_3
    invoke-virtual/range {v27 .. v27}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->scrapActiveViews()V

    .line 2707
    if-eqz v28, :cond_29

    .line 2710
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v2, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_28

    .line 2711
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_c

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_d
    const/16 v20, 0x1

    .line 2713
    .local v20, focusWasTaken:Z
    :goto_4
    if-nez v20, :cond_27

    .line 2717
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getFocusedChild()Landroid/view/View;

    move-result-object v21

    .line 2718
    .local v21, focused:Landroid/view/View;
    if-eqz v21, :cond_e

    .line 2719
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->clearFocus()V

    .line 2721
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    .line 2729
    .end local v20           #focusWasTaken:Z
    .end local v21           #focused:Landroid/view/View;
    :goto_5
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 2732
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 2752
    :cond_f
    :goto_6
    if-eqz v19, :cond_10

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 2754
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 2757
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 2758
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    .line 2759
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 2760
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    .line 2762
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->updateScrollIndicators()V

    .line 2764
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-lez v2, :cond_11

    .line 2765
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->checkSelectionChanged()V

    .line 2768
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2770
    if-nez v14, :cond_0

    .line 2771
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView2;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 2585
    .end local v28           #sel:Landroid/view/View;
    .restart local v6       #childrenLeft:I
    .restart local v12       #childrenTop:I
    :pswitch_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2586
    if-eqz v4, :cond_12

    .line 2587
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/htc/widget/HtcListViewCore2;->fillFromSelection(III)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2589
    .end local v28           #sel:Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/htc/widget/HtcListViewCore2;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2592
    .end local v28           #sel:Landroid/view/View;
    :cond_13
    if-eqz v4, :cond_14

    .line 2593
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v13}, Lcom/htc/widget/HtcListViewCore2;->fillFromSelection(III)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2595
    .end local v28           #sel:Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/htc/widget/HtcListViewCore2;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v28

    .line 2598
    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2600
    .end local v28           #sel:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView2;->mSpecificTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .line 2601
    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2603
    .end local v28           #sel:Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v28

    .line 2604
    .restart local v28       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 2770
    .end local v3           #oldSel:Landroid/view/View;
    .end local v4           #newSel:Landroid/view/View;
    .end local v5           #delta:I
    .end local v6           #childrenLeft:I
    .end local v7           #childrenRight:I
    .end local v12           #childrenTop:I
    .end local v13           #childrenBottom:I
    .end local v15           #childCount:I
    .end local v16           #dataChanged:Z
    .end local v17           #firstPosition:I
    .end local v18           #focusLayoutRestoreDirectChild:Landroid/view/View;
    .end local v19           #focusLayoutRestoreView:Landroid/view/View;
    .end local v22           #focusedChild:Landroid/view/View;
    .end local v25           #oldFirst:Landroid/view/View;
    .end local v27           #recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    .end local v28           #sel:Landroid/view/View;
    :catchall_0
    move-exception v2

    if-nez v14, :cond_15

    .line 2771
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/htc/widget/HtcAdapterView2;->mBlockLayoutRequests:Z

    :cond_15
    throw v2

    .line 2607
    .restart local v3       #oldSel:Landroid/view/View;
    .restart local v4       #newSel:Landroid/view/View;
    .restart local v5       #delta:I
    .restart local v6       #childrenLeft:I
    .restart local v7       #childrenRight:I
    .restart local v12       #childrenTop:I
    .restart local v13       #childrenBottom:I
    .restart local v15       #childCount:I
    .restart local v16       #dataChanged:Z
    .restart local v17       #firstPosition:I
    .restart local v18       #focusLayoutRestoreDirectChild:Landroid/view/View;
    .restart local v19       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v22       #focusedChild:Landroid/view/View;
    .restart local v25       #oldFirst:Landroid/view/View;
    .restart local v27       #recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    :pswitch_6
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 2608
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/widget/HtcListViewCore2;->fillFromTop(I)Landroid/view/View;

    move-result-object v28

    .line 2609
    .restart local v28       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 2613
    .end local v28           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v28

    .line 2614
    .restart local v28       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 2617
    .end local v28           #sel:Landroid/view/View;
    :pswitch_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 2618
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->fillFromTop(I)Landroid/view/View;

    move-result-object v28

    .line 2619
    .restart local v28       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 2624
    .end local v28           #sel:Landroid/view/View;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2625
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView2;->mSpecificLeft:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2627
    .end local v28           #sel:Landroid/view/View;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView2;->mSpecificTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .line 2630
    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2633
    .end local v28           #sel:Landroid/view/View;
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v2, p0

    .line 2634
    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore2;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v28           #sel:Landroid/view/View;
    :cond_17
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    .line 2636
    invoke-direct/range {v8 .. v13}, Lcom/htc/widget/HtcListViewCore2;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v28

    .line 2639
    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2649
    .end local v28           #sel:Landroid/view/View;
    .restart local v26       #position:I
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcListViewCore2;->mBottomFirst:Z

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    const/4 v8, 0x1

    if-le v2, v8, :cond_19

    .line 2650
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2652
    .end local v28           #sel:Landroid/view/View;
    :cond_19
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/widget/HtcListViewCore2;->fillFromTop(I)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2657
    .end local v26           #position:I
    .end local v28           #sel:Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v26

    .line 2658
    .restart local v26       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectedPositionInt(I)V

    .line 2660
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2661
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2663
    .end local v28           #sel:Landroid/view/View;
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2668
    .end local v26           #position:I
    .end local v28           #sel:Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-ltz v2, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-ge v2, v8, :cond_20

    .line 2671
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2672
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-nez v3, :cond_1d

    .end local v6           #childrenLeft:I
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v28           #sel:Landroid/view/View;
    .restart local v6       #childrenLeft:I
    :cond_1d
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_7

    .line 2675
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    if-nez v3, :cond_1f

    .end local v12           #childrenTop:I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v28           #sel:Landroid/view/View;
    .restart local v12       #childrenTop:I
    :cond_1f
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v12

    goto :goto_8

    .line 2679
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-ge v2, v8, :cond_24

    .line 2682
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2683
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-nez v25, :cond_21

    .end local v6           #childrenLeft:I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v28           #sel:Landroid/view/View;
    .restart local v6       #childrenLeft:I
    :cond_21
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_9

    .line 2686
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    if-nez v25, :cond_23

    .end local v12           #childrenTop:I
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v28           #sel:Landroid/view/View;
    .restart local v12       #childrenTop:I
    :cond_23
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v12

    goto :goto_a

    .line 2693
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2694
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2696
    .end local v28           #sel:Landroid/view/View;
    :cond_25
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2711
    .end local v6           #childrenLeft:I
    .end local v12           #childrenTop:I
    :cond_26
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 2723
    .restart local v20       #focusWasTaken:Z
    :cond_27
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 2724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 2727
    .end local v20           #focusWasTaken:Z
    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_5

    .line 2735
    :cond_29
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 2738
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    .line 2741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 2745
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v19, :cond_f

    .line 2746
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    .line 2484
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2582
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_a
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 3106
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    .line 3107
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3133
    :cond_0
    :goto_0
    return v2

    .line 3111
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 3112
    .local v1, count:I
    iget-boolean v3, p0, Lcom/htc/widget/HtcListViewCore2;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    .line 3113
    if-eqz p2, :cond_2

    .line 3114
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3115
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3116
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 3119
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3120
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3121
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 3125
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 3128
    goto :goto_0

    .line 3130
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 3133
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    .line 1999
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 2000
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v4, v8, v9

    .line 2052
    :cond_0
    :goto_0
    return v4

    .line 2004
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v7, v8, v9

    .line 2005
    .local v7, returnedHeight:I
    iget v8, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    .line 2008
    .local v2, dividerHeight:I
    :goto_1
    const/4 v4, 0x0

    .line 2013
    .local v4, prevHeightWithoutPartialChild:I
    const/4 v8, -0x1

    if-ne p3, v8, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    add-int/lit8 p3, v8, -0x1

    .line 2014
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    .line 2015
    .local v5, recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->recycleOnMeasure()Z

    move-result v6

    .line 2017
    .local v6, recyle:Z
    move v3, p2

    .local v3, i:I
    :goto_2
    if-gt v3, p3, :cond_9

    .line 2018
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 2020
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1, v3, p1}, Lcom/htc/widget/HtcListViewCore2;->measureScrapChild(Landroid/view/View;II)V

    .line 2022
    if-lez v3, :cond_3

    .line 2024
    add-int/2addr v7, v2

    .line 2028
    :cond_3
    if-eqz v6, :cond_4

    .line 2029
    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2032
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 2034
    if-lt v7, p4, :cond_7

    .line 2037
    if-ltz p5, :cond_5

    if-le v3, p5, :cond_5

    if-lez v4, :cond_5

    if-ne v7, p4, :cond_0

    :cond_5
    move v4, p4

    goto :goto_0

    .line 2005
    .end local v1           #child:Landroid/view/View;
    .end local v2           #dividerHeight:I
    .end local v3           #i:I
    .end local v4           #prevHeightWithoutPartialChild:I
    .end local v5           #recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    .end local v6           #recyle:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 2045
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #dividerHeight:I
    .restart local v3       #i:I
    .restart local v4       #prevHeightWithoutPartialChild:I
    .restart local v5       #recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    .restart local v6       #recyle:Z
    :cond_7
    if-ltz p5, :cond_8

    if-lt v3, p5, :cond_8

    .line 2046
    move v4, v7

    .line 2017
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1           #child:Landroid/view/View;
    :cond_9
    move v4, v7

    .line 2052
    goto :goto_0
.end method

.method final measureWidthOfChildren(IIIII)I
    .locals 10
    .parameter "heightMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxWidth"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    .line 2089
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 2090
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v4, v8, v9

    .line 2142
    :cond_0
    :goto_0
    return v4

    .line 2094
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v7, v8, v9

    .line 2095
    .local v7, returnedWidth:I
    iget v8, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    .line 2098
    .local v2, dividerWidth:I
    :goto_1
    const/4 v4, 0x0

    .line 2103
    .local v4, prevWidthWithoutPartialChild:I
    const/4 v8, -0x1

    if-ne p3, v8, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    add-int/lit8 p3, v8, -0x1

    .line 2104
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    .line 2105
    .local v5, recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->recycleOnMeasure()Z

    move-result v6

    .line 2107
    .local v6, recyle:Z
    move v3, p2

    .local v3, i:I
    :goto_2
    if-gt v3, p3, :cond_9

    .line 2108
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 2110
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1, v3, p1}, Lcom/htc/widget/HtcListViewCore2;->measureScrapChild(Landroid/view/View;II)V

    .line 2112
    if-lez v3, :cond_3

    .line 2114
    add-int/2addr v7, v2

    .line 2118
    :cond_3
    if-eqz v6, :cond_4

    .line 2119
    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2122
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    .line 2124
    if-lt v7, p4, :cond_7

    .line 2127
    if-ltz p5, :cond_5

    if-le v3, p5, :cond_5

    if-lez v4, :cond_5

    if-ne v7, p4, :cond_0

    :cond_5
    move v4, p4

    goto :goto_0

    .line 2095
    .end local v1           #child:Landroid/view/View;
    .end local v2           #dividerWidth:I
    .end local v3           #i:I
    .end local v4           #prevWidthWithoutPartialChild:I
    .end local v5           #recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    .end local v6           #recyle:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 2135
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #dividerWidth:I
    .restart local v3       #i:I
    .restart local v4       #prevWidthWithoutPartialChild:I
    .restart local v5       #recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    .restart local v6       #recyle:Z
    :cond_7
    if-ltz p5, :cond_8

    if-lt v3, p5, :cond_8

    .line 2136
    move v4, v7

    .line 2107
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1           #child:Landroid/view/View;
    :cond_9
    move v4, v7

    .line 2142
    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 5287
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView2;->onDetachedFromWindow()V

    .line 5289
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckForItemReleased:Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;

    if-eqz v0, :cond_0

    .line 5290
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckForItemReleased:Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5292
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mPressedViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 5293
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5295
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mPressAnimators:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 5296
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5298
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 5003
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView2;->onFinishInflate()V

    .line 5005
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    .line 5006
    .local v0, count:I
    if-lez v0, :cond_1

    .line 5007
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5008
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->addHeaderView(Landroid/view/View;)V

    .line 5007
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5010
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->removeAllViews()V

    .line 5012
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 11
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 4951
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView2;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4953
    const/4 v2, -0x1

    .line 4954
    .local v2, closetChildIndex:I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 4955
    iget v9, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollX:I

    iget v10, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollY:I

    invoke-virtual {p3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 4959
    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    .line 4960
    .local v8, otherRect:Landroid/graphics/Rect;
    const v6, 0x7fffffff

    .line 4961
    .local v6, minDistance:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v1

    .line 4962
    .local v1, childCount:I
    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    .line 4963
    .local v4, firstPosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    .line 4965
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 4967
    add-int v9, v4, v5

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 4965
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4971
    :cond_1
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4972
    .local v7, other:Landroid/view/View;
    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4973
    invoke-virtual {p0, v7, v8}, Lcom/htc/widget/HtcListViewCore2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4974
    invoke-static {p3, v8, p2}, Lcom/htc/widget/HtcListViewCore2;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    .line 4976
    .local v3, distance:I
    if-ge v3, v6, :cond_0

    .line 4977
    move v6, v3

    .line 4978
    move v2, v5

    goto :goto_1

    .line 4983
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #childCount:I
    .end local v3           #distance:I
    .end local v4           #firstPosition:I
    .end local v5           #i:I
    .end local v6           #minDistance:I
    .end local v7           #other:Landroid/view/View;
    .end local v8           #otherRect:Landroid/graphics/Rect;
    :cond_2
    if-ltz v2, :cond_3

    .line 4984
    iget v9, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListViewCore2;->setSelection(I)V

    .line 4988
    :goto_2
    return-void

    .line 4986
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3187
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcListViewCore2;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 3196
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore2;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3205
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcListViewCore2;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 18
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1866
    invoke-super/range {p0 .. p2}, Lcom/htc/widget/HtcAbsListView2;->onMeasure(II)V

    .line 1868
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 1869
    .local v17, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 1870
    .local v16, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1871
    .local v11, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1873
    .local v6, heightSize:I
    const/4 v15, 0x0

    .line 1874
    .local v15, childWidth:I
    const/4 v14, 0x0

    .line 1876
    .local v14, childHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    .line 1877
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-lez v2, :cond_1

    if-eqz v17, :cond_0

    if-nez v16, :cond_1

    .line 1879
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v13

    .line 1881
    .local v13, child:Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v2, v1}, Lcom/htc/widget/HtcListViewCore2;->measureScrapChild(Landroid/view/View;II)V

    .line 1883
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1884
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 1886
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->recycleOnMeasure()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v2, v13}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1891
    .end local v13           #child:Landroid/view/View;
    :cond_1
    if-nez v17, :cond_2

    .line 1892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, v15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalScrollbarWidth()I

    move-result v3

    add-int v11, v2, v3

    .line 1896
    :cond_2
    if-nez v16, :cond_3

    .line 1897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr v2, v14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    .line 1901
    :cond_3
    const/high16 v2, -0x8000

    move/from16 v0, v16

    if-ne v0, v2, :cond_4

    .line 1903
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore2;->measureHeightOfChildren(IIIII)I

    move-result v6

    .line 1907
    :cond_4
    const/high16 v2, -0x8000

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    .line 1909
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v12, -0x1

    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-virtual/range {v7 .. v12}, Lcom/htc/widget/HtcListViewCore2;->measureWidthOfChildren(IIIII)I

    move-result v11

    .line 1913
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v6}, Lcom/htc/widget/HtcListViewCore2;->setMeasuredDimension(II)V

    .line 1914
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mWidthMeasureSpec:I

    .line 1917
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mHeightMeasureSpec:I

    .line 1919
    return-void

    .line 1876
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    goto/16 :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 5658
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcListViewCore2$SavedState;

    .line 5660
    .local v0, ss:Lcom/htc/widget/HtcListViewCore2$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcListViewCore2$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5662
    iget-object v1, v0, Lcom/htc/widget/HtcListViewCore2$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_0

    .line 5663
    iget-object v1, v0, Lcom/htc/widget/HtcListViewCore2$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 5666
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 5648
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView2;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 5649
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Lcom/htc/widget/HtcListViewCore2$SavedState;

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0, v2}, Lcom/htc/widget/HtcListViewCore2$SavedState;-><init>(Landroid/os/Parcelable;Landroid/util/SparseBooleanArray;)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 5333
    iget-boolean v2, p0, Lcom/htc/widget/HtcListViewCore2;->mClickAnimationEnabled:Z

    if-eqz v2, :cond_1

    .line 5334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->findMotionColumn(I)I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int v1, v2, v3

    .line 5335
    .local v1, pressedPos:I
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5336
    .local v0, animatedChild:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 5337
    iget-boolean v2, p0, Lcom/htc/widget/HtcListViewCore2;->mClickAnimationEnabled:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    add-int/2addr v3, v1

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    if-eq v2, v5, :cond_2

    .line 5339
    iput-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mPressedView:Landroid/view/View;

    .line 5340
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;

    if-nez v2, :cond_0

    .line 5341
    new-instance v2, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;-><init>(Lcom/htc/widget/HtcListViewCore2;)V

    iput-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;

    .line 5343
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;->setAnimatedView(Landroid/view/View;)V

    .line 5344
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;

    iget-wide v3, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckForPressAnimationDelay:J

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5361
    .end local v0           #animatedChild:Landroid/view/View;
    .end local v1           #pressedPos:I
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-eqz v2, :cond_7

    .line 5364
    const/4 v2, 0x0

    .line 5366
    :goto_1
    return v2

    .line 5345
    .restart local v0       #animatedChild:Landroid/view/View;
    .restart local v1       #pressedPos:I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    if-ne v2, v4, :cond_3

    .line 5346
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->cancelPressAnimation()V

    goto :goto_0

    .line 5347
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    if-eq v2, v5, :cond_6

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v2}, Lcom/htc/widget/HtcFastScroller3;->getState()I

    move-result v2

    if-eq v2, v4, :cond_6

    .line 5349
    :cond_4
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;

    if-eqz v2, :cond_5

    .line 5350
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5352
    :cond_5
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->releaseItem(Landroid/view/View;)V

    goto :goto_0

    .line 5353
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 5354
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->cancelPressAnimation()V

    goto :goto_0

    .line 5366
    .end local v0           #animatedChild:Landroid/view/View;
    .end local v1           #pressedPos:I
    :cond_7
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 5269
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->onWindowFocusChanged(Z)V

    .line 5270
    if-nez p1, :cond_1

    .line 5271
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckForItemReleased:Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;

    if-eqz v0, :cond_0

    .line 5272
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckForItemReleased:Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5277
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mClickAnimationEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->cancelPressAnimation()V

    .line 5279
    :cond_1
    return-void
.end method

.method pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3350
    const/4 v1, -0x1

    .line 3351
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 3353
    .local v0, down:Z
    const/16 v5, 0x21

    if-ne p1, v5, :cond_3

    .line 3354
    iget v5, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3360
    :cond_0
    :goto_0
    if-ltz v1, :cond_6

    .line 3361
    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3362
    .local v2, position:I
    if-ltz v2, :cond_6

    .line 3363
    const/4 v4, 0x4

    iput v4, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3366
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3367
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHorizontalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/HtcAdapterView2;->mSpecificLeft:I

    .line 3369
    if-eqz v0, :cond_1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_1

    .line 3370
    const/16 v4, 0x8

    iput v4, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3373
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 3374
    const/4 v4, 0x7

    iput v4, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3389
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->setSelectionInt(I)V

    .line 3390
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    .line 3391
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    .line 3397
    .end local v2           #position:I
    :goto_2
    return v3

    .line 3355
    :cond_3
    const/16 v5, 0x82

    if-ne p1, v5, :cond_0

    .line 3356
    iget v5, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3357
    const/4 v0, 0x1

    goto :goto_0

    .line 3377
    .restart local v2       #position:I
    :cond_4
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/HtcAdapterView2;->mSpecificTop:I

    .line 3379
    if-eqz v0, :cond_5

    iget v4, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_5

    .line 3380
    const/4 v4, 0x3

    iput v4, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3383
    :cond_5
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 3384
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_1

    .end local v2           #position:I
    :cond_6
    move v3, v4

    .line 3397
    goto :goto_2
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 5440
    const/4 v0, 0x0

    .line 5442
    .local v0, handled:Z
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-eqz v4, :cond_2

    .line 5443
    const/4 v0, 0x1

    .line 5445
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 5446
    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 5447
    .local v1, oldValue:Z
    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v4, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5456
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    .line 5457
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->rememberSyncState()V

    .line 5458
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    .line 5460
    .end local v1           #oldValue:Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpl-float v2, v2, v6

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v2

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_6

    .line 5461
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckForItemReleased:Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;

    if-nez v2, :cond_4

    .line 5462
    new-instance v2, Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;-><init>(Lcom/htc/widget/HtcListViewCore2;Lcom/htc/widget/HtcListViewCore2$1;)V

    iput-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckForItemReleased:Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;

    .line 5464
    :cond_4
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckForItemReleased:Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;->start(Landroid/view/View;IJ)V

    .line 5469
    :goto_1
    return v3

    .line 5449
    :cond_5
    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 5450
    .restart local v1       #oldValue:Z
    if-nez v1, :cond_1

    .line 5451
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5452
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 5467
    .end local v1           #oldValue:Z
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView2;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    or-int/2addr v0, v2

    move v3, v0

    .line 5469
    goto :goto_1
.end method

.method protected recycleOnMeasure()Z
    .locals 1

    .prologue
    .line 1963
    const/4 v0, 0x1

    return v0
.end method

.method protected releaseItem()V
    .locals 0

    .prologue
    .line 5169
    return-void
.end method

.method protected releaseItem(Landroid/view/View;)V
    .locals 7
    .parameter "releasedView"

    .prologue
    const/high16 v6, 0x3f80

    .line 5176
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 5177
    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 5178
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 5179
    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 5180
    .local v0, animator:Landroid/animation/Animator;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->get2DReleaseAnimation(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 5181
    .local v2, releaseAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 5182
    new-instance v4, Lcom/htc/widget/HtcListViewCore2$1;

    invoke-direct {v4, p0, v0}, Lcom/htc/widget/HtcListViewCore2$1;-><init>(Lcom/htc/widget/HtcListViewCore2;Landroid/animation/Animator;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5189
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 5176
    .end local v0           #animator:Landroid/animation/Animator;
    .end local v2           #releaseAnim:Landroid/animation/ObjectAnimator;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5192
    .end local v3           #v:Landroid/view/View;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mPressedView:Landroid/view/View;

    if-ne v4, p1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5195
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/htc/widget/HtcListViewCore2;->get2DReleaseAnimation(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 5196
    .restart local v2       #releaseAnim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 5198
    .end local v2           #releaseAnim:Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 5199
    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 5200
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 579
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 580
    const/4 v0, 0x0

    .line 581
    .local v0, result:Z
    const/4 v1, 0x0

    .line 582
    .local v1, tmpAdapter:Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    .line 583
    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter2;

    .end local v1           #tmpAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter2;->removeFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->onChanged()V

    .line 585
    const/4 v0, 0x1

    .line 587
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lcom/htc/widget/HtcListViewCore2;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 590
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 447
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, result:Z
    const/4 v1, 0x0

    .line 450
    .local v1, tmpAdapter:Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    .line 452
    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter2;

    .end local v1           #tmpAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter2;->removeHeader(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;->onChanged()V

    .line 454
    const/4 v0, 0x1

    .line 456
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lcom/htc/widget/HtcListViewCore2;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 459
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 26
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 749
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v25

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 750
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v24

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v25

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 753
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    .line 755
    .local v16, rectLeftWithinChild:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v23

    .line 756
    .local v23, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getScrollX()I

    move-result v13

    .line 757
    .local v13, listUnfadedLeft:I
    add-int v14, v13, v23

    .line 758
    .local v14, listUnfadedRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getHorizontalFadingEdgeLength()I

    move-result v9

    .line 760
    .local v9, fadingEdge:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->showingLeftFadingEdge()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 762
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    move/from16 v24, v0

    if-gtz v24, :cond_0

    move/from16 v0, v16

    if-le v0, v9, :cond_1

    .line 763
    :cond_0
    add-int/2addr v13, v9

    .line 767
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v4

    .line 768
    .local v4, childCount:I
    add-int/lit8 v24, v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRight()I

    move-result v18

    .line 770
    .local v18, rightOfRightChild:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->showingRightFadingEdge()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 772
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v25, v18, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 774
    :cond_2
    sub-int v18, v18, v9

    .line 778
    :cond_3
    const/16 v20, 0x0

    .line 780
    .local v20, scrollXDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v14, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v13, :cond_7

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    .line 787
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v24, v24, v13

    add-int v20, v20, v24

    .line 794
    :goto_0
    sub-int v8, v18, v14

    .line 795
    .local v8, distanceToRight:I
    move/from16 v0, v20

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 815
    .end local v8           #distanceToRight:I
    :cond_4
    :goto_1
    if-eqz v20, :cond_9

    const/16 v19, 0x1

    .line 816
    .local v19, scroll:Z
    :goto_2
    if-eqz v19, :cond_5

    .line 817
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->scrollListItemsBy(I)V

    .line 818
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    .line 819
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    .line 894
    .end local v13           #listUnfadedLeft:I
    .end local v14           #listUnfadedRight:I
    .end local v16           #rectLeftWithinChild:I
    .end local v18           #rightOfRightChild:I
    .end local v20           #scrollXDelta:I
    .end local v23           #width:I
    :cond_5
    :goto_3
    return v19

    .line 790
    .end local v19           #scroll:Z
    .restart local v13       #listUnfadedLeft:I
    .restart local v14       #listUnfadedRight:I
    .restart local v16       #rectLeftWithinChild:I
    .restart local v18       #rightOfRightChild:I
    .restart local v20       #scrollXDelta:I
    .restart local v23       #width:I
    :cond_6
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v24, v24, v14

    add-int v20, v20, v24

    goto :goto_0

    .line 796
    :cond_7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v13, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v14, :cond_4

    .line 801
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_8

    .line 803
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v24, v14, v24

    sub-int v20, v20, v24

    .line 810
    :goto_4
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 811
    .local v11, left:I
    sub-int v5, v11, v13

    .line 812
    .local v5, deltaToLeft:I
    move/from16 v0, v20

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto :goto_1

    .line 806
    .end local v5           #deltaToLeft:I
    .end local v11           #left:I
    :cond_8
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v24, v13, v24

    sub-int v20, v20, v24

    goto :goto_4

    .line 815
    :cond_9
    const/16 v19, 0x0

    goto :goto_2

    .line 823
    .end local v4           #childCount:I
    .end local v9           #fadingEdge:I
    .end local v13           #listUnfadedLeft:I
    .end local v14           #listUnfadedRight:I
    .end local v16           #rectLeftWithinChild:I
    .end local v18           #rightOfRightChild:I
    .end local v20           #scrollXDelta:I
    .end local v23           #width:I
    :cond_a
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 825
    .local v17, rectTopWithinChild:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v10

    .line 826
    .local v10, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getScrollY()I

    move-result v15

    .line 827
    .local v15, listUnfadedTop:I
    add-int v12, v15, v10

    .line 828
    .local v12, listUnfadedBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

    move-result v9

    .line 830
    .restart local v9       #fadingEdge:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->showingTopFadingEdge()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 832
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    move/from16 v24, v0

    if-gtz v24, :cond_b

    move/from16 v0, v17

    if-le v0, v9, :cond_c

    .line 833
    :cond_b
    add-int/2addr v15, v9

    .line 837
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v4

    .line 838
    .restart local v4       #childCount:I
    add-int/lit8 v24, v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 840
    .local v3, bottomOfBottomChild:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->showingBottomFadingEdge()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 842
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mSelectedPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_d

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v25, v3, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    .line 844
    :cond_d
    sub-int/2addr v12, v9

    .line 848
    :cond_e
    const/16 v21, 0x0

    .line 850
    .local v21, scrollYDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v12, :cond_11

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v15, :cond_11

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v10, :cond_10

    .line 857
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v24, v24, v15

    add-int v21, v21, v24

    .line 864
    :goto_5
    sub-int v7, v3, v12

    .line 865
    .local v7, distanceToBottom:I
    move/from16 v0, v21

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 885
    .end local v7           #distanceToBottom:I
    :cond_f
    :goto_6
    if-eqz v21, :cond_13

    const/16 v19, 0x1

    .line 886
    .restart local v19       #scroll:Z
    :goto_7
    if-eqz v19, :cond_5

    .line 887
    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->scrollListItemsBy(I)V

    .line 888
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    .line 889
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 890
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    goto/16 :goto_3

    .line 860
    .end local v19           #scroll:Z
    :cond_10
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v24, v24, v12

    add-int v21, v21, v24

    goto :goto_5

    .line 866
    :cond_11
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v15, :cond_f

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v12, :cond_f

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v10, :cond_12

    .line 873
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v24, v12, v24

    sub-int v21, v21, v24

    .line 880
    :goto_8
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v22

    .line 881
    .local v22, top:I
    sub-int v6, v22, v15

    .line 882
    .local v6, deltaToTop:I
    move/from16 v0, v21

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v21

    goto :goto_6

    .line 876
    .end local v6           #deltaToTop:I
    .end local v22           #top:I
    :cond_12
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v24, v15, v24

    sub-int v21, v21, v24

    goto :goto_8

    .line 885
    :cond_13
    const/16 v19, 0x0

    goto :goto_7
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 687
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView2;->resetList()V

    .line 688
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 689
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter "adapter"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 625
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;

    if-eqz v2, :cond_0

    .line 626
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->resetList()V

    .line 630
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->clear()V

    .line 632
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 633
    :cond_1
    new-instance v1, Lcom/htc/widget/HtcHeaderViewListAdapter2;

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter2;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 635
    .local v1, tmpAdapter:Landroid/widget/ListAdapter;
    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    .line 641
    .end local v1           #tmpAdapter:Landroid/widget/ListAdapter;
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedPosition:I

    .line 642
    const-wide/high16 v2, -0x8000

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView2;->mOldSelectedRowId:J

    .line 643
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_6

    .line 644
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/widget/HtcListViewCore2;->mAreAllItemsSelectable:Z

    .line 645
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    iput v2, p0, Lcom/htc/widget/HtcAdapterView2;->mOldItemCount:I

    .line 646
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    .line 647
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->checkFocus()V

    .line 649
    new-instance v2, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;-><init>(Lcom/htc/widget/HtcAdapterView2;)V

    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;

    .line 650
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView2$AdapterDataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 652
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->setViewTypeCount(I)V

    .line 655
    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-eqz v2, :cond_5

    .line 656
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 660
    .local v0, position:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->setSelectedPositionInt(I)V

    .line 661
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    .line 663
    iget v2, p0, Lcom/htc/widget/HtcAdapterView2;->mItemCount:I

    if-nez v2, :cond_2

    .line 665
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->checkSelectionChanged()V

    .line 675
    .end local v0           #position:I
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_3

    .line 676
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 679
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    .line 680
    return-void

    .line 638
    :cond_4
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 658
    :cond_5
    invoke-virtual {p0, v4, v5}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_1

    .line 669
    .end local v0           #position:I
    :cond_6
    iput-boolean v5, p0, Lcom/htc/widget/HtcListViewCore2;->mAreAllItemsSelectable:Z

    .line 670
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->checkFocus()V

    .line 672
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setBottomFirst(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 5740
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mBottomFirst:Z

    .line 5741
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 1
    .parameter "choiceMode"

    .prologue
    .line 5428
    iput p1, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    .line 5429
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 5430
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 5432
    :cond_0
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "divider"

    .prologue
    const/4 v1, 0x0

    .line 4824
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4825
    if-eqz p1, :cond_1

    .line 4826
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    .line 4827
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mClipDivider:Z

    .line 4842
    :goto_0
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 4843
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 4844
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    .line 4845
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayoutIfNecessary()V

    .line 4846
    return-void

    .line 4829
    :cond_1
    iput v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    .line 4830
    iput-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mClipDivider:Z

    goto :goto_0

    .line 4833
    :cond_2
    if-eqz p1, :cond_3

    .line 4834
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    .line 4835
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mClipDivider:Z

    goto :goto_0

    .line 4837
    :cond_3
    iput v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    .line 4838
    iput-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mClipDivider:Z

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 4873
    iput p1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    .line 4874
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayoutIfNecessary()V

    .line 4875
    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 4903
    iput p1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    .line 4904
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayoutIfNecessary()V

    .line 4905
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .parameter "footerDividersEnabled"

    .prologue
    .line 4941
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterDividersEnabled:Z

    .line 4942
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    .line 4943
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .parameter "headerDividersEnabled"

    .prologue
    .line 4923
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderDividersEnabled:Z

    .line 4924
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    .line 4925
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 4
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 5488
    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 5508
    :cond_0
    :goto_0
    return-void

    .line 5492
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 5493
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5503
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/htc/widget/HtcAdapterView2;->mInLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcAdapterView2;->mBlockLayoutRequests:Z

    if-nez v1, :cond_0

    .line 5504
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    .line 5505
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->rememberSyncState()V

    .line 5506
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    goto :goto_0

    .line 5495
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 5496
    .local v0, oldValue:Z
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5497
    if-nez v0, :cond_2

    .line 5498
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .parameter "itemsCanFocus"

    .prologue
    .line 4585
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    .line 4586
    if-nez p1, :cond_0

    .line 4587
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->setDescendantFocusability(I)V

    .line 4589
    :cond_0
    return-void
.end method

.method public setRoundedCornerGetView(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 5778
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mRoundedCornerGetView:Z

    .line 5779
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 2994
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2995
    invoke-virtual {p0, p1, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionFromLeft(II)V

    .line 3000
    :goto_0
    return-void

    .line 2997
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 3146
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3147
    .local v0, count:I
    if-lez v0, :cond_0

    .line 3148
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    .line 3159
    :goto_0
    return-void

    .line 3152
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 3153
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->setSelection(I)V

    goto :goto_0

    .line 3155
    :cond_1
    iput v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    .line 3156
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromLeft(II)V
    .locals 2
    .parameter "position"
    .parameter "x"

    .prologue
    .line 3057
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 3081
    :cond_0
    :goto_0
    return-void

    .line 3061
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3062
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 3063
    if-ltz p1, :cond_2

    .line 3064
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    .line 3070
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 3071
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3072
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBorderWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSpecificLeft:I

    .line 3074
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 3075
    iput p1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    .line 3076
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncColumnId:J

    .line 3079
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    goto :goto_0

    .line 3067
    :cond_4
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    goto :goto_1
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .parameter "position"
    .parameter "y"

    .prologue
    .line 3018
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 3042
    :cond_0
    :goto_0
    return-void

    .line 3022
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3023
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 3024
    if-ltz p1, :cond_2

    .line 3025
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    .line 3031
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 3032
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3033
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBorderHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSpecificTop:I

    .line 3035
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView2;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 3036
    iput p1, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncPosition:I

    .line 3037
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView2;->mSyncRowId:J

    .line 3040
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    goto :goto_0

    .line 3028
    :cond_4
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 3092
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    .line 3093
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->layoutChildren()V

    .line 3094
    return-void
.end method

.method public setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 5698
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    .line 5699
    return-void
.end method

.method public setTransparentWrap(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 5722
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mTransparentWrap:Z

    .line 5723
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mTransparentWrap:Z

    if-eqz v0, :cond_0

    .line 5724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mUseDivider:Z

    .line 5725
    :cond_0
    return-void
.end method

.method public setUseDivider(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 5763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mUseDivider:Z

    .line 5764
    return-void
.end method

.method public setWrappingHeader(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 5794
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mWrappingHeader:Z

    .line 5795
    return-void
.end method

.method protected shouldDrawSeperatorDivider(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 5684
    const/4 v0, 0x1

    return v0
.end method
