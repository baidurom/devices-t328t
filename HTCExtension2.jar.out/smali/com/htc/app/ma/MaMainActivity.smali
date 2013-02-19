.class public Lcom/htc/app/ma/MaMainActivity;
.super Landroid/app/ActivityGroup;
.source "MaMainActivity.java"

# interfaces
.implements Lcom/htc/app/ma/IMaStateOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/ma/MaMainActivity$LayeredView;
    }
.end annotation


# static fields
.field public static final ANIM_FLAG_NONE:I = 0x0

.field public static final ANIM_FLAG_ROTATION:I = 0x10

.field public static final ANIM_FLAG_SHIFT:I = 0x1

.field private static final DEFAULT_PADDING:I = 0xc

.field public static final PORT_MODE_2_PANE:I = 0x1

.field public static final PORT_MODE_SINGLE_PANE:I


# instance fields
.field private LAND_PADDING_10:[[I

.field private LAND_PADDING_7:[[I

.field private PORT_PADDING_10:[[I

.field private PORT_PADDING_2PMODE_10:[[I

.field private PORT_PADDING_2PMODE_7:[[I

.field private PORT_PADDING_7:[[I

.field private isDimDrawn:Z

.field private lView:Lcom/htc/app/ma/MaMainActivity$LayeredView;

.field private m1stPanelIntent:Landroid/content/Intent;

.field private m2PanePortPadding:[[I

.field private mAnimationFlag:I

.field private mCachedNextView:Landroid/view/View;

.field private mCanInvalidateMenu:Z

.field private mChildWaitingForResult:Lcom/htc/app/ma/IMaActivity;

.field private mContainer:Landroid/view/ViewGroup;

.field private mDraggingBoundaryLeft:I

.field private mDraggingBoundaryRight:I

.field private mDraggingTDAreaLeft:I

.field private mDraggingTDAreaRight:I

.field private mDraggingTDTime:J

.field private mDraggingTDX:I

.field private mFullScreenChild:I

.field private mHtcActionBar:Lcom/htc/widget/HtcActionBar;

.field private mIdCounter:I

.field private mIs2ndPanelMode:Z

.field private mIsAddingBlockViewWhenRotate:Z

.field private mIsEnableFrameDragging:Z

.field private mIsEnableUxRule2:Z

.field private mIsPortrait:Z

.field private mIsTouched:Z

.field private mL2PShowedFrame:I

.field private mLandPadding:[[I

.field private mLandParams:[Landroid/view/ViewGroup$LayoutParams;

.field private mLeftWidthWhenTD:I

.field private mPortPadding:[[I

.field private mPortParams:[Landroid/view/ViewGroup$LayoutParams;

.field private mRightWidthWhenTD:I

.field protected mRotateAnimHelper:Lcom/htc/app/ma/MaRotateAnimationHelper;

.field private mSftAnimAgent:Lcom/htc/widget/PageHandler;

.field private mStartActivityCounts:[I

.field private mStartedActivityCnt:I

.field private final mStateAgent:Lcom/htc/app/ma/MaStateAgent;

.field private mViewStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mWidthBackup:[I

.field private mWithHtcActionBar:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    invoke-direct {p0, v2}, Landroid/app/ActivityGroup;-><init>(Z)V

    .line 65
    new-array v0, v3, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->PORT_PADDING_7:[[I

    .line 66
    new-array v0, v6, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->PORT_PADDING_2PMODE_7:[[I

    .line 67
    new-array v0, v6, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->LAND_PADDING_7:[[I

    .line 69
    new-array v0, v3, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->PORT_PADDING_10:[[I

    .line 70
    new-array v0, v6, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->PORT_PADDING_2PMODE_10:[[I

    .line 71
    new-array v0, v6, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->LAND_PADDING_10:[[I

    .line 116
    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    .line 118
    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    .line 119
    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    .line 122
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->PORT_PADDING_7:[[I

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mPortPadding:[[I

    .line 123
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->PORT_PADDING_2PMODE_7:[[I

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->m2PanePortPadding:[[I

    .line 124
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->LAND_PADDING_7:[[I

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mLandPadding:[[I

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    .line 130
    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    .line 133
    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mStartActivityCounts:[I

    .line 136
    iput v2, p0, Lcom/htc/app/ma/MaMainActivity;->mStartedActivityCnt:I

    .line 139
    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    .line 142
    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/app/ma/MaMainActivity;->mAnimationFlag:I

    .line 145
    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mChildWaitingForResult:Lcom/htc/app/ma/IMaActivity;

    .line 148
    iput v3, p0, Lcom/htc/app/ma/MaMainActivity;->mL2PShowedFrame:I

    .line 151
    iput v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIdCounter:I

    .line 154
    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    .line 157
    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->isDimDrawn:Z

    .line 158
    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->lView:Lcom/htc/app/ma/MaMainActivity$LayeredView;

    .line 161
    new-instance v0, Lcom/htc/app/ma/MaStateAgent;

    invoke-direct {v0, p0}, Lcom/htc/app/ma/MaStateAgent;-><init>(Lcom/htc/app/ma/IMaStateOwner;)V

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    .line 168
    new-instance v0, Lcom/htc/app/ma/MaRotateAnimationHelper;

    invoke-direct {v0, p0}, Lcom/htc/app/ma/MaRotateAnimationHelper;-><init>(Lcom/htc/app/ma/MaMainActivity;)V

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mRotateAnimHelper:Lcom/htc/app/ma/MaRotateAnimationHelper;

    .line 171
    iput-boolean v3, p0, Lcom/htc/app/ma/MaMainActivity;->mIsEnableUxRule2:Z

    .line 172
    iput-boolean v3, p0, Lcom/htc/app/ma/MaMainActivity;->mIsTouched:Z

    .line 175
    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mWidthBackup:[I

    .line 177
    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIsEnableFrameDragging:Z

    .line 178
    const/16 v0, 0x16

    iput v0, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDAreaLeft:I

    .line 179
    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDAreaRight:I

    .line 180
    iput v2, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingBoundaryLeft:I

    .line 181
    iput v2, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingBoundaryRight:I

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDX:I

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDTime:J

    .line 185
    iput v2, p0, Lcom/htc/app/ma/MaMainActivity;->mLeftWidthWhenTD:I

    .line 186
    iput v2, p0, Lcom/htc/app/ma/MaMainActivity;->mRightWidthWhenTD:I

    .line 188
    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIsAddingBlockViewWhenRotate:Z

    .line 191
    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mHtcActionBar:Lcom/htc/widget/HtcActionBar;

    .line 192
    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mWithHtcActionBar:Z

    .line 196
    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIs2ndPanelMode:Z

    .line 197
    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->m1stPanelIntent:Landroid/content/Intent;

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/ma/MaMainActivity;->mFullScreenChild:I

    .line 205
    iput-boolean v3, p0, Lcom/htc/app/ma/MaMainActivity;->mCanInvalidateMenu:Z

    .line 214
    invoke-virtual {p0, v6, v3}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    .line 215
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v3}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    .line 216
    invoke-virtual {p0, v4, v3}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    .line 217
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v3}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    .line 218
    return-void

    .line 65
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 66
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 67
    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 69
    :array_5
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 70
    :array_6
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 71
    :array_8
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/app/ma/MaMainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->removeTailToCache()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/app/ma/MaMainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->processCallbackAfterShiftBack()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/app/ma/MaMainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->removeHeadToStack()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/app/ma/MaMainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->processCallbackAfterShiftNext()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/app/ma/MaMainActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private addItemToMenu(Landroid/view/Menu;Landroid/view/MenuItem;II)V
    .locals 4
    .parameter "menu"
    .parameter "mi"
    .parameter "id"
    .parameter "order"

    .prologue
    .line 1663
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v2, p3, p4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getNumericShortcut()C

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    .line 1675
    .local v1, newMi:Landroid/view/MenuItem;
    instance-of v2, v1, Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1676
    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1677
    .local v0, mii:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1678
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1680
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1681
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1684
    .end local v0           #mii:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method private addViewToHead(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addViewToHead "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 591
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 594
    :cond_0
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->isDoShiftAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    invoke-direct {p0, p1, v3}, Lcom/htc/app/ma/MaMainActivity;->getLayoutParams(Landroid/view/View;I)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    invoke-direct {p0, p1, v3}, Lcom/htc/app/ma/MaMainActivity;->setChildPadding(Landroid/view/View;I)V

    .line 599
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v3, v2}, Lcom/htc/widget/PageHandler;->addPage(Landroid/view/View;IZ)V

    .line 607
    :goto_0
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->setFramePosition()V

    .line 608
    return-void

    .line 601
    :cond_1
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 602
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->setFrameParams()V

    goto :goto_0
.end method

.method private addViewToTail(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addViewToTail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 614
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 615
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 617
    :cond_0
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 619
    .local v0, lastIndex:I
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->isDoShiftAnimation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 621
    invoke-direct {p0, p1, v0}, Lcom/htc/app/ma/MaMainActivity;->getLayoutParams(Landroid/view/View;I)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    invoke-direct {p0, p1, v0}, Lcom/htc/app/ma/MaMainActivity;->setChildPadding(Landroid/view/View;I)V

    .line 624
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    invoke-virtual {v2, p1}, Lcom/htc/widget/PageHandler;->addPage(Landroid/view/View;)V

    .line 632
    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->setFramePosition(I)V

    .line 633
    return-void

    .line 626
    :cond_1
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 627
    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->setFrameParams(I)V

    goto :goto_0
.end method

.method private checkAndSetLayoutParams(Landroid/view/ViewGroup;[Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 5
    .parameter "container"
    .parameter "portParams"
    .parameter "landParams"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 364
    iput-object p1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    .line 367
    instance-of v3, p1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_4

    .line 369
    array-length v3, p2

    new-array v3, v3, [Landroid/widget/FrameLayout$LayoutParams;

    iput-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    .line 370
    array-length v3, p3

    new-array v3, v3, [Landroid/widget/FrameLayout$LayoutParams;

    iput-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    .line 372
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_2

    .line 373
    aget-object v3, p2, v0

    instance-of v3, v3, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v3, :cond_1

    .line 426
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v1

    .line 375
    .restart local v0       #i:I
    :cond_1
    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v4, p2, v0

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->cloneFrameLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    aput-object v4, v3, v0

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_2
    const/4 v0, 0x0

    :goto_2
    array-length v3, p3

    if-ge v0, v3, :cond_3

    .line 379
    aget-object v3, p3, v0

    instance-of v3, v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 381
    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v4, p3, v0

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->cloneFrameLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    aput-object v4, v3, v0

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    .line 384
    goto :goto_1

    .line 386
    .end local v0           #i:I
    :cond_4
    instance-of v3, p1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_7

    .line 388
    array-length v3, p2

    new-array v3, v3, [Landroid/widget/LinearLayout$LayoutParams;

    iput-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    .line 389
    array-length v3, p3

    new-array v3, v3, [Landroid/widget/LinearLayout$LayoutParams;

    iput-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    .line 391
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    array-length v3, p2

    if-ge v0, v3, :cond_5

    .line 392
    aget-object v3, p2, v0

    instance-of v3, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 394
    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v4, p2, v0

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->cloneLinearLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    aput-object v4, v3, v0

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 397
    :cond_5
    const/4 v0, 0x0

    :goto_4
    array-length v3, p3

    if-ge v0, v3, :cond_6

    .line 398
    aget-object v3, p3, v0

    instance-of v3, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 400
    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v4, p3, v0

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->cloneLinearLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    aput-object v4, v3, v0

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v1, v2

    .line 403
    goto :goto_1

    .line 405
    .end local v0           #i:I
    :cond_7
    instance-of v3, p1, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    .line 407
    array-length v3, p2

    new-array v3, v3, [Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    .line 408
    array-length v3, p3

    new-array v3, v3, [Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    .line 410
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    array-length v3, p2

    if-ge v0, v3, :cond_8

    .line 411
    aget-object v3, p2, v0

    instance-of v3, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 413
    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v4, p2, v0

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->cloneRelativeLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    aput-object v4, v3, v0

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 416
    :cond_8
    const/4 v0, 0x0

    :goto_6
    array-length v3, p3

    if-ge v0, v3, :cond_9

    .line 417
    aget-object v3, p3, v0

    instance-of v3, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 419
    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v4, p3, v0

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->cloneRelativeLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    aput-object v4, v3, v0

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    move v1, v2

    .line 422
    goto/16 :goto_1
.end method

.method private cloneFrameLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 5
    .parameter "source"

    .prologue
    .line 824
    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 826
    .local v1, src:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 829
    .local v0, ret:Landroid/widget/FrameLayout$LayoutParams;
    return-object v0
.end method

.method private cloneLinearLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 5
    .parameter "source"

    .prologue
    .line 811
    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 813
    .local v1, src:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 816
    .local v0, ret:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 818
    return-object v0
.end method

.method private cloneRelativeLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 6
    .parameter "source"

    .prologue
    .line 835
    move-object v3, p1

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 837
    .local v3, src:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 840
    .local v1, ret:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iput-boolean v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 842
    invoke-virtual {v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    .line 845
    .local v2, rules:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 846
    aget v4, v2, v0

    if-eqz v4, :cond_0

    .line 847
    aget v4, v2, v0

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 845
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 853
    :cond_1
    return-object v1
.end method

.method private closeAllMenu()V
    .locals 4

    .prologue
    .line 2158
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->closeOptionsMenu()V

    .line 2159
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->closeContextMenu()V

    .line 2161
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2162
    invoke-virtual {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v2

    .line 2163
    .local v2, ima:Lcom/htc/app/ma/IMaActivity;
    if-nez v2, :cond_1

    .line 2161
    .end local v2           #ima:Lcom/htc/app/ma/IMaActivity;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v2       #ima:Lcom/htc/app/ma/IMaActivity;
    :cond_1
    move-object v3, v2

    .line 2166
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->closeOptionsMenu()V

    move-object v3, v2

    .line 2167
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->closeContextMenu()V

    .line 2169
    instance-of v3, v2, Landroid/app/ActivityGroup;

    if-eqz v3, :cond_0

    .line 2172
    check-cast v2, Landroid/app/ActivityGroup;

    .end local v2           #ima:Lcom/htc/app/ma/IMaActivity;
    invoke-virtual {v2}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2173
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 2176
    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 2177
    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    goto :goto_1

    .line 2180
    .end local v0           #a:Landroid/app/Activity;
    :cond_2
    return-void
.end method

.method private closeSoftInput()V
    .locals 3

    .prologue
    .line 2183
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2186
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2188
    return-void
.end method

.method private createMenuReady(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 1688
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->withHtcActionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mHtcActionBar:Lcom/htc/widget/HtcActionBar;

    invoke-virtual {v0, p1, v1}, Lcom/htc/widget/HtcActionBar;->onCreateActionBar(Landroid/view/Menu;Z)V

    .line 1694
    :cond_0
    return v1
.end method

.method private createShiftAnimationAgent(Landroid/view/ViewGroup;[Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)Lcom/htc/widget/PageHandler;
    .locals 2
    .parameter "container"
    .parameter "portParams"
    .parameter "landParams"

    .prologue
    .line 2352
    instance-of v1, p1, Lcom/htc/widget/MultiPageLayout;

    if-nez v1, :cond_0

    .line 2353
    const/4 v0, 0x0

    .line 2374
    .end local p1
    :goto_0
    return-object v0

    .line 2355
    .restart local p1
    :cond_0
    new-instance v0, Lcom/htc/widget/PageHandler;

    check-cast p1, Lcom/htc/widget/MultiPageLayout;

    .end local p1
    invoke-direct {v0, p1}, Lcom/htc/widget/PageHandler;-><init>(Lcom/htc/widget/MultiPageLayout;)V

    .line 2357
    .local v0, ph:Lcom/htc/widget/PageHandler;
    new-instance v1, Lcom/htc/app/ma/MaMainActivity$1;

    invoke-direct {v1, p0}, Lcom/htc/app/ma/MaMainActivity$1;-><init>(Lcom/htc/app/ma/MaMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/PageHandler;->setOnPageAnimateListener(Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;)V

    .line 2372
    invoke-virtual {v0, p2, p3}, Lcom/htc/widget/PageHandler;->setPagesSize([Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private finishActivityInternal(Ljava/lang/String;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 1162
    invoke-direct {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->finishLocalActivity(Ljava/lang/String;)Landroid/view/Window;

    move-result-object v3

    .line 1163
    .local v3, w:Landroid/view/Window;
    if-nez v3, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1167
    .local v0, decor:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1170
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    if-ne v0, v4, :cond_2

    .line 1171
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    goto :goto_0

    .line 1173
    :cond_2
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1175
    .local v1, index:I
    if-ltz v1, :cond_3

    .line 1176
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v4, v1}, Lcom/htc/app/ma/MaMainActivity;->replaceViewInFrame(Landroid/view/View;I)V

    goto :goto_0

    .line 1178
    :cond_3
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1179
    .local v2, stackPos:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1180
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private finishLocalActivity(Ljava/lang/String;)Landroid/view/Window;
    .locals 3
    .parameter "id"

    .prologue
    .line 1187
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    move-result-object v0

    .line 1189
    .local v0, w:Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 1190
    iget v1, p0, Lcom/htc/app/ma/MaMainActivity;->mStartedActivityCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/app/ma/MaMainActivity;->mStartedActivityCnt:I

    .line 1192
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after destroy activity, local activity count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/app/ma/MaMainActivity;->mStartedActivityCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 1194
    return-object v0
.end method

.method private generateNewId(I)Ljava/lang/String;
    .locals 4
    .parameter "position"

    .prologue
    .line 1534
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_p_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIdCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/app/ma/MaMainActivity;->mIdCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1539
    .local v0, id:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1537
    .end local v0           #id:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_l_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIdCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/app/ma/MaMainActivity;->mIdCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #id:Ljava/lang/String;
    goto :goto_0
.end method

.method private getAfterShiftPadding(Z[Landroid/view/View;)[[I
    .locals 9
    .parameter "isPortrait"
    .parameter "vs"

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x0

    .line 2096
    if-nez p2, :cond_0

    .line 2097
    check-cast v6, [[I

    .line 2127
    :goto_0
    return-object v6

    .line 2099
    :cond_0
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->mPortPadding:[[I

    if-nez v7, :cond_1

    check-cast v6, [[I

    move-object v4, v6

    .line 2103
    .local v4, paddingArray:[[I
    :goto_1
    iget-boolean v6, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v3, v6

    .line 2105
    .local v3, nFrames:I
    :goto_2
    if-eqz v4, :cond_5

    array-length v6, v4

    if-eq v6, v3, :cond_5

    .line 2106
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LayoutParams.length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", paddingArray.length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2099
    .end local v3           #nFrames:I
    .end local v4           #paddingArray:[[I
    :cond_1
    iget-object v6, p0, Lcom/htc/app/ma/MaMainActivity;->mPortPadding:[[I

    invoke-virtual {v6}, [[I->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    move-object v4, v6

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->mLandPadding:[[I

    if-nez v7, :cond_3

    check-cast v6, [[I

    move-object v4, v6

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/htc/app/ma/MaMainActivity;->mLandPadding:[[I

    invoke-virtual {v6}, [[I->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    move-object v4, v6

    goto :goto_1

    .line 2103
    .restart local v4       #paddingArray:[[I
    :cond_4
    iget-object v6, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v3, v6

    goto :goto_2

    .line 2110
    .restart local v3       #nFrames:I
    :cond_5
    if-nez v4, :cond_7

    .line 2111
    filled-new-array {v3, v8}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #paddingArray:[[I
    check-cast v4, [[I

    .line 2112
    .restart local v4       #paddingArray:[[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, v3, :cond_7

    .line 2113
    const/4 v2, 0x0

    .local v2, j:I
    :goto_4
    if-ge v2, v8, :cond_6

    .line 2114
    aget-object v6, v4, v0

    const/16 v7, 0xc

    aput v7, v6, v2

    .line 2113
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2112
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2117
    .end local v0           #i:I
    .end local v2           #j:I
    :cond_7
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    if-ge v0, v3, :cond_9

    .line 2118
    aget-object v6, p2, v0

    invoke-virtual {p0, v6}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    .line 2120
    .local v1, ima:Lcom/htc/app/ma/IMaActivity;
    if-eqz v1, :cond_8

    .line 2121
    invoke-interface {v1, p1}, Lcom/htc/app/ma/IMaActivity;->getCustomizedPadding(Z)[I

    move-result-object v5

    .line 2122
    .local v5, paddings:[I
    if-eqz v5, :cond_8

    .line 2123
    aput-object v5, v4, v0

    .line 2117
    .end local v5           #paddings:[I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .end local v1           #ima:Lcom/htc/app/ma/IMaActivity;
    :cond_9
    move-object v6, v4

    .line 2127
    goto/16 :goto_0
.end method

.method private getLayoutParams(Landroid/view/View;I)Landroid/view/ViewGroup$LayoutParams;
    .locals 4
    .parameter "v"
    .parameter "p"

    .prologue
    .line 714
    iget-boolean v3, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    .line 715
    .local v2, lps:[Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    const/4 v1, 0x0

    .line 718
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    array-length v3, v2

    if-ge p2, v3, :cond_2

    .line 719
    aget-object v1, v2, p2

    .line 724
    :goto_1
    const/4 v0, 0x0

    .line 726
    .local v0, dst:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_3

    .line 727
    invoke-direct {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->cloneLinearLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 734
    :cond_0
    :goto_2
    return-object v0

    .line 714
    .end local v0           #dst:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #lps:[Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0

    .line 721
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v2       #lps:[Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    goto :goto_1

    .line 728
    .restart local v0       #dst:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    instance-of v3, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_4

    .line 729
    invoke-direct {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->cloneFrameLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    goto :goto_2

    .line 730
    :cond_4
    instance-of v3, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 731
    invoke-direct {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->cloneRelativeLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    goto :goto_2
.end method

.method private getViewAt(I)Landroid/view/View;
    .locals 1
    .parameter "position"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initFrames()V
    .locals 3

    .prologue
    .line 450
    const-string v2, "initFrames"

    invoke-static {v2}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->isPortrait()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    .line 454
    iget-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v1, v2

    .line 457
    .local v1, nFrames:I
    :goto_0
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 460
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 461
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 454
    .end local v0           #i:I
    .end local v1           #nFrames:I
    :cond_0
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v1, v2

    goto :goto_0

    .line 464
    .restart local v0       #i:I
    .restart local v1       #nFrames:I
    :cond_1
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mStartActivityCounts:[I

    .line 465
    return-void
.end method

.method private isDoRotationAnimation()Z
    .locals 2

    .prologue
    .line 2313
    iget v0, p0, Lcom/htc/app/ma/MaMainActivity;->mAnimationFlag:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDoShiftAnimation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2308
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/app/ma/MaMainActivity;->mAnimationFlag:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onMaCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 1711
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 1712
    const/4 v2, 0x0

    .line 1719
    :goto_0
    return v2

    .line 1714
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1715
    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    .line 1716
    .local v1, ima:Lcom/htc/app/ma/IMaActivity;
    if-eqz v1, :cond_1

    .line 1717
    invoke-interface {v1, p1}, Lcom/htc/app/ma/IMaActivity;->onMaCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1714
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1719
    .end local v1           #ima:Lcom/htc/app/ma/IMaActivity;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onMaPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 1726
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 1727
    const/4 v2, 0x0

    .line 1734
    :goto_0
    return v2

    .line 1729
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1730
    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    .line 1731
    .local v1, ima:Lcom/htc/app/ma/IMaActivity;
    if-eqz v1, :cond_1

    .line 1732
    invoke-interface {v1, p1}, Lcom/htc/app/ma/IMaActivity;->onMaPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1729
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1734
    .end local v1           #ima:Lcom/htc/app/ma/IMaActivity;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private performShiftAnimationToNext()V
    .locals 6

    .prologue
    .line 2317
    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    .line 2319
    iget-boolean v4, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    .line 2320
    .local v1, lps:[Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    iget-boolean v4, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v2, v4

    .line 2321
    .local v2, nFrames:I
    :goto_1
    new-array v3, v2, [Landroid/view/View;

    .line 2323
    .local v3, vs:[Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v2, :cond_2

    .line 2324
    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    .line 2323
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2319
    .end local v0           #i:I
    .end local v1           #lps:[Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #nFrames:I
    .end local v3           #vs:[Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0

    .line 2320
    .restart local v1       #lps:[Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v2, v4

    goto :goto_1

    .line 2327
    .restart local v0       #i:I
    .restart local v2       #nFrames:I
    .restart local v3       #vs:[Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    iget-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    invoke-direct {p0, v5, v3}, Lcom/htc/app/ma/MaMainActivity;->getAfterShiftPadding(Z[Landroid/view/View;)[[I

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/htc/widget/PageHandler;->setPagesParams([Landroid/view/ViewGroup$LayoutParams;[[I)V

    .line 2329
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    invoke-virtual {v4}, Lcom/htc/widget/PageHandler;->animateToNextPage()V

    .line 2330
    return-void
.end method

.method private performShiftAnimationToPrev()V
    .locals 6

    .prologue
    .line 2333
    const/4 v4, 0x5

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    .line 2335
    iget-boolean v4, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    .line 2336
    .local v1, lps:[Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    iget-boolean v4, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v2, v4

    .line 2337
    .local v2, nFrames:I
    :goto_1
    new-array v3, v2, [Landroid/view/View;

    .line 2339
    .local v3, vs:[Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v2, :cond_2

    .line 2340
    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    .line 2339
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2335
    .end local v0           #i:I
    .end local v1           #lps:[Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #nFrames:I
    .end local v3           #vs:[Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0

    .line 2336
    .restart local v1       #lps:[Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v2, v4

    goto :goto_1

    .line 2343
    .restart local v0       #i:I
    .restart local v2       #nFrames:I
    .restart local v3       #vs:[Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    iget-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    invoke-direct {p0, v5, v3}, Lcom/htc/app/ma/MaMainActivity;->getAfterShiftPadding(Z[Landroid/view/View;)[[I

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/htc/widget/PageHandler;->setPagesParams([Landroid/view/ViewGroup$LayoutParams;[[I)V

    .line 2345
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    invoke-virtual {v4}, Lcom/htc/widget/PageHandler;->animateBackPreviousPage()V

    .line 2346
    return-void
.end method

.method private prepareMenuReady(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 1700
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->withHtcActionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mHtcActionBar:Lcom/htc/widget/HtcActionBar;

    invoke-virtual {v0, p1, v1}, Lcom/htc/widget/HtcActionBar;->onPrepareActionBar(Landroid/view/Menu;Z)V

    .line 1704
    :cond_0
    return v1
.end method

.method private processCallbackAfterShiftBack()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 1284
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    .line 1285
    .local v0, cachedAct:Lcom/htc/app/ma/IMaActivity;
    if-eqz v0, :cond_0

    .line 1286
    const/4 v4, -0x2

    invoke-interface {v0, v7, v4}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    .line 1287
    invoke-interface {v0, v6, v2}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    .line 1291
    :cond_0
    iget-boolean v4, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v4, :cond_2

    .line 1293
    .local v2, orientationValue:I
    :goto_0
    invoke-virtual {p0, v5}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    .line 1294
    .local v1, firstAct:Lcom/htc/app/ma/IMaActivity;
    if-eqz v1, :cond_1

    .line 1295
    invoke-interface {v1, v3, v2}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    .line 1296
    invoke-interface {v1, v6, v3}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    .line 1300
    :cond_1
    invoke-virtual {p0, v7, v5, v3}, Lcom/htc/app/ma/MaMainActivity;->setOnScreenChildrenState(IIZ)V

    .line 1303
    const/4 v4, 0x5

    invoke-virtual {p0, v4, v3}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    .line 1305
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->invalidateOptionsMenu()V

    .line 1306
    return-void

    .end local v1           #firstAct:Lcom/htc/app/ma/IMaActivity;
    .end local v2           #orientationValue:I
    :cond_2
    move v2, v3

    .line 1291
    goto :goto_0
.end method

.method private processCallbackAfterShiftNext()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 1258
    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v2

    .line 1259
    .local v2, stackAct:Lcom/htc/app/ma/IMaActivity;
    if-eqz v2, :cond_0

    .line 1260
    const/4 v3, -0x1

    invoke-interface {v2, v7, v3}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    .line 1261
    invoke-interface {v2, v6, v1}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    .line 1265
    :cond_0
    iget-boolean v3, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v3, :cond_2

    .line 1267
    .local v1, oriValue:I
    :goto_0
    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    .line 1268
    .local v0, lastAct:Lcom/htc/app/ma/IMaActivity;
    if-eqz v0, :cond_1

    .line 1269
    invoke-interface {v0, v4, v1}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    .line 1270
    invoke-interface {v0, v6, v4}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    .line 1274
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v7, v3, v4}, Lcom/htc/app/ma/MaMainActivity;->setOnScreenChildrenState(IIZ)V

    .line 1277
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    .line 1279
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->invalidateOptionsMenu()V

    .line 1280
    return-void

    .end local v0           #lastAct:Lcom/htc/app/ma/IMaActivity;
    .end local v1           #oriValue:I
    :cond_2
    move v1, v4

    .line 1265
    goto :goto_0
.end method

.method private removeHeadToStack()V
    .locals 2

    .prologue
    .line 786
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 787
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 788
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    :cond_0
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->removeViewAtHead()V

    .line 790
    return-void
.end method

.method private removeTailToCache()V
    .locals 3

    .prologue
    .line 793
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 795
    .local v1, tail:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    .line 796
    .local v0, ima:Lcom/htc/app/ma/IMaActivity;
    if-eqz v0, :cond_0

    .line 797
    invoke-interface {v0}, Lcom/htc/app/ma/IMaActivity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInternal(Ljava/lang/String;)V

    .line 800
    :cond_0
    iput-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    .line 802
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->removeViewAtTail()V

    .line 803
    return-void
.end method

.method private removeViewAtHead()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 636
    const-string v0, "removeViewAtHead"

    invoke-static {v0}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 638
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->isDoShiftAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PageHandler;->removePage(I)V

    .line 645
    :goto_0
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->setFramePosition()V

    .line 646
    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 642
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->setFrameParams()V

    goto :goto_0
.end method

.method private removeViewAtTail()V
    .locals 2

    .prologue
    .line 649
    const-string v1, "removeViewAtTail"

    invoke-static {v1}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 651
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 652
    .local v0, last:I
    if-gez v0, :cond_0

    .line 660
    :goto_0
    return-void

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->isDoShiftAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    invoke-virtual {v1, v0}, Lcom/htc/widget/PageHandler;->removePage(I)V

    goto :goto_0

    .line 658
    :cond_1
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_0
.end method

.method private replaceViewInFrame(Landroid/view/View;I)V
    .locals 4
    .parameter "v"
    .parameter "position"

    .prologue
    .line 663
    const-string v2, "replaceViewInFrame"

    invoke-static {v2}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 665
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt p2, v2, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 670
    .local v0, oldView:Landroid/view/View;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replace view at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", old view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 675
    .local v1, parent:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-eq v1, v2, :cond_0

    .line 678
    if-eqz v1, :cond_2

    .line 679
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 682
    :cond_2
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 684
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 686
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 688
    invoke-direct {p0, p2}, Lcom/htc/app/ma/MaMainActivity;->setFrameParams(I)V

    .line 689
    invoke-direct {p0, p2}, Lcom/htc/app/ma/MaMainActivity;->setFramePosition(I)V

    .line 691
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private resetFrames()V
    .locals 22

    .prologue
    .line 468
    const-string v19, "resetFrames"

    invoke-static/range {v19 .. v19}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 475
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/ma/MaMainActivity;->mFullScreenChild:I

    .line 477
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v18, viewCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v15, 0x0

    .line 481
    .local v15, startCacheIndex:I
    const/4 v9, 0x0

    .line 482
    .local v9, nFrames:I
    const/4 v10, 0x0

    .line 483
    .local v10, nOriFrames:I
    const/4 v4, 0x0

    .line 485
    .local v4, i:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/ma/MaMainActivity;->mIsEnableUxRule2:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/ma/MaMainActivity;->mIsTouched:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    const/16 v16, 0x0

    .line 488
    .local v16, usedL2P:I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 489
    move/from16 v15, v16

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v9, v0

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v10, v0

    .line 499
    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v15, :cond_3

    .line 500
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v17

    .line 501
    .local v17, v:Landroid/view/View;
    if-eqz v17, :cond_0

    .line 502
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add view to stack, v = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 485
    .end local v16           #usedL2P:I
    .end local v17           #v:Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/ma/MaMainActivity;->mL2PShowedFrame:I

    move/from16 v16, v0

    goto :goto_0

    .line 493
    .restart local v16       #usedL2P:I
    :cond_2
    const/4 v15, 0x0

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v9, v0

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v10, v0

    goto :goto_1

    .line 506
    :cond_3
    :goto_3
    if-ge v4, v10, :cond_5

    .line 507
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v17

    .line 508
    .restart local v17       #v:Landroid/view/View;
    if-eqz v17, :cond_4

    .line 509
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add view to cache, v = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 510
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 515
    .end local v17           #v:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 518
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    const/4 v11, 0x0

    .line 520
    .local v11, nViewsToPop:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    sub-int v13, v19, v11

    .line 522
    .local v13, popIndex:I
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v11, :cond_7

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 524
    .restart local v17       #v:Landroid/view/View;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "pop "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " from stack to tail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 525
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    .line 522
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 518
    .end local v11           #nViewsToPop:I
    .end local v13           #popIndex:I
    .end local v17           #v:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_4

    .line 527
    .restart local v11       #nViewsToPop:I
    .restart local v13       #popIndex:I
    :cond_7
    :goto_6
    if-ge v4, v9, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_8

    .line 528
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 529
    .restart local v17       #v:Landroid/view/View;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "pop "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " from cache to tail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 530
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    .line 527
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 534
    .end local v17           #v:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    if-ge v4, v9, :cond_9

    .line 535
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to tail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    .line 537
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    .line 538
    add-int/lit8 v4, v4, 0x1

    .line 542
    :cond_9
    :goto_7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_c

    .line 543
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    .line 544
    .local v8, lastIndex:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 546
    .local v7, lastCachedView:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v6

    .line 547
    .local v6, ima:Lcom/htc/app/ma/IMaActivity;
    if-eqz v6, :cond_9

    .line 550
    const/16 v19, 0x7

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v6, v0, v1}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    .line 552
    if-nez v8, :cond_b

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 554
    const-string v19, "mCachedNextView is not null!!!!!!"

    invoke-static/range {v19 .. v19}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 555
    :cond_a
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    goto :goto_7

    .line 557
    :cond_b
    invoke-interface {v6}, Lcom/htc/app/ma/IMaActivity;->getId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInternal(Ljava/lang/String;)V

    goto :goto_7

    .line 560
    .end local v6           #ima:Lcom/htc/app/ma/IMaActivity;
    .end local v7           #lastCachedView:Landroid/view/View;
    .end local v8           #lastIndex:I
    :cond_c
    const/16 v18, 0x0

    .line 563
    :goto_8
    if-ge v4, v9, :cond_d

    .line 564
    new-instance v19, Landroid/view/View;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    .line 563
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 569
    :cond_d
    add-int/lit8 v19, v9, 0x1

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/app/ma/MaMainActivity;->mStartActivityCounts:[I

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_e
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 573
    .local v14, stackedView:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v6

    .line 574
    .restart local v6       #ima:Lcom/htc/app/ma/IMaActivity;
    if-eqz v6, :cond_e

    .line 576
    const/16 v19, 0x7

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v6, v0, v1}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    .line 577
    const/16 v19, 0x6

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v6, v0, v1}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    goto :goto_9

    .line 580
    .end local v6           #ima:Lcom/htc/app/ma/IMaActivity;
    .end local v14           #stackedView:Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    const/4 v12, 0x2

    .line 582
    .local v12, oriValue:I
    :goto_a
    const/16 v19, 0x7

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/app/ma/MaMainActivity;->setOnScreenChildrenState(IIZ)V

    .line 583
    const/16 v19, 0x6

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/app/ma/MaMainActivity;->setOnScreenChildrenState(IIZ)V

    .line 584
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v12, v2}, Lcom/htc/app/ma/MaMainActivity;->setOnScreenChildrenState(IIZ)V

    .line 585
    return-void

    .line 580
    .end local v12           #oriValue:I
    :cond_10
    const/4 v12, 0x1

    goto :goto_a
.end method

.method private restoreChildrenWidth()V
    .locals 3

    .prologue
    .line 2059
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mWidthBackup:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mWidthBackup:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 2066
    :cond_0
    return-void

    .line 2063
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mWidthBackup:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2064
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mWidthBackup:[I

    aget v2, v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2063
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setChildPadding(Landroid/view/View;I)V
    .locals 7
    .parameter "v"
    .parameter "p"

    .prologue
    const/16 v4, 0xc

    .line 750
    const/4 v2, 0x0

    check-cast v2, [[I

    .line 751
    .local v2, paddingsArray:[[I
    const/4 v1, 0x0

    .line 754
    .local v1, paddings:[I
    invoke-virtual {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    .line 755
    .local v0, ima:Lcom/htc/app/ma/IMaActivity;
    if-eqz v0, :cond_0

    .line 756
    iget-boolean v3, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    invoke-interface {v0, v3}, Lcom/htc/app/ma/IMaActivity;->getCustomizedPadding(Z)[I

    move-result-object v1

    .line 759
    :cond_0
    if-nez v1, :cond_1

    .line 760
    iget-boolean v3, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v3, :cond_2

    .line 761
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mPortPadding:[[I

    .line 766
    :goto_0
    if-eqz v2, :cond_1

    .line 767
    array-length v3, v2

    if-ge p2, v3, :cond_3

    .line 768
    aget-object v1, v2, p2

    .line 776
    :cond_1
    :goto_1
    if-nez v1, :cond_4

    .line 777
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 782
    :goto_2
    return-void

    .line 763
    :cond_2
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mLandPadding:[[I

    goto :goto_0

    .line 770
    :cond_3
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    goto :goto_1

    .line 780
    :cond_4
    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x2

    aget v5, v1, v5

    const/4 v6, 0x3

    aget v6, v1, v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2
.end method

.method private setChildWidth(II)V
    .locals 2
    .parameter "position"
    .parameter "width"

    .prologue
    .line 2148
    invoke-direct {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 2149
    .local v1, v:Landroid/view/View;
    invoke-direct {p0, v1, p1}, Lcom/htc/app/ma/MaMainActivity;->getLayoutParams(Landroid/view/View;I)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2150
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2151
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2152
    return-void
.end method

.method private setFrameParams()V
    .locals 2

    .prologue
    .line 699
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 700
    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->setFrameParams(I)V

    .line 699
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    :cond_0
    return-void
.end method

.method private setFrameParams(I)V
    .locals 2
    .parameter "p"

    .prologue
    .line 705
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 711
    :goto_0
    return-void

    .line 708
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 709
    .local v0, v:Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lcom/htc/app/ma/MaMainActivity;->getLayoutParams(Landroid/view/View;I)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    invoke-direct {p0, v0, p1}, Lcom/htc/app/ma/MaMainActivity;->setChildPadding(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private setFramePosition()V
    .locals 2

    .prologue
    .line 738
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 739
    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->setFramePosition(I)V

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 741
    :cond_0
    return-void
.end method

.method private setFramePosition(I)V
    .locals 1
    .parameter "p"

    .prologue
    .line 744
    invoke-virtual {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    .line 745
    .local v0, a:Lcom/htc/app/ma/IMaActivity;
    if-eqz v0, :cond_0

    .line 746
    invoke-interface {v0, p1}, Lcom/htc/app/ma/IMaActivity;->setPosition(I)V

    .line 747
    :cond_0
    return-void
.end method

.method private setMenuItemShowAsAction(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    .line 1651
    iget-boolean v4, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    .line 1652
    .local v2, max:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v0, 0x0

    .local v0, cnt:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    if-ge v0, v2, :cond_2

    .line 1653
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1654
    .local v3, mi:Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1655
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1657
    add-int/lit8 v0, v0, 0x1

    .line 1652
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1651
    .end local v0           #cnt:I
    .end local v1           #i:I
    .end local v2           #max:I
    .end local v3           #mi:Landroid/view/MenuItem;
    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    .line 1660
    .restart local v0       #cnt:I
    .restart local v1       #i:I
    .restart local v2       #max:I
    :cond_2
    return-void
.end method

.method private startActivityInternal(Landroid/content/Intent;IILjava/lang/String;Z)V
    .locals 10
    .parameter "i"
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "id"
    .parameter "isAttachNew"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 954
    iget-boolean v4, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v4, :cond_1

    move v1, p3

    .line 956
    .local v1, position:I
    :goto_0
    const-string v4, "start child activity at %d, child count = %d, attach new = %s, %s, flags = %d"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p1, v5, v6

    const/4 v6, 0x4

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 962
    if-eqz p5, :cond_2

    .line 963
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v4, v1, :cond_3

    .line 1003
    :cond_0
    :goto_1
    return-void

    .end local v1           #position:I
    :cond_1
    move v1, p2

    .line 954
    goto :goto_0

    .line 966
    .restart local v1       #position:I
    :cond_2
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-le v4, v1, :cond_0

    .line 971
    :cond_3
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->closeAllMenu()V

    .line 975
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mStartActivityCounts:[I

    aget v5, v4, v1

    add-int/lit8 v2, v5, 0x1

    aput v2, v4, v1

    .line 978
    .local v2, startActivityNo:I
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    .line 979
    .local v0, cachedAct:Lcom/htc/app/ma/IMaActivity;
    if-eqz v0, :cond_4

    .line 980
    invoke-interface {v0}, Lcom/htc/app/ma/IMaActivity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInternal(Ljava/lang/String;)V

    .line 982
    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    .line 985
    invoke-direct {p0, p1, v1, p4}, Lcom/htc/app/ma/MaMainActivity;->startLocalActivity(Landroid/content/Intent;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 988
    .local v3, v:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_5

    .line 989
    iput-boolean v8, p0, Lcom/htc/app/ma/MaMainActivity;->mCanInvalidateMenu:Z

    .line 990
    invoke-virtual {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInChildFrame(I)V

    .line 991
    iput-boolean v9, p0, Lcom/htc/app/ma/MaMainActivity;->mCanInvalidateMenu:Z

    .line 994
    :cond_5
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mStartActivityCounts:[I

    aget v4, v4, v1

    if-ne v2, v4, :cond_7

    .line 995
    if-eqz p5, :cond_6

    .line 996
    invoke-direct {p0, v3}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    goto :goto_1

    .line 998
    :cond_6
    invoke-direct {p0, v3, v1}, Lcom/htc/app/ma/MaMainActivity;->replaceViewInFrame(Landroid/view/View;I)V

    goto :goto_1

    .line 1001
    :cond_7
    const-string v4, "warning: recursive startActivity() found"

    invoke-static {v4}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startLocalActivity(Landroid/content/Intent;ILjava/lang/String;)Landroid/view/View;
    .locals 6
    .parameter "i"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 1006
    if-nez p3, :cond_0

    .line 1007
    invoke-direct {p0, p2}, Lcom/htc/app/ma/MaMainActivity;->generateNewId(I)Ljava/lang/String;

    move-result-object p3

    .line 1009
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1010
    iget v5, p0, Lcom/htc/app/ma/MaMainActivity;->mStartedActivityCnt:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/app/ma/MaMainActivity;->mStartedActivityCnt:I

    .line 1013
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v5

    invoke-virtual {v5, p3, p1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 1017
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1019
    .local v0, a:Landroid/app/Activity;
    instance-of v5, v0, Lcom/htc/app/ma/IMaActivity;

    if-eqz v5, :cond_2

    .line 1020
    iget-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v5, :cond_3

    const/4 v2, 0x2

    .local v2, oriValue:I
    :goto_0
    move-object v1, v0

    .line 1022
    check-cast v1, Lcom/htc/app/ma/IMaActivity;

    .line 1023
    .local v1, ima:Lcom/htc/app/ma/IMaActivity;
    invoke-interface {v1, p3}, Lcom/htc/app/ma/IMaActivity;->setId(Ljava/lang/String;)V

    .line 1024
    invoke-interface {v1, v4, v2}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    .line 1025
    const/4 v5, 0x6

    invoke-interface {v1, v5, v4}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    .line 1026
    const/4 v4, 0x7

    invoke-interface {v1, v4, p2}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    .line 1029
    .end local v1           #ima:Lcom/htc/app/ma/IMaActivity;
    .end local v2           #oriValue:I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after start activity ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), local activity count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/app/ma/MaMainActivity;->mStartedActivityCnt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 1031
    return-object v3

    :cond_3
    move v2, v4

    .line 1020
    goto :goto_0
.end method

.method private withHtcActionBar()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 343
    iget-boolean v3, p0, Lcom/htc/app/ma/MaMainActivity;->mWithHtcActionBar:Z

    if-eqz v3, :cond_0

    .line 357
    :goto_0
    return v2

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 348
    .local v0, ab:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 351
    .local v1, customView:Landroid/view/View;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/htc/widget/HtcActionBar;

    if-eqz v3, :cond_1

    .line 352
    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mWithHtcActionBar:Z

    .line 353
    check-cast v1, Lcom/htc/widget/HtcActionBar;

    .end local v1           #customView:Landroid/view/View;
    iput-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mHtcActionBar:Lcom/htc/widget/HtcActionBar;

    .line 357
    :cond_1
    iget-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mWithHtcActionBar:Z

    goto :goto_0
.end method


# virtual methods
.method protected backToPreviousFrameAndShift()V
    .locals 3

    .prologue
    .line 1242
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1254
    :goto_0
    return-void

    .line 1245
    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1246
    .local v0, v:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->addViewToHead(Landroid/view/View;)V

    .line 1248
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->isDoShiftAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1249
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->performShiftAnimationToPrev()V

    goto :goto_0

    .line 1251
    :cond_1
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->removeTailToCache()V

    .line 1252
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->processCallbackAfterShiftBack()V

    goto :goto_0
.end method

.method protected dimBackground(I)V
    .locals 2
    .parameter "transparentPosition"

    .prologue
    .line 2403
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 2413
    :cond_0
    :goto_0
    return-void

    .line 2405
    :cond_1
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2406
    .local v0, vg:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/app/ma/MaMainActivity;->isDimDrawn:Z

    if-nez v1, :cond_0

    .line 2408
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->lView:Lcom/htc/app/ma/MaMainActivity$LayeredView;

    if-nez v1, :cond_2

    .line 2409
    new-instance v1, Lcom/htc/app/ma/MaMainActivity$LayeredView;

    invoke-direct {v1, p0, p0}, Lcom/htc/app/ma/MaMainActivity$LayeredView;-><init>(Lcom/htc/app/ma/MaMainActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->lView:Lcom/htc/app/ma/MaMainActivity$LayeredView;

    .line 2410
    :cond_2
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->lView:Lcom/htc/app/ma/MaMainActivity$LayeredView;

    invoke-virtual {v1, p1}, Lcom/htc/app/ma/MaMainActivity$LayeredView;->setTransparentPosition(I)V

    .line 2411
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->lView:Lcom/htc/app/ma/MaMainActivity$LayeredView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2412
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/app/ma/MaMainActivity;->isDimDrawn:Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1447
    iput-boolean v0, p0, Lcom/htc/app/ma/MaMainActivity;->mIsTouched:Z

    .line 1449
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1452
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method dispatchOnRotationAnimationBegin(Z)V
    .locals 2
    .parameter "isLand2Port"

    .prologue
    .line 2378
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 2379
    .local v0, key:I
    :goto_0
    const/4 v1, 0x2

    .line 2381
    .local v1, value:I
    invoke-virtual {p0, v0, v1}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    .line 2382
    return-void

    .line 2378
    .end local v0           #key:I
    .end local v1           #value:I
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method dispatchOnRotationAnimationEnd(Z)V
    .locals 2
    .parameter "isLand2Port"

    .prologue
    .line 2385
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 2386
    .local v0, key:I
    :goto_0
    const/4 v1, 0x1

    .line 2388
    .local v1, value:I
    invoke-virtual {p0, v0, v1}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    .line 2389
    return-void

    .line 2385
    .end local v0           #key:I
    .end local v1           #value:I
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    .line 1462
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/app/ma/MaMainActivity;->mIsTouched:Z

    .line 1464
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->isAnimationRunning()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1465
    const/4 v9, 0x1

    .line 1527
    :goto_0
    return v9

    .line 1467
    :cond_0
    iget-boolean v9, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    iget-boolean v9, p0, Lcom/htc/app/ma/MaMainActivity;->mIsEnableFrameDragging:Z

    if-eqz v9, :cond_4

    .line 1471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 1472
    .local v7, tx:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1474
    .local v0, currentTime:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_1

    .line 1476
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 1477
    .local v4, lw:I
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1479
    .local v6, rw:I
    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDAreaRight:I

    add-int/2addr v9, v4

    if-gt v7, v9, :cond_4

    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDAreaLeft:I

    sub-int v9, v4, v9

    if-lt v7, v9, :cond_4

    .line 1481
    const/4 v9, -0x8

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1484
    iput v7, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDX:I

    .line 1485
    iput v4, p0, Lcom/htc/app/ma/MaMainActivity;->mLeftWidthWhenTD:I

    .line 1486
    iput v6, p0, Lcom/htc/app/ma/MaMainActivity;->mRightWidthWhenTD:I

    .line 1487
    iput-wide v0, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDTime:J

    .line 1488
    const/4 v9, 0x1

    goto :goto_0

    .line 1491
    .end local v4           #lw:I
    .end local v6           #rw:I
    :cond_1
    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDX:I

    if-ltz v9, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 1493
    iget-wide v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDTime:J

    sub-long v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 1495
    iget-wide v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDTime:J

    sub-long v9, v0, v9

    const-wide/16 v11, 0x78

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    .line 1497
    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDX:I

    sub-int v2, v7, v9

    .line 1498
    .local v2, diff:I
    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mLeftWidthWhenTD:I

    iget v10, p0, Lcom/htc/app/ma/MaMainActivity;->mRightWidthWhenTD:I

    add-int v8, v9, v10

    .line 1500
    .local v8, width:I
    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mLeftWidthWhenTD:I

    add-int v3, v9, v2

    .line 1501
    .local v3, lAfter:I
    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingBoundaryLeft:I

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1502
    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingBoundaryRight:I

    sub-int v9, v8, v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1504
    sub-int v5, v8, v3

    .line 1506
    .local v5, rAfter:I
    const/4 v9, 0x0

    invoke-direct {p0, v9, v3}, Lcom/htc/app/ma/MaMainActivity;->setChildWidth(II)V

    .line 1507
    const/4 v9, 0x1

    invoke-direct {p0, v9, v5}, Lcom/htc/app/ma/MaMainActivity;->setChildWidth(II)V

    .line 1509
    iget-object v9, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iput v3, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1510
    iget-object v9, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iput v5, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1512
    iput-wide v0, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDTime:J

    .line 1515
    .end local v2           #diff:I
    .end local v3           #lAfter:I
    .end local v5           #rAfter:I
    .end local v8           #width:I
    :cond_2
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1517
    :cond_3
    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDX:I

    if-ltz v9, :cond_4

    .line 1518
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDX:I

    .line 1519
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1527
    .end local v0           #currentTime:J
    .end local v7           #tx:I
    :cond_4
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_0
.end method

.method protected dropFramesExceptFirst()V
    .locals 0

    .prologue
    .line 1923
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->finishAllChildrenExceptFirst()V

    .line 1924
    return-void
.end method

.method protected enableAddingBlockViewWhenRotate(Z)V
    .locals 0
    .parameter "add"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2528
    iput-boolean p1, p0, Lcom/htc/app/ma/MaMainActivity;->mIsAddingBlockViewWhenRotate:Z

    .line 2529
    return-void
.end method

.method protected finishActivityInChildFrame(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1058
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    .line 1062
    .local v0, a:Lcom/htc/app/ma/IMaActivity;
    if-eqz v0, :cond_0

    .line 1065
    invoke-interface {v0}, Lcom/htc/app/ma/IMaActivity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInternal(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected finishActivityInChildFrame(II)V
    .locals 1
    .parameter "landscapePosition"
    .parameter "portraitPosition"

    .prologue
    .line 1043
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {p0, p2}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInChildFrame(I)V

    .line 1048
    :goto_0
    return-void

    .line 1046
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInChildFrame(I)V

    goto :goto_0
.end method

.method protected finishAllChildren()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1076
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1077
    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 1078
    .local v3, v:Landroid/view/View;
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1081
    .end local v3           #v:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1083
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1084
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1085
    .restart local v3       #v:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    .line 1086
    .local v1, ima:Lcom/htc/app/ma/IMaActivity;
    if-eqz v1, :cond_1

    .line 1087
    invoke-interface {v1}, Lcom/htc/app/ma/IMaActivity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInternal(Ljava/lang/String;)V

    goto :goto_1

    .line 1090
    .end local v1           #ima:Lcom/htc/app/ma/IMaActivity;
    .end local v3           #v:Landroid/view/View;
    :cond_2
    iget-boolean v4, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v2, v4

    .line 1092
    .local v2, nFrames:I
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_4

    .line 1093
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    .line 1092
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1090
    .end local v2           #nFrames:I
    :cond_3
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v2, v4

    goto :goto_2

    .line 1096
    .restart local v2       #nFrames:I
    :cond_4
    iput-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIs2ndPanelMode:Z

    .line 1097
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->m1stPanelIntent:Landroid/content/Intent;

    .line 1098
    return-void
.end method

.method protected finishAllChildrenExceptFirst()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 1108
    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/2addr v8, v9

    if-nez v8, :cond_0

    .line 1148
    :goto_0
    return-void

    .line 1111
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 1112
    invoke-direct {p0, v2}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v6

    .line 1113
    .local v6, v:Landroid/view/View;
    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1116
    .end local v6           #v:Landroid/view/View;
    :cond_1
    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1118
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v7, :cond_3

    .line 1119
    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1120
    .restart local v6       #v:Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v3

    .line 1121
    .local v3, ima:Lcom/htc/app/ma/IMaActivity;
    if-eqz v3, :cond_2

    .line 1122
    invoke-interface {v3}, Lcom/htc/app/ma/IMaActivity;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInternal(Ljava/lang/String;)V

    goto :goto_2

    .line 1125
    .end local v3           #ima:Lcom/htc/app/ma/IMaActivity;
    .end local v6           #v:Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1127
    .local v0, first:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->isPortrait()Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    .line 1129
    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    .line 1131
    iget-boolean v8, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v4, v8

    .line 1133
    .local v4, nFrames:I
    :goto_3
    const/4 v2, 0x1

    :goto_4
    if-ge v2, v4, :cond_5

    .line 1134
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v8}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    .line 1133
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1131
    .end local v4           #nFrames:I
    :cond_4
    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v4, v8

    goto :goto_3

    .line 1137
    .restart local v4       #nFrames:I
    :cond_5
    iget-boolean v8, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v8, :cond_7

    const/4 v5, 0x2

    .line 1139
    .local v5, orientationValue:I
    :goto_5
    invoke-virtual {p0, v10}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    .line 1140
    .local v1, firstAct:Lcom/htc/app/ma/IMaActivity;
    if-eqz v1, :cond_6

    .line 1141
    invoke-interface {v1, v7, v5}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    .line 1142
    const/4 v8, 0x6

    invoke-interface {v1, v8, v7}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    .line 1143
    const/4 v7, 0x7

    invoke-interface {v1, v7, v10}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    .line 1146
    :cond_6
    iput-boolean v10, p0, Lcom/htc/app/ma/MaMainActivity;->mIs2ndPanelMode:Z

    .line 1147
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->m1stPanelIntent:Landroid/content/Intent;

    goto :goto_0

    .end local v1           #firstAct:Lcom/htc/app/ma/IMaActivity;
    .end local v5           #orientationValue:I
    :cond_7
    move v5, v7

    .line 1137
    goto :goto_5
.end method

.method protected finishChild(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1158
    invoke-direct {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInternal(Ljava/lang/String;)V

    .line 1159
    return-void
.end method

.method protected getAnimationFlag()I
    .locals 1

    .prologue
    .line 2275
    iget v0, p0, Lcom/htc/app/ma/MaMainActivity;->mAnimationFlag:I

    return v0
.end method

.method public getFullScreen()I
    .locals 1

    .prologue
    .line 2051
    iget v0, p0, Lcom/htc/app/ma/MaMainActivity;->mFullScreenChild:I

    return v0
.end method

.method public getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 1905
    if-nez p1, :cond_0

    move-object v0, v1

    .line 1912
    :goto_0
    return-object v0

    .line 1908
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1909
    .local v0, c:Landroid/content/Context;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/htc/app/ma/IMaActivity;

    if-nez v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 1910
    goto :goto_0

    .line 1912
    :cond_2
    check-cast v0, Lcom/htc/app/ma/IMaActivity;

    goto :goto_0
.end method

.method public getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;
    .locals 2
    .parameter "position"

    .prologue
    .line 1885
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 1886
    :cond_0
    const/4 v1, 0x0

    .line 1890
    :goto_0
    return-object v1

    .line 1888
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 1890
    .local v0, v:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    goto :goto_0
.end method

.method protected getOptionsMenuOrder([I)[I
    .locals 1
    .parameter "menuOwnerIds"

    .prologue
    .line 1768
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState(I)I
    .locals 1
    .parameter "key"

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaStateAgent;->getState(I)I

    move-result v0

    return v0
.end method

.method protected getViewStack()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 1784
    iget-boolean v0, p0, Lcom/htc/app/ma/MaMainActivity;->mCanInvalidateMenu:Z

    if-eqz v0, :cond_0

    .line 1785
    invoke-super {p0}, Landroid/app/ActivityGroup;->invalidateOptionsMenu()V

    .line 1787
    :cond_0
    return-void
.end method

.method protected isAnimationRunning()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 2299
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getState(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getState(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->getState(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getState(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2303
    :cond_0
    const/4 v0, 0x1

    .line 2304
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPortrait()Z
    .locals 1

    .prologue
    .line 1962
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method protected isPortrait(Landroid/content/res/Configuration;)Z
    .locals 2
    .parameter "conf"

    .prologue
    const/4 v0, 0x1

    .line 1969
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected jumpToSecondPanel(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "first"
    .parameter "second"
    .parameter "secondId"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1981
    iget-boolean v0, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v0, :cond_0

    .line 1982
    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIs2ndPanelMode:Z

    .line 1983
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->m1stPanelIntent:Landroid/content/Intent;

    .line 1984
    invoke-virtual {p0, p2, v1, p3}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;ILjava/lang/String;)V

    .line 1989
    :goto_0
    return-void

    .line 1986
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;I)V

    .line 1987
    invoke-virtual {p0, p2, v2, p3}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mChildWaitingForResult:Lcom/htc/app/ma/IMaActivity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 1834
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mChildWaitingForResult:Lcom/htc/app/ma/IMaActivity;

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mChildWaitingForResult:Lcom/htc/app/ma/IMaActivity;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/app/ma/IMaActivity;->onMaActivityResult(IILandroid/content/Intent;)V

    .line 1840
    :goto_0
    return-void

    .line 1839
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/ActivityGroup;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1430
    const-string v0, "onBackPressed"

    invoke-static {v0}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 1432
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    invoke-super {p0}, Landroid/app/ActivityGroup;->onBackPressed()V

    .line 1438
    :goto_0
    return-void

    .line 1437
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->backToPreviousFrameAndShift()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1357
    iget-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    .line 1358
    .local v2, prevIsPortrait:Z
    invoke-virtual {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    .line 1360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConfigurationChanged: prev "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", current "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 1363
    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1365
    .local v3, stackSizeBeforeRotation:I
    iget-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eq v5, v2, :cond_4

    .line 1368
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->closeAllMenu()V

    .line 1369
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->closeSoftInput()V

    .line 1372
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDX:I

    .line 1375
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->restoreChildrenWidth()V

    .line 1378
    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    if-eqz v5, :cond_0

    .line 1379
    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    invoke-virtual {v5}, Lcom/htc/widget/PageHandler;->rotationChanged()V

    .line 1390
    :cond_0
    iget-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIs2ndPanelMode:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1391
    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->m1stPanelIntent:Landroid/content/Intent;

    invoke-direct {p0, v5, v7, v8}, Lcom/htc/app/ma/MaMainActivity;->startLocalActivity(Landroid/content/Intent;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1392
    .local v0, fpanel:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1393
    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    :cond_1
    iput-boolean v7, p0, Lcom/htc/app/ma/MaMainActivity;->mIs2ndPanelMode:Z

    .line 1396
    iput-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->m1stPanelIntent:Landroid/content/Intent;

    .line 1400
    .end local v0           #fpanel:Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->resetFrames()V

    .line 1403
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->invalidateOptionsMenu()V

    .line 1406
    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1407
    .local v4, stackedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 1413
    .end local v4           #stackedView:Landroid/view/View;
    :cond_3
    iget-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-nez v5, :cond_4

    if-nez v3, :cond_4

    .line 1414
    iput-boolean v7, p0, Lcom/htc/app/ma/MaMainActivity;->mIsTouched:Z

    .line 1417
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1418
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 1322
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 1324
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1560
    invoke-direct {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->createMenuReady(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onMaReceiveIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 1227
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 1747
    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 1755
    :cond_0
    :goto_0
    return v2

    .line 1750
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1751
    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    .line 1752
    .local v1, ima:Lcom/htc/app/ma/IMaActivity;
    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lcom/htc/app/ma/IMaActivity;->onMaOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1753
    const/4 v2, 0x1

    goto :goto_0

    .line 1750
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 20
    .parameter "menu"

    .prologue
    .line 1576
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->clear()V

    .line 1578
    invoke-direct/range {p0 .. p1}, Lcom/htc/app/ma/MaMainActivity;->onMaCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1579
    invoke-direct/range {p0 .. p1}, Lcom/htc/app/ma/MaMainActivity;->onMaPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    new-array v11, v0, [I

    .line 1585
    .local v11, menuOwnerIds:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_1

    .line 1586
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v7

    .line 1587
    .local v7, ima:Lcom/htc/app/ma/IMaActivity;
    if-nez v7, :cond_0

    const/16 v18, -0x1

    :goto_1
    aput v18, v11, v5

    .line 1585
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1587
    :cond_0
    invoke-interface {v7}, Lcom/htc/app/ma/IMaActivity;->getMenuOwnerId()I

    move-result v18

    goto :goto_1

    .line 1590
    .end local v7           #ima:Lcom/htc/app/ma/IMaActivity;
    :cond_1
    move-object v4, v11

    .local v4, arr$:[I
    array-length v9, v4

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v9, :cond_2

    aget v5, v4, v6

    .line 1591
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "menu owner id = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 1590
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1593
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/app/ma/MaMainActivity;->getOptionsMenuOrder([I)[I

    move-result-object v8

    .line 1595
    .local v8, itemMap:[I
    if-nez v8, :cond_3

    .line 1596
    invoke-direct/range {p0 .. p1}, Lcom/htc/app/ma/MaMainActivity;->prepareMenuReady(Landroid/view/Menu;)Z

    move-result v18

    .line 1647
    :goto_3
    return v18

    .line 1602
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1604
    .local v10, menuItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    :goto_4
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v18

    if-lez v18, :cond_4

    .line 1605
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 1606
    .local v12, mi:Landroid/view/MenuItem;
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1607
    invoke-interface {v12}, Landroid/view/MenuItem;->getItemId()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_4

    .line 1611
    .end local v12           #mi:Landroid/view/MenuItem;
    :cond_4
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_7

    .line 1614
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/MenuItem;

    .line 1616
    .restart local v12       #mi:Landroid/view/MenuItem;
    if-eqz v12, :cond_4

    .line 1620
    invoke-interface {v12}, Landroid/view/MenuItem;->getItemId()I

    move-result v13

    .line 1621
    .local v13, miId:I
    invoke-interface {v12}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v14

    .line 1626
    .local v14, miSubMenu:Landroid/view/SubMenu;
    const/16 v16, 0x0

    .line 1627
    .local v16, order:I
    :goto_6
    array-length v0, v8

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    aget v18, v8, v16

    move/from16 v0, v18

    if-eq v13, v0, :cond_5

    .line 1628
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 1631
    :cond_5
    if-nez v14, :cond_6

    .line 1632
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v12, v13, v2}, Lcom/htc/app/ma/MaMainActivity;->addItemToMenu(Landroid/view/Menu;Landroid/view/MenuItem;II)V

    goto :goto_5

    .line 1634
    :cond_6
    invoke-interface {v12}, Landroid/view/MenuItem;->getGroupId()I

    move-result v18

    invoke-interface {v12}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v16

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v13, v2, v3}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v15

    .line 1637
    .local v15, newSubMenu:Landroid/view/SubMenu;
    invoke-interface {v12}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/view/SubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 1639
    :goto_7
    invoke-interface {v14}, Landroid/view/SubMenu;->size()I

    move-result v18

    if-lez v18, :cond_4

    .line 1640
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 1641
    .local v17, smi:Landroid/view/MenuItem;
    invoke-interface/range {v17 .. v17}, Landroid/view/MenuItem;->getItemId()I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/SubMenu;->removeItem(I)V

    .line 1642
    invoke-interface/range {v17 .. v17}, Landroid/view/MenuItem;->getItemId()I

    move-result v18

    invoke-interface {v15}, Landroid/view/SubMenu;->size()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/htc/app/ma/MaMainActivity;->addItemToMenu(Landroid/view/Menu;Landroid/view/MenuItem;II)V

    goto :goto_7

    .line 1647
    .end local v12           #mi:Landroid/view/MenuItem;
    .end local v13           #miId:I
    .end local v14           #miSubMenu:Landroid/view/SubMenu;
    .end local v15           #newSubMenu:Landroid/view/SubMenu;
    .end local v16           #order:I
    .end local v17           #smi:Landroid/view/MenuItem;
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/htc/app/ma/MaMainActivity;->prepareMenuReady(Landroid/view/Menu;)Z

    move-result v18

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1336
    const-string v0, "main onResume"

    invoke-static {v0}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    .line 1337
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 1339
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1340
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "container is still, has setMainContainer() been called?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1344
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->isPortrait()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    .line 1345
    return-void
.end method

.method public onStateChanged(III)V
    .locals 1
    .parameter "key"
    .parameter "newValue"
    .parameter "oldValue"

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaStateAgent;->onStateChanged(III)V

    .line 1853
    return-void
.end method

.method protected removeDim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2423
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 2432
    :goto_0
    return-void

    .line 2425
    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2426
    .local v0, vg:Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/htc/app/ma/MaMainActivity;->isDimDrawn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->lView:Lcom/htc/app/ma/MaMainActivity$LayeredView;

    if-nez v1, :cond_2

    .line 2427
    :cond_1
    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->isDimDrawn:Z

    goto :goto_0

    .line 2430
    :cond_2
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->lView:Lcom/htc/app/ma/MaMainActivity$LayeredView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2431
    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->isDimDrawn:Z

    goto :goto_0
.end method

.method protected sendIntentToChild(IILandroid/content/Intent;)V
    .locals 3
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "intent"

    .prologue
    .line 1211
    iget-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v2, :cond_1

    move v1, p2

    .line 1212
    .local v1, position:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    .line 1213
    .local v0, ima:Lcom/htc/app/ma/IMaActivity;
    if-eqz v0, :cond_0

    .line 1214
    invoke-interface {v0, p3}, Lcom/htc/app/ma/IMaActivity;->onMaReceiveIntent(Landroid/content/Intent;)V

    .line 1215
    :cond_0
    return-void

    .end local v0           #ima:Lcom/htc/app/ma/IMaActivity;
    .end local v1           #position:I
    :cond_1
    move v1, p1

    .line 1211
    goto :goto_0
.end method

.method protected setAnimationFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 2253
    iput p1, p0, Lcom/htc/app/ma/MaMainActivity;->mAnimationFlag:I

    .line 2261
    return-void
.end method

.method protected setEnableUxRule2(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1951
    iput-boolean p1, p0, Lcom/htc/app/ma/MaMainActivity;->mIsEnableUxRule2:Z

    .line 1952
    return-void
.end method

.method public setFakeScreenEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2289
    return-void
.end method

.method protected setFrames(II)V
    .locals 1
    .parameter "portraitLayoutResId"
    .parameter "landscapeLayoutResId"

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 447
    .local v0, inflater:Landroid/view/LayoutInflater;
    return-void
.end method

.method protected setFrames(Landroid/view/ViewGroup;[Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "mainContainer"
    .parameter "portParams"
    .parameter "landParams"

    .prologue
    .line 316
    array-length v1, p2

    if-eqz v1, :cond_0

    array-length v1, p3

    if-nez v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/ma/MaMainActivity;->checkAndSetLayoutParams(Landroid/view/ViewGroup;[Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 320
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Main container\'s type and layout params\' type do not match"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_2
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/app/ma/MaMainActivity;->createShiftAnimationAgent(Landroid/view/ViewGroup;[Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)Lcom/htc/widget/PageHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    .line 329
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->withHtcActionBar()Z

    .line 331
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mWidthBackup:[I

    .line 333
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 334
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mWidthBackup:[I

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    aput v2, v1, v0

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 336
    :cond_3
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->initFrames()V

    goto :goto_0
.end method

.method protected setFullScreen(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 2005
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v2, p1, :cond_0

    iget-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v2, :cond_1

    .line 2025
    :cond_0
    :goto_0
    return-void

    .line 2009
    :cond_1
    const/4 v1, 0x0

    .line 2010
    .local v1, width:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2011
    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 2010
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2014
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 2015
    if-ne v0, p1, :cond_3

    .line 2016
    invoke-direct {p0, v0, v1}, Lcom/htc/app/ma/MaMainActivity;->setChildWidth(II)V

    .line 2017
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v2, v2, v0

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2014
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2019
    :cond_3
    invoke-direct {p0, v0, v3}, Lcom/htc/app/ma/MaMainActivity;->setChildWidth(II)V

    .line 2020
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v2, v2, v0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3

    .line 2024
    :cond_4
    iput p1, p0, Lcom/htc/app/ma/MaMainActivity;->mFullScreenChild:I

    goto :goto_0
.end method

.method protected setLandscapeToPortraitShowedFrame(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/app/ma/MaMainActivity;->mL2PShowedFrame:I

    .line 1937
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v0, v0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1939
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/ma/MaMainActivity;->mL2PShowedFrame:I

    .line 1941
    :cond_0
    return-void
.end method

.method protected setMainContainer(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "mainContainer"

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/app/ma/MaMainActivity;->setMainContainer(Landroid/view/ViewGroup;I)V

    .line 239
    return-void
.end method

.method protected setMainContainer(Landroid/view/ViewGroup;I)V
    .locals 13
    .parameter "mainContainer"
    .parameter "portMode"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 249
    const/16 v4, 0x258

    .line 250
    .local v4, portWidth:I
    const/16 v5, 0xfa

    .line 251
    .local v5, portWidth1:I
    const/16 v6, 0x15e

    .line 252
    .local v6, portWidth2:I
    const/16 v1, 0x1a6

    .line 253
    .local v1, landWidth1:I
    const/16 v2, 0x25a

    .line 255
    .local v2, landWidth2:I
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0xab

    if-eq v7, v8, :cond_0

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0xac

    if-eq v7, v8, :cond_0

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x7c

    if-ne v7, v8, :cond_1

    .line 258
    :cond_0
    const/16 v4, 0x320

    .line 259
    const/16 v5, 0x15e

    .line 260
    const/16 v6, 0x1c2

    .line 261
    const/16 v1, 0x1e3

    .line 262
    const/16 v2, 0x31d

    .line 264
    iget-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->PORT_PADDING_10:[[I

    iput-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->mPortPadding:[[I

    .line 265
    iget-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->PORT_PADDING_2PMODE_10:[[I

    iput-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->m2PanePortPadding:[[I

    .line 266
    iget-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->LAND_PADDING_10:[[I

    iput-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->mLandPadding:[[I

    .line 269
    :cond_1
    const/4 v3, 0x0

    .line 270
    .local v3, portParams:[Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x0

    .line 272
    .local v0, landParams:[Landroid/widget/LinearLayout$LayoutParams;
    if-nez p2, :cond_3

    .line 274
    new-array v3, v11, [Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #portParams:[Landroid/widget/LinearLayout$LayoutParams;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    aput-object v7, v3, v10

    .line 290
    .restart local v3       #portParams:[Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    :goto_0
    new-array v0, v12, [Landroid/widget/LinearLayout$LayoutParams;

    .end local v0           #landParams:[Landroid/widget/LinearLayout$LayoutParams;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    aput-object v7, v0, v10

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    aput-object v7, v0, v11

    .line 296
    .restart local v0       #landParams:[Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, p1, v3, v0}, Lcom/htc/app/ma/MaMainActivity;->setFrames(Landroid/view/ViewGroup;[Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    return-void

    .line 278
    :cond_3
    if-ne p2, v11, :cond_2

    .line 280
    new-array v3, v12, [Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #portParams:[Landroid/widget/LinearLayout$LayoutParams;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    aput-object v7, v3, v10

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    aput-object v7, v3, v11

    .line 286
    .restart local v3       #portParams:[Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->m2PanePortPadding:[[I

    iput-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->mPortPadding:[[I

    .line 287
    iput v10, p0, Lcom/htc/app/ma/MaMainActivity;->mL2PShowedFrame:I

    goto :goto_0
.end method

.method protected setOnScreenChildrenState(IIZ)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "valueIsPosition"

    .prologue
    .line 2136
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2137
    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    .line 2138
    .local v1, ima:Lcom/htc/app/ma/IMaActivity;
    if-eqz v1, :cond_0

    .line 2139
    if-eqz p3, :cond_1

    .line 2140
    invoke-interface {v1, p1, v0}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    .line 2136
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2142
    :cond_1
    invoke-interface {v1, p1, p2}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    goto :goto_1

    .line 2145
    .end local v1           #ima:Lcom/htc/app/ma/IMaActivity;
    :cond_2
    return-void
.end method

.method protected setPadding([[I[[I)V
    .locals 0
    .parameter "portraitPadding"
    .parameter "landscapePadding"

    .prologue
    .line 2090
    iput-object p1, p0, Lcom/htc/app/ma/MaMainActivity;->mPortPadding:[[I

    .line 2091
    iput-object p2, p0, Lcom/htc/app/ma/MaMainActivity;->mLandPadding:[[I

    .line 2092
    return-void
.end method

.method protected setRemoveAllViewsWhenRotate(Z)V
    .locals 0
    .parameter "doRemove"

    .prologue
    .line 2235
    return-void
.end method

.method public setState(II)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaStateAgent;->setState(II)V

    .line 1860
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1818
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mChildWaitingForResult:Lcom/htc/app/ma/IMaActivity;

    .line 1819
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1820
    return-void
.end method

.method public startActivityForResultFromMaChild(Lcom/htc/app/ma/IMaActivity;Landroid/content/Intent;I)V
    .locals 0
    .parameter "child"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1802
    if-nez p1, :cond_0

    .line 1807
    :goto_0
    return-void

    .line 1805
    :cond_0
    iput-object p1, p0, Lcom/htc/app/ma/MaMainActivity;->mChildWaitingForResult:Lcom/htc/app/ma/IMaActivity;

    .line 1806
    invoke-super {p0, p2, p3}, Landroid/app/ActivityGroup;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected startActivityInChildFrame(Landroid/content/Intent;I)V
    .locals 6
    .parameter "i"
    .parameter "position"

    .prologue
    .line 869
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/ma/MaMainActivity;->startActivityInternal(Landroid/content/Intent;IILjava/lang/String;Z)V

    .line 870
    return-void
.end method

.method protected startActivityInChildFrame(Landroid/content/Intent;II)V
    .locals 6
    .parameter "i"
    .parameter "landscapePosition"
    .parameter "portraitPosition"

    .prologue
    .line 894
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/ma/MaMainActivity;->startActivityInternal(Landroid/content/Intent;IILjava/lang/String;Z)V

    .line 895
    return-void
.end method

.method protected startActivityInChildFrame(Landroid/content/Intent;IILjava/lang/String;)V
    .locals 6
    .parameter "i"
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "id"

    .prologue
    .line 907
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/ma/MaMainActivity;->startActivityInternal(Landroid/content/Intent;IILjava/lang/String;Z)V

    .line 908
    return-void
.end method

.method protected startActivityInChildFrame(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 6
    .parameter "i"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 881
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/ma/MaMainActivity;->startActivityInternal(Landroid/content/Intent;IILjava/lang/String;Z)V

    .line 882
    return-void
.end method

.method protected startActivityInNextChildFrameAndShift(Landroid/content/Intent;I)V
    .locals 1
    .parameter "i"
    .parameter "currentPosition"

    .prologue
    .line 920
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/app/ma/MaMainActivity;->startActivityInNextChildFrameAndShift(Landroid/content/Intent;ILjava/lang/String;)V

    .line 921
    return-void
.end method

.method protected startActivityInNextChildFrameAndShift(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 6
    .parameter "i"
    .parameter "currentPosition"
    .parameter "id"

    .prologue
    .line 934
    add-int/lit8 v2, p2, 0x1

    .line 935
    .local v2, next:I
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ne v2, v0, :cond_0

    const/4 v5, 0x1

    .local v5, shift:Z
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p3

    .line 937
    invoke-direct/range {v0 .. v5}, Lcom/htc/app/ma/MaMainActivity;->startActivityInternal(Landroid/content/Intent;IILjava/lang/String;Z)V

    .line 939
    if-nez v5, :cond_1

    .line 948
    :goto_1
    return-void

    .line 935
    .end local v5           #shift:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 942
    .restart local v5       #shift:Z
    :cond_1
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->isDoShiftAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 943
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->performShiftAnimationToNext()V

    goto :goto_1

    .line 945
    :cond_2
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->removeHeadToStack()V

    .line 946
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->processCallbackAfterShiftNext()V

    goto :goto_1
.end method

.method protected startLocalActivity(Landroid/content/Intent;)Landroid/view/View;
    .locals 2
    .parameter "i"

    .prologue
    .line 2222
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/app/ma/MaMainActivity;->startLocalActivity(Landroid/content/Intent;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected unsetFullScreen()V
    .locals 1

    .prologue
    .line 2037
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/ma/MaMainActivity;->mFullScreenChild:I

    .line 2038
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->restoreChildrenWidth()V

    .line 2039
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->setFrameParams()V

    .line 2040
    return-void
.end method
