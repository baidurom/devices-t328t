.class public Lcom/htc/widget/HtcActionBar;
.super Landroid/widget/LinearLayout;
.source "HtcActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcActionBar$MenuDropDownAdapter;,
        Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;,
        Lcom/htc/widget/HtcActionBar$OnShowSearchBoxListener;,
        Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;,
        Lcom/htc/widget/HtcActionBar$OnDropDownListItemClickListener;,
        Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;,
        Lcom/htc/widget/HtcActionBar$HtcMenuItem;,
        Lcom/htc/widget/HtcActionBar$ActionbarAdapter;
    }
.end annotation


# static fields
.field public static final DEFAULT_STYLE:I = 0x0

.field public static final DROPDOWN_MODE:I = 0x1

.field public static final FULLSCREEN_BLUE_STYLE:I = 0x2

.field public static final FULLSCREEN_STYLE:I = 0x1

.field private static final MAX_ACTION_BAR_BUTTON_COUNT:I = 0x4

.field public static final STANDARD_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcActionBar"

.field public static final TRANSPARENT_STYLE:I = 0x3

.field public static final TWOLEVEL_DROPDOWN_MODE:I = 0x2


# instance fields
.field private divider:Landroid/graphics/drawable/Drawable;

.field isContainActionItem:Z

.field isDismissDropDownOnBackKey:Z

.field private isGoogleAPISupported:Z

.field private isInitDropDown:Z

.field private isMenuButtonenabled:Z

.field isRotate:Z

.field private isShowAppButton:Z

.field private mActionBarButtonDropDownWithControlWidth:I

.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mAppButtonContainer:Landroid/widget/RelativeLayout;

.field private mAppButtonMode:I

.field private mAppDropDown:Lcom/htc/widget/DropDownList;

.field private mArrowDownWidth:I

.field private mBackButton:Landroid/widget/LinearLayout;

.field private mBackButtonEnabled:Z

.field private mBaseBkgContainer:Landroid/widget/LinearLayout;

.field private mButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCenterLayout:Landroid/widget/LinearLayout;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFourButtonSearchBoxWidth:I

.field private mFullScreenStyleEnabled:Z

.field mHasOverflow:Z

.field mIsBubbleShown:Z

.field private mIsDispatchBackKey:Z

.field mIsMenuButtonClicked:Z

.field mIsMenuDropDownShowing:Z

.field private mIsMenuEnabled:Z

.field private mIsSearchBoxEnabled:Z

.field private mIsShowCustomView:Z

.field private mIsShowProgressbar:Z

.field private mMainTitleRawWidth:I

.field private mMaxActionBarButtonDropDownWidth:I

.field private mMaxAppButtonDropDownWidth:I

.field private mMaxAppButtonWidth:I

.field private mMaxDropDownHieghtInLand:I

.field private mMaxDropDownHieghtInPort:I

.field private mMenu:Landroid/view/Menu;

.field private mMenuDropDown:Lcom/htc/widget/DropDownList;

.field private mMenuDropDownAdapter:Lcom/htc/widget/HtcActionBar$MenuDropDownAdapter;

.field mMenuDropDownFocusable:Z

.field private mMenuItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMinActionBarButtonDropDownWidth:I

.field private mMinAppButtonDropDownWidth:I

.field private mOnActionButtonClickListener:Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;

.field private mOnDropDownListItemClickListener:Lcom/htc/widget/HtcActionBar$OnDropDownListItemClickListener;

.field private mOnShowSearchBoxListener:Lcom/htc/widget/HtcActionBar$OnShowSearchBoxListener;

.field private mOneButtonSearchBoxWidth:I

.field private mSearchBox:Lcom/htc/widget/SearchBoxView;

.field private mSearchBoxContainer:Landroid/widget/LinearLayout;

.field private mSearchBoxListener:Landroid/view/View$OnClickListener;

.field private mSerachBoxContainerLP:Landroid/widget/LinearLayout$LayoutParams;

.field private mShowSearchBoxClickListener:Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;

.field private mShownButtonCount:I

.field private mSpecialOnFragListener:Lcom/htc/widget/AbrOnDragListener;

.field private mStubView:Landroid/view/View;

.field private mStyle:I

.field private mSubMenuDropDownAdapterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mSubTitleRawWidth:I

.field private mThreeButtonSearchBoxWidth:I

.field private mTitlebarBaseBkgResId:I

.field private mTitlebarFullScreenBaseBkgResId:I

.field private mTransparentStyleEnabled:Z

.field private mTwoButtonSearchBoxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 183
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcActionBar;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 121
    iput v3, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    .line 131
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsSearchBoxEnabled:Z

    .line 132
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z

    .line 133
    iput v3, p0, Lcom/htc/widget/HtcActionBar;->mAppButtonMode:I

    .line 145
    iput v3, p0, Lcom/htc/widget/HtcActionBar;->mMainTitleRawWidth:I

    .line 146
    iput v3, p0, Lcom/htc/widget/HtcActionBar;->mSubTitleRawWidth:I

    .line 147
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->isInitDropDown:Z

    .line 154
    iput v3, p0, Lcom/htc/widget/HtcActionBar;->mStyle:I

    .line 155
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    .line 156
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    .line 157
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mBackButtonEnabled:Z

    .line 158
    iput-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->isShowAppButton:Z

    .line 159
    iput-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->isGoogleAPISupported:Z

    .line 160
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsDispatchBackKey:Z

    .line 161
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsShowProgressbar:Z

    .line 163
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsShowCustomView:Z

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HtcActionBar;->divider:Landroid/graphics/drawable/Drawable;

    .line 464
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mHasOverflow:Z

    .line 637
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->isContainActionItem:Z

    .line 1037
    iput-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->isMenuButtonenabled:Z

    .line 2034
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsBubbleShown:Z

    .line 2433
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->isRotate:Z

    .line 2641
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->isDismissDropDownOnBackKey:Z

    .line 3094
    iput-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDownFocusable:Z

    .line 3106
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuButtonClicked:Z

    .line 3107
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuDropDownShowing:Z

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcActionBar;->mButtonModeList:Ljava/util/List;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuItemList:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcActionBar;->mSubMenuDropDownAdapterList:Ljava/util/ArrayList;

    .line 188
    new-instance v1, Lcom/htc/widget/HtcActionBar$MenuDropDownAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuItemList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/HtcActionBar$MenuDropDownAdapter;-><init>(Lcom/htc/widget/HtcActionBar;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDownAdapter:Lcom/htc/widget/HtcActionBar$MenuDropDownAdapter;

    .line 189
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mButtonModeList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mSubMenuDropDownAdapterList:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;-><init>(Lcom/htc/widget/HtcActionBar;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->setWillNotDraw(Z)V

    .line 195
    invoke-direct {p0, p2, p3}, Lcom/htc/widget/HtcActionBar;->getActionBarResId(Landroid/util/AttributeSet;I)V

    .line 199
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mOneButtonSearchBoxWidth:I

    .line 200
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mTwoButtonSearchBoxWidth:I

    .line 201
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mThreeButtonSearchBoxWidth:I

    .line 202
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mFourButtonSearchBoxWidth:I

    .line 204
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mMaxActionBarButtonDropDownWidth:I

    .line 205
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mMinActionBarButtonDropDownWidth:I

    .line 206
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mActionBarButtonDropDownWithControlWidth:I

    .line 207
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mMaxAppButtonDropDownWidth:I

    .line 208
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mMinAppButtonDropDownWidth:I

    .line 209
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mMaxDropDownHieghtInPort:I

    .line 210
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mMaxDropDownHieghtInLand:I

    .line 211
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mMaxAppButtonWidth:I

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcActionBar;)Lcom/htc/widget/DropDownList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcActionBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcActionBar;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcActionBar;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcActionBar;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcActionBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->isGoogleAPISupported:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcActionBar;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcActionBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->mIsSearchBoxEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcActionBar;)Lcom/htc/widget/SearchBoxView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcActionBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->setupSearchBox()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcActionBar;)Lcom/htc/widget/HtcActionBar$OnShowSearchBoxListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mOnShowSearchBoxListener:Lcom/htc/widget/HtcActionBar$OnShowSearchBoxListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcActionBar;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private adjustDropDownLocationAfterRotate()V
    .locals 4

    .prologue
    .line 2417
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->isRotate:Z

    if-eqz v2, :cond_3

    .line 2418
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2419
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x20200e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/DropDownList;

    .line 2420
    .local v0, dropDown:Lcom/htc/widget/DropDownList;
    if-eqz v0, :cond_0

    .line 2421
    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2422
    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->showDropDown()V

    .line 2418
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2427
    .end local v0           #dropDown:Lcom/htc/widget/DropDownList;
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2428
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->showDropDown()V

    .line 2430
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->isRotate:Z

    .line 2432
    .end local v1           #i:I
    :cond_3
    return-void
.end method

.method private adjustLayoutForBackButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1425
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mBaseBkgContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1426
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1428
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    .line 1429
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1430
    .local v0, appDropdownLP:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x1

    const v3, 0x20200dc

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1431
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMaxAppButtonWidth:I

    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->getBackButtonAreaWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1434
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->updateAppButtonWidth()V

    .line 1435
    return-void
.end method

.method private adjustProgressBarLocation(ZILandroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/ImageView;)V
    .locals 4
    .parameter "isSubTitleVisible"
    .parameter "titleWidth"
    .parameter "mainTitleLP"
    .parameter "subTitleLP"
    .parameter "appDropDownLP"
    .parameter "arrowDownLP"
    .parameter "iv"

    .prologue
    const/16 v3, 0x15

    const/4 v2, 0x6

    const/16 v1, 0x1e

    .line 1270
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->mIsShowProgressbar:Z

    if-eqz v0, :cond_2

    invoke-virtual {p7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1271
    if-eqz p1, :cond_1

    .line 1272
    iget v0, p0, Lcom/htc/widget/HtcActionBar;->mArrowDownWidth:I

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x8

    iput v0, p3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1273
    iput v1, p4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1278
    :goto_0
    iget v0, p5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-ge v0, p2, :cond_0

    .line 1279
    iget v0, p6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/lit8 v0, v0, -0x16

    iput v0, p6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1293
    :cond_0
    :goto_1
    return-void

    .line 1275
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcActionBar;->mArrowDownWidth:I

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x8

    iput v0, p3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 1281
    :cond_2
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->mIsShowProgressbar:Z

    if-eqz v0, :cond_3

    .line 1282
    iput v1, p3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1283
    iput v1, p4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 1284
    :cond_3
    invoke-virtual {p7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1285
    iput v3, p3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1286
    iput v3, p4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1287
    iget v0, p5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mMainTitleRawWidth:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcActionBar;->mMainTitleRawWidth:I

    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mSubTitleRawWidth:I

    if-le v0, v1, :cond_0

    .line 1288
    iget v0, p3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/lit8 v0, v0, -0xf

    iput v0, p3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 1290
    :cond_4
    iput v2, p3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1291
    iput v2, p4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method private adjustTitleBarBkg(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "buttonIndex"

    .prologue
    .line 1876
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/htc/widget/HtcActionBar;->updateButtonsBkg(IZ)V

    .line 1877
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->measureRightmostButton()V

    .line 1878
    return-void
.end method

.method private applyDefaultStyle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 390
    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mTitlebarBaseBkgResId:I

    if-eqz v1, :cond_0

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mBaseBkgContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 396
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 398
    iput-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    .line 399
    iput-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    .line 400
    return-void
.end method

.method private applyFullScreenBlueStyle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 403
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mBaseBkgContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 404
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    .line 406
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mBaseBkgContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 407
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 410
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    const/16 v3, 0x45

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v5, v4, v5}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    .line 411
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->getLeftmostButtonIndex()I

    move-result v0

    .line 414
    .local v0, leftmostButtonIndex:I
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    .line 415
    return-void
.end method

.method private applyFullScreenStyle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 418
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mBaseBkgContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 419
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    .line 420
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mBaseBkgContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 421
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mBaseBkgContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 422
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 425
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    const/16 v3, 0x45

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v5, v4, v5}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    .line 426
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->getLeftmostButtonIndex()I

    move-result v0

    .line 429
    .local v0, leftmostButtonIndex:I
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    .line 430
    return-void
.end method

.method private applyTransparentStyle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 433
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mBaseBkgContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 434
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    .line 435
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mBaseBkgContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 436
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mBaseBkgContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 437
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 439
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->getLeftmostButtonIndex()I

    move-result v0

    .line 442
    .local v0, leftmostButtonIndex:I
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    const/16 v3, 0x45

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v5, v4, v5}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    .line 444
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    .line 445
    return-void
.end method

.method private buildAdapterFromMenu(Ljava/util/ArrayList;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MenuItem;",
            ">;)",
            "Landroid/widget/BaseAdapter;"
        }
    .end annotation

    .prologue
    .line 586
    .local p1, menuItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDownAdapter:Lcom/htc/widget/HtcActionBar$MenuDropDownAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcActionBar$MenuDropDownAdapter;->setMenu(Ljava/util/ArrayList;)V

    .line 587
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDownAdapter:Lcom/htc/widget/HtcActionBar$MenuDropDownAdapter;

    return-object v0
.end method

.method private buildAdapterFromSubMenu(Landroid/view/SubMenu;I)Landroid/widget/BaseAdapter;
    .locals 2
    .parameter "menu"
    .parameter "buttonIndex"

    .prologue
    .line 580
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mSubMenuDropDownAdapterList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;

    .line 581
    .local v0, adapter:Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;->setMenu(Landroid/view/SubMenu;)V

    .line 582
    return-object v0
.end method

.method private checkItemActionViewWithControl(Landroid/view/Menu;Lcom/htc/widget/DropDownList;)V
    .locals 4
    .parameter "menu"
    .parameter "dropDownList"

    .prologue
    .line 567
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 568
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    .line 569
    .local v1, view:Landroid/view/View;
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 567
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 570
    check-cast v2, Landroid/view/ViewGroup;

    .line 571
    .local v2, viewGroup:Landroid/view/ViewGroup;
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcActionBar;->isContainControlsInActionView(Landroid/view/ViewGroup;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 572
    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {p2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 573
    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {p2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 577
    .end local v1           #view:Landroid/view/View;
    .end local v2           #viewGroup:Landroid/view/ViewGroup;
    :cond_2
    return-void
.end method

.method private clearActionbarButton()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 705
    const-string v1, "HtcActionBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearActionbarButton "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsSearchBoxEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsSearchBoxEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isContainActionItem = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->isContainActionItem:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_6

    iget-boolean v1, p0, Lcom/htc/widget/HtcActionBar;->isContainActionItem:Z

    if-eqz v1, :cond_6

    .line 707
    if-ne v0, v5, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z

    if-nez v1, :cond_5

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/htc/widget/HtcActionBar;->mIsSearchBoxEnabled:Z

    if-nez v1, :cond_5

    .line 709
    :cond_1
    invoke-direct {p0, v0, v4}, Lcom/htc/widget/HtcActionBar;->showButtonInner(IZ)V

    .line 710
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonDropDownAdapter(ILandroid/widget/ListAdapter;)V

    .line 711
    invoke-virtual {p0, v0, v4}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonMode(II)V

    .line 717
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/htc/widget/HtcActionBar;->mIsSearchBoxEnabled:Z

    if-nez v1, :cond_4

    .line 718
    :cond_3
    invoke-virtual {p0, v0, v4}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonIcon(II)V

    .line 719
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonText(ILjava/lang/String;)V

    .line 706
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 713
    :cond_5
    if-ne v0, v5, :cond_2

    iget-boolean v1, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z

    if-eqz v1, :cond_2

    .line 714
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->disableMenuButton()V

    goto :goto_1

    .line 723
    :cond_6
    return-void
.end method

.method private constructHtcActionBar(Landroid/view/Menu;)V
    .locals 12
    .parameter "menu"

    .prologue
    .line 639
    if-nez p1, :cond_0

    .line 702
    :goto_0
    return-void

    .line 641
    :cond_0
    const-string v9, "HtcActionBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "constructHtcActionBar "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/widget/HtcActionBar;->mStyle:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v6, nonActionButtonItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 644
    iget-object v9, p0, Lcom/htc/widget/HtcActionBar;->mMenuItemList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 645
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcActionBar;->flagActionItems(Landroid/view/Menu;)V

    .line 646
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v5

    .line 647
    .local v5, menuItemCount:I
    const/4 v3, 0x0

    .line 652
    .local v3, isMoveItemInDropDown:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_6

    .line 654
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 659
    .local v4, item:Lcom/android/internal/view/menu/MenuItemImpl;
    iget-boolean v9, p0, Lcom/htc/widget/HtcActionBar;->mHasOverflow:Z

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    const/4 v3, 0x1

    .line 663
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v9

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    const/4 v10, 0x3

    if-gt v9, v10, :cond_5

    if-nez v3, :cond_5

    .line 664
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcActionBar;->isContainActionItem:Z

    .line 665
    iget v9, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonIcon(ILandroid/graphics/drawable/Drawable;)V

    .line 666
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 667
    .local v8, text:Ljava/lang/String;
    iget v9, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    invoke-virtual {p0, v9, v8}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonText(ILjava/lang/String;)V

    .line 668
    iget-object v9, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    iget v10, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const v10, 0x20200e0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 669
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 670
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v7

    .line 671
    .local v7, subMenu:Landroid/view/SubMenu;
    iget v9, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonMode(II)V

    .line 673
    iget v9, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/htc/widget/HtcActionBar;->showButtonInner(IZ)V

    .line 674
    if-eqz v7, :cond_2

    .line 675
    iget v9, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    add-int/lit8 v9, v9, -0x1

    invoke-direct {p0, v7, v9}, Lcom/htc/widget/HtcActionBar;->buildAdapterFromSubMenu(Landroid/view/SubMenu;I)Landroid/widget/BaseAdapter;

    move-result-object v0

    .line 676
    .local v0, a:Landroid/widget/BaseAdapter;
    iget v9, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9, v0}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonDropDownAdapter(ILandroid/widget/ListAdapter;)V

    .line 677
    iget-object v9, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    iget v10, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const v10, 0x20200e0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 678
    .local v1, dropDownList:Lcom/htc/widget/DropDownList;
    invoke-direct {p0, p1, v1}, Lcom/htc/widget/HtcActionBar;->checkItemActionViewWithControl(Landroid/view/Menu;Lcom/htc/widget/DropDownList;)V

    .line 685
    .end local v0           #a:Landroid/widget/BaseAdapter;
    .end local v1           #dropDownList:Lcom/htc/widget/DropDownList;
    .end local v7           #subMenu:Landroid/view/SubMenu;
    :cond_2
    :goto_2
    iget v9, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonEnabled(IZ)V

    .line 652
    .end local v8           #text:Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 681
    .restart local v8       #text:Ljava/lang/String;
    :cond_4
    iget v9, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonMode(II)V

    .line 683
    iget v9, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/htc/widget/HtcActionBar;->showButtonInner(IZ)V

    goto :goto_2

    .line 688
    .end local v8           #text:Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 689
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 694
    .end local v4           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 695
    invoke-direct {p0, v6}, Lcom/htc/widget/HtcActionBar;->buildAdapterFromMenu(Ljava/util/ArrayList;)Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/widget/HtcActionBar;->setMenuDropDownAdapterInner(Landroid/widget/ListAdapter;)V

    .line 696
    iget-object v9, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    new-instance v10, Lcom/htc/widget/HtcActionBar$HtcMenuItem;

    const v11, 0x20200e0

    invoke-direct {v10, p0, v11}, Lcom/htc/widget/HtcActionBar$HtcMenuItem;-><init>(Lcom/htc/widget/HtcActionBar;I)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/DropDownList;->setTag(Ljava/lang/Object;)V

    .line 697
    iget-boolean v9, p0, Lcom/htc/widget/HtcActionBar;->isMenuButtonenabled:Z

    if-eqz v9, :cond_7

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonEnabled(IZ)V

    .line 698
    :cond_7
    iget-object v9, p0, Lcom/htc/widget/HtcActionBar;->mMenu:Landroid/view/Menu;

    iget-object v10, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-direct {p0, v9, v10}, Lcom/htc/widget/HtcActionBar;->checkItemActionViewWithControl(Landroid/view/Menu;Lcom/htc/widget/DropDownList;)V

    .line 700
    :cond_8
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->updateAppButtonWidth()V

    .line 701
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->updateButtonsBkgInner()V

    goto/16 :goto_0
.end method

.method private dismissDropDown()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2644
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2645
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x20200e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/DropDownList;

    .line 2646
    .local v0, dropDown:Lcom/htc/widget/DropDownList;
    if-eqz v0, :cond_2

    .line 2647
    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2648
    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 2649
    iput-boolean v4, p0, Lcom/htc/widget/HtcActionBar;->isDismissDropDownOnBackKey:Z

    .line 2654
    .end local v0           #dropDown:Lcom/htc/widget/DropDownList;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2655
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 2656
    iput-boolean v4, p0, Lcom/htc/widget/HtcActionBar;->isDismissDropDownOnBackKey:Z

    .line 2658
    :cond_1
    return-void

    .line 2644
    .restart local v0       #dropDown:Lcom/htc/widget/DropDownList;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private dismissDropDownOnClearButton()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2662
    const/4 v0, 0x0

    .line 2663
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2664
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v4, 0x20200e0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 2665
    .local v1, dropDown:Lcom/htc/widget/DropDownList;
    if-eqz v1, :cond_2

    .line 2666
    invoke-virtual {v1}, Lcom/htc/widget/DropDownList;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2667
    invoke-virtual {v1}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 2668
    invoke-virtual {v1}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 2669
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionBar;->isDismissDropDownOnBackKey:Z

    .line 2674
    .end local v1           #dropDown:Lcom/htc/widget/DropDownList;
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v3}, Lcom/htc/widget/DropDownList;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2675
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v3}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 2676
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v3}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 2677
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionBar;->isDismissDropDownOnBackKey:Z

    .line 2679
    :cond_1
    return-void

    .line 2663
    .restart local v1       #dropDown:Lcom/htc/widget/DropDownList;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 2357
    iget-object v8, p0, Lcom/htc/widget/HtcActionBar;->mSpecialOnFragListener:Lcom/htc/widget/AbrOnDragListener;

    if-eqz v8, :cond_1

    .line 2358
    iget-object v8, p0, Lcom/htc/widget/HtcActionBar;->mSpecialOnFragListener:Lcom/htc/widget/AbrOnDragListener;

    invoke-virtual {v8}, Lcom/htc/widget/AbrOnDragListener;->IsDeleteMode()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2415
    :cond_0
    :goto_0
    return-void

    .line 2366
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getWidth()I

    move-result v5

    .line 2368
    .local v5, boundleft:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2370
    .local v1, VisibleButtonIndex:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget-object v8, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 2372
    iget-object v8, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 2373
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2370
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2375
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2376
    .local v7, resources:Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/htc/widget/HtcActionBar;->divider:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_4

    .line 2378
    const-string v8, "onDraw"

    const-string v9, "draw divider = null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2382
    :cond_4
    iget-boolean v8, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    if-eqz v8, :cond_5

    .line 2384
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x205003c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    .line 2385
    .local v4, boundTop:I
    const/4 v2, 0x0

    .line 2386
    .local v2, boundBotton:I
    const-string v8, "Draw"

    const-string v9, "HtcActionBar Transparent style"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    :goto_2
    iget v8, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-lez v8, :cond_0

    .line 2401
    iget-object v8, p0, Lcom/htc/widget/HtcActionBar;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v5, v8

    .line 2402
    const/4 v6, 0x1

    :goto_3
    iget v8, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-gt v6, v8, :cond_0

    .line 2404
    iget-object v9, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    iget v8, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    sub-int/2addr v8, v6

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2405
    .local v0, DisplayButton:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v5, v8

    .line 2406
    iget-object v8, p0, Lcom/htc/widget/HtcActionBar;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int v3, v5, v8

    .line 2407
    .local v3, boundRight:I
    iget-object v8, p0, Lcom/htc/widget/HtcActionBar;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v5, v4, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2408
    iget-object v8, p0, Lcom/htc/widget/HtcActionBar;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2409
    const-string v8, "Draw"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "boundleft="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",boundRight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",boundTop="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",boundBotton="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2388
    .end local v0           #DisplayButton:Landroid/view/View;
    .end local v2           #boundBotton:I
    .end local v3           #boundRight:I
    .end local v4           #boundTop:I
    :cond_5
    iget-boolean v8, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-eqz v8, :cond_6

    .line 2390
    const/4 v4, 0x0

    .line 2391
    .restart local v4       #boundTop:I
    const/4 v2, 0x0

    .line 2392
    .restart local v2       #boundBotton:I
    const-string v8, "Draw"

    const-string v9, "HtcActionBar Fullscreen style"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2396
    .end local v2           #boundBotton:I
    .end local v4           #boundTop:I
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x205003a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    .line 2397
    .restart local v4       #boundTop:I
    const/4 v2, 0x0

    .line 2398
    .restart local v2       #boundBotton:I
    const-string v8, "Draw"

    const-string v9, "HtcActionBar Default style"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private filterInvisibleItems(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    .line 448
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    .line 449
    .local v2, itemsSize:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v3, mInvisibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 451
    iget-object v4, p0, Lcom/htc/widget/HtcActionBar;->mMenuItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 453
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 454
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 455
    .local v1, item:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/htc/widget/HtcActionBar;->mMenuItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 461
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 463
    :cond_2
    return-void
.end method

.method private findButtonByItemId(I)Landroid/view/View;
    .locals 4
    .parameter "itemId"

    .prologue
    .line 1472
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 1473
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1474
    .local v0, buttonLayout:Landroid/view/View;
    const v3, 0x20200e0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    .line 1475
    .local v2, item:Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1478
    .end local v0           #buttonLayout:Landroid/view/View;
    .end local v2           #item:Landroid/view/MenuItem;
    :goto_1
    return-object v0

    .line 1472
    .restart local v0       #buttonLayout:Landroid/view/View;
    .restart local v2       #item:Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1478
    .end local v0           #buttonLayout:Landroid/view/View;
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private flagActionItems(Landroid/view/Menu;)V
    .locals 17
    .parameter "menu"

    .prologue
    .line 466
    const/4 v9, 0x4

    .line 468
    .local v9, maxActions:I
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/widget/HtcActionBar;->mHasOverflow:Z

    .line 472
    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcActionBar;->filterInvisibleItems(Landroid/view/Menu;)V

    .line 473
    const-string v14, "HtcActionBar"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "menu visible size = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v10

    .line 475
    .local v10, menuItemCount:I
    const/4 v12, 0x0

    .line 476
    .local v12, requiredItems:I
    const/4 v11, 0x0

    .line 477
    .local v11, requestedItems:I
    const/4 v3, 0x0

    .line 478
    .local v3, hasOverflow:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v10, :cond_2

    .line 479
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 481
    .local v7, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 482
    add-int/lit8 v12, v12, 0x1

    .line 478
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 484
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 486
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 489
    .end local v7           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/widget/HtcActionBar;->mHasOverflow:Z

    .line 491
    if-nez v3, :cond_3

    add-int v14, v12, v11

    if-le v14, v9, :cond_4

    .line 492
    :cond_3
    add-int/lit8 v9, v9, -0x1

    .line 494
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/widget/HtcActionBar;->mHasOverflow:Z

    .line 496
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    sub-int/2addr v9, v14

    .line 497
    sub-int/2addr v9, v12

    .line 498
    if-gez v9, :cond_5

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/widget/HtcActionBar;->mHasOverflow:Z

    .line 502
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcActionBar;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 503
    .local v13, seenGroups:Landroid/util/SparseBooleanArray;
    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->clear()V

    .line 506
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v10, :cond_d

    .line 507
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 509
    .restart local v7       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 510
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    .line 511
    .local v2, groupId:I
    if-eqz v2, :cond_6

    .line 512
    const/4 v14, 0x1

    invoke-virtual {v13, v2, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 506
    .end local v2           #groupId:I
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 514
    :cond_7
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 515
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    .line 516
    .restart local v2       #groupId:I
    invoke-virtual {v13, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 517
    .local v5, inGroup:Z
    if-lez v9, :cond_9

    const/4 v6, 0x1

    .line 518
    .local v6, isAction:Z
    :goto_4
    add-int/lit8 v9, v9, -0x1

    .line 520
    if-eqz v6, :cond_a

    if-eqz v2, :cond_a

    .line 521
    const/4 v14, 0x1

    invoke-virtual {v13, v2, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 533
    :cond_8
    invoke-virtual {v7, v6}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto :goto_3

    .line 517
    .end local v6           #isAction:Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    .line 522
    .restart local v6       #isAction:Z
    :cond_a
    if-eqz v5, :cond_8

    .line 524
    const/4 v14, 0x0

    invoke-virtual {v13, v2, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 525
    const/4 v8, 0x0

    .local v8, j:I
    :goto_5
    if-ge v8, v4, :cond_8

    .line 526
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 527
    .local v1, areYouMyGroupie:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v14

    if-ne v14, v2, :cond_b

    .line 528
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 525
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 534
    .end local v1           #areYouMyGroupie:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v2           #groupId:I
    .end local v5           #inGroup:Z
    .end local v6           #isAction:Z
    .end local v8           #j:I
    :cond_c
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v14

    if-nez v14, :cond_6

    .line 535
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto :goto_3

    .line 539
    .end local v7           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_d
    return-void
.end method

.method private getActionBarResId(Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "set"
    .parameter "defStyleAttr"

    .prologue
    const/4 v3, 0x0

    .line 358
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 360
    .local v1, context:Landroid/content/Context;
    sget-object v2, Lcom/htc/R$styleable;->HtcActionBar:[I

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 361
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcActionBar;->mStyle:I

    .line 371
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 387
    return-void
.end method

.method private getBackButtonAreaWidth()I
    .locals 2

    .prologue
    .line 1415
    const/4 v0, 0x0

    .line 1416
    .local v0, width:I
    iget-boolean v1, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-eqz v1, :cond_1

    .line 1417
    :cond_0
    const/16 v0, 0x41

    .line 1421
    :goto_0
    return v0

    .line 1419
    :cond_1
    const/16 v0, 0x46

    goto :goto_0
.end method

.method private getBkgResIdInSkinPackage(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 5
    .parameter "context"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 224
    if-nez p2, :cond_0

    .line 225
    const-string v2, "HtcActionBar"

    const-string v3, "Resource Name is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local p3
    :goto_0
    return p3

    .line 228
    .restart local p3
    :cond_0
    move v1, p3

    .line 230
    .local v1, resId:I
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move p3, v1

    .line 235
    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    move v1, p3

    .line 233
    const-string v2, "HtcActionBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getBkgResName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 246
    const/4 v1, 0x0

    .line 248
    .local v1, resName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 252
    :goto_0
    return-object v1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "HtcActionBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Background resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getLeftmostButtonIndex()I
    .locals 4

    .prologue
    .line 1863
    const/4 v2, 0x0

    .line 1864
    .local v2, leftmostButtonIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1865
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1866
    .local v0, buttonContainer:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1867
    move v2, v1

    .line 1871
    .end local v0           #buttonContainer:Landroid/view/View;
    :cond_0
    return v2

    .line 1864
    .restart local v0       #buttonContainer:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getRightmostButtonIndex()I
    .locals 4

    .prologue
    .line 1851
    const/4 v2, 0x0

    .line 1852
    .local v2, rightmostButtonIndex:I
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1853
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1854
    .local v0, buttonContainer:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1855
    move v2, v1

    .line 1859
    .end local v0           #buttonContainer:Landroid/view/View;
    :cond_0
    return v2

    .line 1852
    .restart local v0       #buttonContainer:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private getTitleRawWidth(Landroid/widget/TextView;)I
    .locals 4
    .parameter "title"

    .prologue
    .line 1147
    const/16 v2, 0x500

    const/high16 v3, -0x8000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1148
    .local v1, widthSpec:I
    const/4 v0, 0x0

    .line 1149
    .local v0, heightSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->measure(II)V

    .line 1150
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    return v2
.end method

.method private hideSearchBox()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/16 v7, 0xa

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 2213
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v4, 0x20200e3

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 2214
    .local v2, contentHolderLP:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2215
    .local v1, centerLayoutLP:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2217
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2218
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v4, 0x20200e0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/DropDownList;

    .line 2219
    .local v0, bkgHolder:Lcom/htc/widget/DropDownList;
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->isInPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2226
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSerachBoxContainerLP:Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2227
    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    invoke-virtual {v0, v7, v5, v7, v8}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    .line 2229
    :goto_0
    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-eqz v3, :cond_0

    .line 2230
    invoke-virtual {v0, v6, v5, v6, v6}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    .line 2233
    :cond_0
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2234
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2248
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->isShowAppButton:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsShowCustomView:Z

    if-nez v3, :cond_2

    .line 2249
    const v3, 0x20200db

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2250
    const v3, 0x20200e8

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2251
    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsBubbleShown:Z

    if-eqz v3, :cond_2

    const v3, 0x20200e9

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2255
    :cond_2
    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsShowCustomView:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2257
    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->setupAppLayoutPadding()V

    .line 2258
    return-void

    .line 2228
    :cond_4
    const/16 v3, 0xf

    invoke-virtual {v0, v7, v5, v3, v8}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    goto :goto_0

    .line 2236
    :cond_5
    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_9

    invoke-virtual {v0, v7, v5, v7, v8}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    .line 2238
    :goto_2
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2239
    const/high16 v3, 0x3f80

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2240
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v3}, Lcom/htc/widget/DropDownList;->isClickable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2241
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v3}, Lcom/htc/widget/DropDownList;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/HtcActionBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    mul-int/lit8 v5, v5, 0x46

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x5

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2242
    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v3}, Lcom/htc/widget/DropDownList;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v4, v4, 0x5

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2243
    :cond_7
    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mBackButtonEnabled:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v3}, Lcom/htc/widget/DropDownList;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->getBackButtonAreaWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2244
    :cond_8
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v3}, Lcom/htc/widget/DropDownList;->requestLayout()V

    .line 2245
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto/16 :goto_1

    .line 2237
    :cond_9
    const/16 v3, 0xf

    invoke-virtual {v0, v7, v5, v3, v8}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    goto :goto_2
.end method

.method private initStubView()V
    .locals 3

    .prologue
    .line 1622
    const v1, 0x20200eb

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1623
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcActionBar;->mStubView:Landroid/view/View;

    .line 1628
    const-string v1, "Remove"

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionBar;->setupRemoveTitle(Ljava/lang/String;)V

    .line 1629
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mStubView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1630
    return-void
.end method

.method private isContainControlsInActionView(Landroid/view/ViewGroup;)Z
    .locals 5
    .parameter "viewGroup"

    .prologue
    .line 542
    const/4 v3, 0x0

    .line 543
    .local v3, isContainControl:Z
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 544
    .local v1, childCount:I
    if-lez v1, :cond_5

    .line 545
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 546
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 547
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 545
    .end local v0           #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 548
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 549
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcActionBar;->isContainControlsInActionView(Landroid/view/ViewGroup;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 550
    const/4 v3, 0x1

    :cond_2
    :goto_1
    move v4, v3

    .line 563
    .end local v2           #i:I
    :goto_2
    return v4

    .line 554
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #i:I
    :cond_3
    instance-of v4, v0, Landroid/widget/CheckBox;

    if-nez v4, :cond_4

    instance-of v4, v0, Landroid/widget/Button;

    if-nez v4, :cond_4

    instance-of v4, v0, Landroid/widget/ImageButton;

    if-nez v4, :cond_4

    instance-of v4, v0, Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    .line 558
    :cond_4
    const/4 v3, 0x1

    .line 559
    goto :goto_1

    .line 562
    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private isInLandscapeMode()Z
    .locals 2

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInPortraitMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 762
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureArrowDownLocation(Landroid/view/View;Landroid/view/View;)V
    .locals 18
    .parameter "mainTitle"
    .parameter "secondaryTitle"

    .prologue
    .line 1193
    const v1, 0x2020093

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 1194
    .local v8, iv:Landroid/widget/ImageView;
    const/16 v1, 0x500

    const/high16 v16, -0x8000

    move/from16 v0, v16

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 1195
    .local v15, widthSpec:I
    const/4 v12, 0x0

    .line 1196
    .local v12, heightSpec:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v12}, Landroid/view/View;->measure(II)V

    .line 1197
    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v12}, Landroid/view/View;->measure(II)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1, v15, v12}, Lcom/htc/widget/DropDownList;->measure(II)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList;->requestLayout()V

    .line 1200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList;->invalidate()V

    .line 1201
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1202
    .local v7, arrowDownLP:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 1203
    .local v13, mainTitleWidth:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1204
    .local v14, secondaryTitleWidth:I
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1205
    .local v3, titleWidth:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v2, 0x1

    .line 1209
    .local v2, isSubTitleVisible:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1210
    .local v6, appDropDownLP:Landroid/widget/RelativeLayout$LayoutParams;
    const-string v1, "test"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "titleWidth = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcActionBar;->mSubTitleRawWidth:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/HtcActionBar;->mSubTitleRawWidth:I

    iget v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v1, v0, :cond_0

    move-object/from16 v1, p2

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcActionBar;->getTitleRawWidth(Landroid/widget/TextView;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/widget/HtcActionBar;->mSubTitleRawWidth:I

    .line 1212
    :cond_0
    if-nez v2, :cond_5

    .line 1213
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcActionBar;->mMainTitleRawWidth:I

    .line 1214
    const/16 v1, 0x1c

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1221
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcActionBar;->mMainTitleRawWidth:I

    .line 1222
    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/widget/HtcActionBar;->mArrowDownWidth:I

    .line 1224
    const/16 v10, 0x4a

    .line 1225
    .local v10, backButtonWidth:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/widget/HtcActionBar;->mBackButtonEnabled:Z

    if-eqz v1, :cond_1

    const/4 v10, 0x0

    .line 1227
    :cond_1
    iget v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcActionBar;->mArrowDownWidth:I

    move/from16 v16, v0

    sub-int v1, v1, v16

    add-int/lit8 v1, v1, -0xc

    sub-int/2addr v1, v10

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1228
    iget v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-lt v1, v3, :cond_2

    add-int/lit8 v1, v3, 0x4

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1229
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1231
    .local v9, appDropdownLP:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList;->getDropDownMaximumWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    sub-int v1, v1, v16

    add-int/lit8 v1, v1, -0x5

    add-int/lit8 v1, v1, -0x5

    add-int/lit8 v1, v1, -0x38

    add-int/lit8 v1, v1, -0x8

    add-int/lit8 v11, v1, -0x5

    .line 1232
    .local v11, dropDownOffset:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    add-int/lit8 v16, v11, -0x64

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/htc/widget/DropDownList;->setDropDownHorizontalOffset(I)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    const/16 v16, 0x45

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/htc/widget/DropDownList;->setArrowHorizontalOffset(I)V

    .line 1238
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1239
    .local v4, mainTitleLP:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1241
    .local v5, subTitleLP:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcActionBar;->isInPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v1, p0

    .line 1242
    invoke-direct/range {v1 .. v8}, Lcom/htc/widget/HtcActionBar;->adjustProgressBarLocation(ZILandroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/ImageView;)V

    .line 1261
    :cond_3
    :goto_2
    return-void

    .line 1205
    .end local v2           #isSubTitleVisible:Z
    .end local v4           #mainTitleLP:Landroid/widget/FrameLayout$LayoutParams;
    .end local v5           #subTitleLP:Landroid/widget/FrameLayout$LayoutParams;
    .end local v6           #appDropDownLP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9           #appDropdownLP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10           #backButtonWidth:I
    .end local v11           #dropDownOffset:I
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1217
    .restart local v2       #isSubTitleVisible:Z
    .restart local v6       #appDropDownLP:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    const/16 v1, 0x13

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1218
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcActionBar;->mSubTitleRawWidth:I

    goto/16 :goto_1

    .line 1244
    .restart local v4       #mainTitleLP:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v5       #subTitleLP:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v9       #appDropdownLP:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v10       #backButtonWidth:I
    .restart local v11       #dropDownOffset:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList;->isClickable()Z

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v1, p0

    .line 1245
    invoke-direct/range {v1 .. v8}, Lcom/htc/widget/HtcActionBar;->adjustProgressBarLocation(ZILandroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 1247
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/widget/HtcActionBar;->mIsShowProgressbar:Z

    if-eqz v1, :cond_a

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    .line 1248
    if-nez v2, :cond_8

    .line 1249
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/HtcActionBar;->mArrowDownWidth:I

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, 0x6

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 1251
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/HtcActionBar;->mArrowDownWidth:I

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, 0x6

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1252
    :cond_9
    const/4 v1, 0x6

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 1254
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/widget/HtcActionBar;->mIsShowProgressbar:Z

    if-eqz v1, :cond_3

    .line 1255
    const/4 v1, 0x6

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1256
    const/4 v1, 0x6

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2
.end method

.method private measureRightmostButton()V
    .locals 7

    .prologue
    .line 901
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    if-nez v2, :cond_1

    .line 902
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->getRightmostButtonIndex()I

    move-result v0

    .line 903
    .local v0, rightmostButtonIndex:I
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 904
    .local v1, rightmostButtonLayout:Landroid/view/View;
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v2}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 905
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/16 v3, 0x4b

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 906
    const v2, 0x20200e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x7

    const/4 v6, 0x3

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 909
    .end local v0           #rightmostButtonIndex:I
    .end local v1           #rightmostButtonLayout:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setMenuDropDownAdapterInner(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1884
    invoke-virtual {p0, v4, v3}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonMode(II)V

    .line 1885
    const v2, 0x20200e7

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1886
    .local v1, menuButtonContainer:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v2, :cond_1

    .line 1887
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2, p1}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1888
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1889
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z

    .line 1890
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1891
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-ge v2, v5, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    .line 1892
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1893
    const v2, 0x20200e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1894
    .local v0, bkgHolder:Landroid/view/View;
    const/4 v2, 0x2

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1896
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 1897
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 1900
    .end local v0           #bkgHolder:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setupAppLayoutPadding()V
    .locals 4

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 766
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->mBackButtonEnabled:Z

    if-eqz v0, :cond_1

    .line 767
    iget v0, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-nez v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    .line 777
    :goto_0
    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0, v1, v2, v3, v2}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    goto :goto_0

    .line 773
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-nez v0, :cond_2

    .line 774
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    const/16 v1, 0x4a

    invoke-virtual {v0, v1, v2, v3, v2}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    goto :goto_0

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v2, v3, v2}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setupDropDown()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/16 v4, -0xe

    .line 917
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2, v5}, Lcom/htc/widget/DropDownList;->setDropDownWidth(I)V

    .line 918
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->isInPortraitMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 919
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mMaxDropDownHieghtInPort:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMaximumHeight(I)V

    .line 922
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mMaxAppButtonDropDownWidth:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 923
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mMinAppButtonDropDownWidth:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 924
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2, v4}, Lcom/htc/widget/DropDownList;->setDropDownVerticalOffset(I)V

    .line 928
    const/4 v0, 0x0

    .line 929
    .local v0, dropDown:Lcom/htc/widget/DropDownList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    .line 930
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x20200e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #dropDown:Lcom/htc/widget/DropDownList;
    check-cast v0, Lcom/htc/widget/DropDownList;

    .line 931
    .restart local v0       #dropDown:Lcom/htc/widget/DropDownList;
    invoke-virtual {v0, v4}, Lcom/htc/widget/DropDownList;->setDropDownVerticalOffset(I)V

    .line 933
    invoke-virtual {v0, v5}, Lcom/htc/widget/DropDownList;->setDropDownWidth(I)V

    .line 934
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->isInitDropDown:Z

    if-nez v2, :cond_0

    .line 935
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v0, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 936
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v0, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 938
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->isInPortraitMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 939
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMaxDropDownHieghtInPort:I

    invoke-virtual {v0, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumHeight(I)V

    .line 929
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 921
    .end local v0           #dropDown:Lcom/htc/widget/DropDownList;
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mMaxDropDownHieghtInLand:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMaximumHeight(I)V

    goto :goto_0

    .line 941
    .restart local v0       #dropDown:Lcom/htc/widget/DropDownList;
    .restart local v1       #i:I
    :cond_2
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMaxDropDownHieghtInLand:I

    invoke-virtual {v0, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumHeight(I)V

    goto :goto_2

    .line 945
    :cond_3
    return-void
.end method

.method private setupSearchBox()V
    .locals 12

    .prologue
    const/4 v11, -0x8

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 2261
    const-string v4, "HtcActionBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupSearchBox "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    iget-object v4, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v4}, Lcom/htc/widget/SearchBoxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 2265
    .local v3, searchBoxLP:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v5, 0x20200e3

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 2266
    .local v2, contentHolderLP:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/htc/widget/HtcActionBar;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2268
    .local v1, centerLayoutLP:Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-ne v4, v8, :cond_6

    iget v4, p0, Lcom/htc/widget/HtcActionBar;->mFourButtonSearchBoxWidth:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2273
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    if-eqz v4, :cond_2

    .line 2274
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->isInPortraitMode()Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/lit8 v4, v4, 0x14

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2278
    :cond_2
    :goto_1
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2279
    const/16 v4, 0x34

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2284
    iget-object v4, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v5, 0x20200e0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/DropDownList;

    .line 2285
    .local v0, bkgHolder:Lcom/htc/widget/DropDownList;
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v10, :cond_b

    .line 2286
    iget-boolean v4, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-nez v4, :cond_3

    const/4 v4, -0x3

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2287
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/HtcActionBar;->mSerachBoxContainerLP:Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2288
    iget-object v4, p0, Lcom/htc/widget/HtcActionBar;->mSerachBoxContainerLP:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f80

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2289
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2290
    const/4 v4, 0x0

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2293
    const v4, 0x20200db

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2294
    const v4, 0x20200de

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2295
    const v4, 0x20200e8

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2296
    const v4, 0x20200e9

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2297
    const/16 v4, 0xa

    const/16 v5, 0xa

    const/4 v6, 0x3

    invoke-virtual {v0, v4, v8, v5, v6}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    .line 2298
    iget-boolean v4, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    if-eqz v4, :cond_a

    .line 2299
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2300
    invoke-virtual {v0, v10, v8, v7, v7}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    .line 2324
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    if-eqz v4, :cond_5

    invoke-virtual {v0, v7, v8, v7, v7}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    .line 2327
    :cond_5
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->setupAppLayoutPadding()V

    .line 2329
    return-void

    .line 2269
    .end local v0           #bkgHolder:Lcom/htc/widget/DropDownList;
    :cond_6
    iget v4, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    iget v4, p0, Lcom/htc/widget/HtcActionBar;->mThreeButtonSearchBoxWidth:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_0

    .line 2270
    :cond_7
    iget v4, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    iget v4, p0, Lcom/htc/widget/HtcActionBar;->mTwoButtonSearchBoxWidth:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_0

    .line 2271
    :cond_8
    iget v4, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-ne v4, v10, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcActionBar;->mOneButtonSearchBoxWidth:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_0

    .line 2275
    :cond_9
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/lit8 v4, v4, 0x5

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 2301
    .restart local v0       #bkgHolder:Lcom/htc/widget/DropDownList;
    :cond_a
    iget-boolean v4, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-eqz v4, :cond_4

    .line 2302
    const/16 v4, -0x9

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2303
    invoke-virtual {v0, v10, v8, v7, v7}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    goto :goto_2

    .line 2306
    :cond_b
    iget-boolean v4, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    if-eqz v4, :cond_e

    const/4 v4, 0x2

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2310
    :goto_3
    iget-object v4, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4}, Lcom/htc/widget/DropDownList;->isClickable()Z

    move-result v4

    if-nez v4, :cond_d

    .line 2311
    iget-object v4, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4}, Lcom/htc/widget/DropDownList;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/htc/widget/HtcActionBar;->mMaxAppButtonWidth:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2312
    iget-boolean v4, p0, Lcom/htc/widget/HtcActionBar;->mBackButtonEnabled:Z

    if-eqz v4, :cond_c

    .line 2313
    iget-object v4, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4}, Lcom/htc/widget/DropDownList;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->getBackButtonAreaWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2315
    :cond_c
    iget-object v4, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4}, Lcom/htc/widget/DropDownList;->requestLayout()V

    .line 2318
    :cond_d
    iget-object v4, p0, Lcom/htc/widget/HtcActionBar;->mSerachBoxContainerLP:Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2319
    iget-object v4, p0, Lcom/htc/widget/HtcActionBar;->mSerachBoxContainerLP:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f80

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2320
    const/4 v4, 0x0

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2321
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2322
    const/16 v4, 0xa

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v8, v7, v5}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    goto/16 :goto_2

    .line 2307
    :cond_e
    iget-boolean v4, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-eqz v4, :cond_f

    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    .line 2308
    :cond_f
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_3
.end method

.method private showButtonInner(IZ)V
    .locals 4
    .parameter "buttonIndex"
    .parameter "isShow"

    .prologue
    .line 1906
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1907
    .local v0, view:Landroid/view/View;
    if-eqz p2, :cond_2

    .line 1908
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    .line 1909
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1925
    :cond_1
    :goto_0
    return-void

    .line 1912
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    if-eqz v1, :cond_3

    .line 1913
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v1}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_1

    .line 1918
    :cond_3
    iget-boolean v1, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 1921
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-lez v1, :cond_5

    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    .line 1922
    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1923
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/DropDownList;->postInvalidateDelayed(J)V

    goto :goto_0
.end method

.method private updateAppButtonWidth()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 780
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 781
    .local v0, appDropDownLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 782
    .local v1, centerLayoutLP:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->isInLandscapeMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 783
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMaxAppButtonWidth:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 785
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->isClickable()Z

    move-result v2

    if-nez v2, :cond_6

    .line 789
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v2}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    .line 790
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    mul-int/lit8 v3, v3, 0x46

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x5

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 791
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-nez v2, :cond_0

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/lit8 v2, v2, 0x5

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 795
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-eqz v2, :cond_2

    .line 796
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v2}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/lit8 v2, v2, 0x5

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 798
    :cond_2
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 799
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 805
    :goto_1
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mIsShowProgressbar:Z

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcActionBar;->showProgressBar(Z)V

    .line 821
    :goto_2
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mBackButtonEnabled:Z

    if-eqz v2, :cond_3

    .line 822
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->getBackButtonAreaWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 840
    :cond_3
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mIsShowCustomView:Z

    if-eqz v2, :cond_4

    .line 841
    const v2, 0x20200da

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    .line 845
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->setupAppLayoutPadding()V

    .line 846
    const v2, 0x2020091

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x2020092

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcActionBar;->measureArrowDownLocation(Landroid/view/View;Landroid/view/View;)V

    .line 847
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->requestLayout()V

    .line 848
    return-void

    .line 794
    :cond_5
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMaxAppButtonWidth:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0

    .line 801
    :cond_6
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v2}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_7

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 803
    :goto_3
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    .line 802
    :cond_7
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_3

    .line 809
    :cond_8
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v2, v2, -0x5

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    mul-int/lit8 v3, v3, 0x46

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 810
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-eqz v2, :cond_a

    :cond_9
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/lit8 v2, v2, 0x5

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 811
    :cond_a
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-nez v2, :cond_b

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/lit8 v2, v2, 0x5

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 814
    :cond_b
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->isShowAppButton:Z

    if-eqz v2, :cond_c

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 819
    :goto_4
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_2

    .line 816
    :cond_c
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_4
.end method

.method private updateButtonsBkg(IZ)V
    .locals 16
    .parameter "buttonIndex"
    .parameter "isOnShowButton"

    .prologue
    .line 1970
    add-int/lit8 v4, p1, -0x1

    .line 1971
    .local v4, leftButtonIndex:I
    add-int/lit8 v8, p1, 0x1

    .line 1972
    .local v8, rightButtonIndex:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcActionBar;->getRightmostButtonIndex()I

    move-result v10

    .line 1974
    .local v10, rightmostButtonIndex:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    const/16 v12, 0x46

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1975
    if-ltz v4, :cond_3

    .line 1976
    move v2, v4

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_3

    .line 1977
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1978
    .local v5, leftLayout:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_1

    .line 1979
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    const/16 v12, 0x46

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1980
    const v11, 0x20200e0

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1981
    .local v1, bkgHolderView:Landroid/view/View;
    if-eqz p2, :cond_2

    if-eq v10, v4, :cond_2

    .line 1991
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1992
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1993
    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x3

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 1994
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 1976
    .end local v1           #bkgHolderView:Landroid/view/View;
    .end local v7           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1985
    .restart local v1       #bkgHolderView:Landroid/view/View;
    :cond_2
    if-nez p2, :cond_0

    if-ne v10, v2, :cond_0

    .line 1988
    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x3

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 1999
    .end local v1           #bkgHolderView:Landroid/view/View;
    .end local v2           #i:I
    .end local v5           #leftLayout:Landroid/view/View;
    :cond_3
    const/4 v3, 0x0

    .line 2001
    .local v3, isHasRightButtonVisible:Z
    const/4 v11, 0x3

    if-gt v8, v11, :cond_5

    if-eqz p2, :cond_5

    .line 2002
    move v2, v8

    .restart local v2       #i:I
    :goto_1
    const/4 v11, 0x3

    if-gt v2, v11, :cond_4

    .line 2003
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 2004
    .local v9, rightLayout:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_8

    .line 2005
    const/4 v3, 0x1

    .line 2009
    .end local v9           #rightLayout:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    const v12, 0x20200e0

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2010
    .restart local v1       #bkgHolderView:Landroid/view/View;
    if-eqz v3, :cond_9

    .line 2013
    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x3

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 2022
    .end local v1           #bkgHolderView:Landroid/view/View;
    .end local v2           #i:I
    :cond_5
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcActionBar;->getLeftmostButtonIndex()I

    move-result v6

    .line 2023
    .local v6, leftmostButtonIndex:I
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    if-eqz v11, :cond_7

    .line 2024
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    const v12, 0x20200e0

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2027
    .restart local v1       #bkgHolderView:Landroid/view/View;
    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x3

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 2030
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    const v12, 0x20200e0

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x3

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 2032
    .end local v1           #bkgHolderView:Landroid/view/View;
    :cond_7
    return-void

    .line 2002
    .end local v6           #leftmostButtonIndex:I
    .restart local v2       #i:I
    .restart local v9       #rightLayout:Landroid/view/View;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2014
    .end local v9           #rightLayout:Landroid/view/View;
    .restart local v1       #bkgHolderView:Landroid/view/View;
    :cond_9
    if-nez v3, :cond_5

    .line 2017
    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x3

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2
.end method

.method private updateButtonsBkgInner()V
    .locals 10

    .prologue
    const v9, 0x20200e1

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 1933
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->getRightmostButtonIndex()I

    move-result v5

    .line 1935
    .local v5, rightmostButtonIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-gt v3, v5, :cond_2

    .line 1936
    iget-object v6, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1937
    .local v1, buttonContainer:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1935
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1938
    :cond_0
    const v6, 0x20200e0

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1939
    .local v0, bkgHolderView:Landroid/view/View;
    if-eq v3, v5, :cond_1

    .line 1941
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1942
    .local v2, containerLP:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x46

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1946
    .end local v2           #containerLP:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {v0, v7, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 1949
    .end local v0           #bkgHolderView:Landroid/view/View;
    .end local v1           #buttonContainer:Landroid/view/View;
    :cond_2
    iget-boolean v6, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    if-eqz v6, :cond_4

    .line 1950
    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->getLeftmostButtonIndex()I

    move-result v4

    .line 1951
    .local v4, leftmostButtonIndex:I
    iget-object v6, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1954
    .restart local v0       #bkgHolderView:Landroid/view/View;
    invoke-virtual {v0, v7, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1956
    iget-object v6, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1958
    invoke-virtual {v0, v7, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1960
    .end local v0           #bkgHolderView:Landroid/view/View;
    .end local v4           #leftmostButtonIndex:I
    :cond_4
    return-void
.end method


# virtual methods
.method public DrawDeleteModeDivider(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 1591
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSpecialOnFragListener:Lcom/htc/widget/AbrOnDragListener;

    if-eqz v3, :cond_0

    .line 1592
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSpecialOnFragListener:Lcom/htc/widget/AbrOnDragListener;

    invoke-virtual {v3}, Lcom/htc/widget/AbrOnDragListener;->IsDeleteMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1593
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1599
    .local v2, resources:Landroid/content/res/Resources;
    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-eqz v3, :cond_0

    .line 1600
    const/4 v1, 0x0

    .line 1601
    .local v1, boundTop:I
    const/16 v0, 0x3a

    .line 1609
    .end local v1           #boundTop:I
    .end local v2           #resources:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public addCustomView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/16 v3, 0x8

    .line 1442
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mIsShowCustomView:Z

    .line 1443
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setVisibility(I)V

    .line 1444
    const v2, 0x20200e8

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1445
    .local v1, iv:Landroid/widget/ImageView;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1446
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1447
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1448
    const v2, 0x20200da

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1449
    .local v0, customView:Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1450
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1452
    return-void
.end method

.method public applyActionBarStyle(I)V
    .locals 3
    .parameter "style"

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 336
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 337
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/widget/HtcActionBar;->getActionBarResId(Landroid/util/AttributeSet;I)V

    .line 338
    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mStyle:I

    packed-switch v1, :pswitch_data_0

    .line 351
    :goto_0
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->updateButtonsBkgInner()V

    .line 352
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->updateAppButtonWidth()V

    .line 353
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->invalidate()V

    .line 354
    return-void

    .line 340
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->applyDefaultStyle()V

    goto :goto_0

    .line 343
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->applyFullScreenStyle()V

    goto :goto_0

    .line 346
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->applyFullScreenBlueStyle()V

    goto :goto_0

    .line 349
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->applyTransparentStyle()V

    goto :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 730
    iput v4, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    .line 731
    iput-boolean v4, p0, Lcom/htc/widget/HtcActionBar;->mIsSearchBoxEnabled:Z

    .line 733
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/SearchBoxView;->setVisibility(I)V

    .line 734
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 735
    .local v0, containerLP:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x46

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 736
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 737
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->hideSearchBox()V

    .line 738
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->disableSearchBox()V

    .line 740
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 741
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z

    if-nez v2, :cond_1

    .line 742
    :cond_0
    invoke-virtual {p0, v1, v4}, Lcom/htc/widget/HtcActionBar;->showActionBarButtonIndicator(IZ)V

    .line 744
    invoke-direct {p0, v1, v4}, Lcom/htc/widget/HtcActionBar;->showButtonInner(IZ)V

    .line 745
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonDropDownAdapter(ILandroid/widget/ListAdapter;)V

    .line 746
    invoke-virtual {p0, v1, v4}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonMode(II)V

    .line 751
    :goto_1
    invoke-virtual {p0, v1, v4}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonIcon(II)V

    .line 752
    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonText(ILjava/lang/String;)V

    .line 753
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mOnActionButtonClickListener:Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 740
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 749
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->disableMenuButton()V

    goto :goto_1

    .line 755
    :cond_2
    return-void
.end method

.method public disableMenuButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 1019
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonMode(II)V

    .line 1020
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1021
    :cond_0
    const v1, 0x20200e7

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1022
    .local v0, menuButtonContainer:Landroid/view/View;
    iget-boolean v1, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    .line 1023
    :cond_1
    iput-boolean v4, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z

    .line 1024
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1025
    const-string v1, ""

    invoke-virtual {p0, v3, v1}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonText(ILjava/lang/String;)V

    .line 1026
    invoke-virtual {p0, v3, v4}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonIcon(II)V

    .line 1028
    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-nez v1, :cond_2

    .line 1029
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->isInLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1036
    :goto_0
    return-void

    .line 1034
    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/htc/widget/HtcActionBar;->updateButtonsBkg(IZ)V

    .line 1035
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->updateAppButtonWidth()V

    goto :goto_0
.end method

.method public disableSearchBox()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2200
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->mIsSearchBoxEnabled:Z

    if-nez v0, :cond_0

    .line 2210
    :goto_0
    return-void

    .line 2201
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->mIsSearchBoxEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    .line 2202
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2203
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/SearchBoxView;->setVisibility(I)V

    .line 2204
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->mIsSearchBoxEnabled:Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2590
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2591
    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 2347
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2348
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcActionBar;->drawDivider(Landroid/graphics/Canvas;)V

    .line 2350
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcActionBar;->DrawDeleteModeDivider(Landroid/graphics/Canvas;)V

    .line 2352
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->adjustDropDownLocationAfterRotate()V

    .line 2353
    return-void
.end method

.method public enableSearchBox()V
    .locals 8

    .prologue
    const v7, 0x20200e0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2171
    invoke-virtual {p0, v5, v5}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonMode(II)V

    .line 2172
    iput-boolean v6, p0, Lcom/htc/widget/HtcActionBar;->mIsSearchBoxEnabled:Z

    .line 2174
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    .line 2175
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2177
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/htc/widget/HtcActionBar;->adjustTitleBarBkg(Landroid/view/View;I)V

    .line 2180
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    const v4, 0x2020174

    invoke-virtual {v3, v4}, Lcom/htc/widget/SearchBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2181
    .local v2, searchInputField:Landroid/widget/EditText;
    const/high16 v3, 0x4190

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 2183
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    const v4, 0x20200dd

    invoke-virtual {v3, v4}, Lcom/htc/widget/SearchBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 2184
    .local v0, pBar:Landroid/widget/ProgressBar;
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2185
    .local v1, pBarLP:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0x1c

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2186
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2188
    invoke-virtual {p0, v5, v6}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonEnabled(IZ)V

    .line 2189
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/HtcActionBar;->mShowSearchBoxClickListener:Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2190
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->updateAppButtonWidth()V

    .line 2192
    return-void
.end method

.method public getActionBarButtonDropDownList(I)Lcom/htc/widget/DropDownList;
    .locals 3
    .parameter "buttonIndex"

    .prologue
    .line 1844
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1845
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x20200e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 1846
    .local v1, dropdown:Lcom/htc/widget/DropDownList;
    return-object v1
.end method

.method public getAppDropDownList()Lcom/htc/widget/DropDownList;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    return-object v0
.end method

.method public getMenuDropDownList()Lcom/htc/widget/DropDownList;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    return-object v0
.end method

.method getMenuItemList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 912
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mMenuItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSearchBox()Lcom/htc/widget/SearchBoxView;
    .locals 1

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    return-object v0
.end method

.method public isFullScreenMode()Z
    .locals 1

    .prologue
    .line 1617
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConfig"

    .prologue
    const v9, 0x20200e8

    const/16 v8, 0x4a

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 2440
    const-string v3, "HtcActionBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->isRotate:Z

    .line 2442
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2443
    .local v1, centerLayoutLP:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->isInLandscapeMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2444
    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mBackButtonEnabled:Z

    if-nez v3, :cond_4

    .line 2446
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v3, v8, v6, v6, v6}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    .line 2454
    :goto_0
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2455
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2456
    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-nez v3, :cond_0

    .line 2462
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->setupDropDown()V

    .line 2463
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    if-eqz v3, :cond_2

    .line 2464
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v3}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 2465
    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsShowCustomView:Z

    if-nez v3, :cond_1

    .line 2466
    const v3, 0x20200db

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2467
    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2468
    const v3, 0x20200de

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2470
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v4, 0x20200e0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2473
    .local v0, bkgHolder:Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->setupSearchBox()V

    .line 2501
    .end local v0           #bkgHolder:Landroid/widget/LinearLayout;
    :cond_2
    :goto_1
    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mTitlebarBaseBkgResId:I

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    if-nez v3, :cond_3

    .line 2512
    :cond_3
    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2513
    .local v2, view:Landroid/view/View;
    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsShowProgressbar:Z

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->showProgressBar(Z)V

    .line 2514
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->updateAppButtonWidth()V

    .line 2522
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2523
    return-void

    .line 2450
    .end local v2           #view:Landroid/view/View;
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->adjustLayoutForBackButton()V

    goto :goto_0

    .line 2479
    :cond_5
    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mBackButtonEnabled:Z

    if-nez v3, :cond_7

    .line 2481
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v3, v8, v6, v6, v6}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    .line 2488
    :goto_2
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2489
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2490
    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    if-nez v3, :cond_6

    .line 2494
    :cond_6
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->setupDropDown()V

    .line 2495
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    if-eqz v3, :cond_2

    .line 2496
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v3}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 2497
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->setupSearchBox()V

    goto :goto_1

    .line 2484
    :cond_7
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->adjustLayoutForBackButton()V

    goto :goto_2
.end method

.method public onCreateActionBar(Landroid/view/Menu;Z)V
    .locals 3
    .parameter "menu"
    .parameter "isDisplayed"

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->clear()V

    .line 858
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->dismissDropDownOnClearButton()V

    .line 859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->isContainActionItem:Z

    .line 860
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->requestFocus()Z

    .line 861
    const-string v0, "HtcActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateActionBar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iput-object p1, p0, Lcom/htc/widget/HtcActionBar;->mMenu:Landroid/view/Menu;

    .line 863
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->isGoogleAPISupported:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcActionBar;->constructHtcActionBar(Landroid/view/Menu;)V

    .line 866
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 867
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->updateAppButtonWidth()V

    .line 868
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->measureRightmostButton()V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 2337
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2338
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->adjustDropDownLocationAfterRotate()V

    .line 2339
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const v8, 0x20200e0

    const v7, 0x20200df

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 264
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/widget/HtcActionBar;->mBaseBkgContainer:Landroid/widget/LinearLayout;

    .line 267
    const v3, 0x20200db

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/htc/widget/HtcActionBar;->mAppButtonContainer:Landroid/widget/RelativeLayout;

    .line 268
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    .line 269
    const v3, 0x20200dc

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/widget/HtcActionBar;->mBackButton:Landroid/widget/LinearLayout;

    .line 270
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v4, 0x20200e2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/SearchBoxView;

    iput-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    .line 271
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v3, p0, Lcom/htc/widget/HtcActionBar;->mSerachBoxContainerLP:Landroid/widget/LinearLayout$LayoutParams;

    .line 273
    const v3, 0x20200e7

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 274
    .local v2, menuLayout:Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/DropDownList;

    iput-object v3, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    .line 275
    const v3, 0x202008c

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/DropDownList;

    iput-object v3, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    .line 276
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    const/16 v4, 0x4a

    invoke-virtual {v3, v4, v5, v5, v5}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    .line 277
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v3}, Lcom/htc/widget/DropDownList;->syncDropDownListShownStatus()V

    .line 279
    const v3, 0x20200de

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/widget/HtcActionBar;->mCenterLayout:Landroid/widget/LinearLayout;

    .line 281
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    const v4, 0x20200e5

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    const v4, 0x20200e6

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v3, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;-><init>(Lcom/htc/widget/HtcActionBar;)V

    iput-object v3, p0, Lcom/htc/widget/HtcActionBar;->mOnActionButtonClickListener:Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;

    .line 287
    new-instance v3, Lcom/htc/widget/HtcActionBar$OnDropDownListItemClickListener;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcActionBar$OnDropDownListItemClickListener;-><init>(Lcom/htc/widget/HtcActionBar;)V

    iput-object v3, p0, Lcom/htc/widget/HtcActionBar;->mOnDropDownListItemClickListener:Lcom/htc/widget/HtcActionBar$OnDropDownListItemClickListener;

    .line 288
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 289
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/DropDownList;

    .line 290
    .local v0, dropdown:Lcom/htc/widget/DropDownList;
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mOnActionButtonClickListener:Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/widget/DropDownList;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mOnDropDownListItemClickListener:Lcom/htc/widget/HtcActionBar$OnDropDownListItemClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/widget/DropDownList;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 292
    invoke-virtual {v0, v5}, Lcom/htc/widget/DropDownList;->setDropDownEnabled(Z)V

    .line 293
    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->syncDropDownListShownStatus()V

    .line 294
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v0           #dropdown:Lcom/htc/widget/DropDownList;
    :cond_0
    new-instance v3, Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;-><init>(Lcom/htc/widget/HtcActionBar;)V

    iput-object v3, p0, Lcom/htc/widget/HtcActionBar;->mShowSearchBoxClickListener:Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;

    .line 301
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->setupDropDown()V

    .line 302
    iput-boolean v6, p0, Lcom/htc/widget/HtcActionBar;->isInitDropDown:Z

    .line 304
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcActionBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 314
    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mStyle:I

    packed-switch v3, :pswitch_data_0

    .line 328
    :goto_1
    return-void

    .line 316
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->applyDefaultStyle()V

    goto :goto_1

    .line 319
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->applyFullScreenStyle()V

    goto :goto_1

    .line 322
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->applyFullScreenBlueStyle()V

    goto :goto_1

    .line 325
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->applyTransparentStyle()V

    goto :goto_1

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v8, 0x20200e0

    const/16 v7, 0x46

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2601
    const/16 v5, 0x52

    if-ne p1, v5, :cond_2

    .line 2602
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->dismissDropDown()V

    .line 2603
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z

    if-eqz v3, :cond_0

    .line 2604
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mButtonModeList:Ljava/util/List;

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2605
    .local v2, menuButtonMode:I
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v3}, Lcom/htc/widget/DropDownList;->getPopupWindow()Lcom/htc/widget/PopupBubbleWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v3}, Lcom/htc/widget/DropDownList;->showDropDown()V

    .line 2638
    .end local v2           #menuButtonMode:I
    :cond_0
    :goto_0
    return v4

    .line 2606
    .restart local v2       #menuButtonMode:I
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v3}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0

    .line 2609
    .end local v2           #menuButtonMode:I
    :cond_2
    const/4 v5, 0x4

    if-ne p1, v5, :cond_0

    .line 2610
    iput-boolean v4, p0, Lcom/htc/widget/HtcActionBar;->isDismissDropDownOnBackKey:Z

    .line 2611
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->dismissDropDown()V

    .line 2612
    iget-object v5, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v5}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2613
    iget-object v5, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v5}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 2614
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->isDismissDropDownOnBackKey:Z

    .line 2616
    :cond_3
    iget-boolean v5, p0, Lcom/htc/widget/HtcActionBar;->isDismissDropDownOnBackKey:Z

    if-eqz v5, :cond_4

    move v4, v3

    goto :goto_0

    .line 2617
    :cond_4
    iget-object v5, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    if-eqz v5, :cond_0

    .line 2618
    iget-object v5, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v5}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2619
    iget-object v5, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/DropDownList;

    .line 2620
    .local v0, button:Lcom/htc/widget/DropDownList;
    invoke-virtual {v0, v4}, Lcom/htc/widget/DropDownList;->setFocusableInTouchMode(Z)V

    .line 2621
    invoke-virtual {v0, v4}, Lcom/htc/widget/DropDownList;->setFocusable(Z)V

    .line 2622
    iget-object v5, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/htc/widget/SearchBoxView;->setVisibility(I)V

    .line 2623
    iget-object v5, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2624
    .local v1, containerLP:Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-le v5, v3, :cond_5

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2629
    :goto_1
    const/4 v5, 0x0

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2630
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->hideSearchBox()V

    .line 2631
    invoke-virtual {v0, v4}, Lcom/htc/widget/DropDownList;->setIsGainFocusAndPerformClick(Z)V

    .line 2632
    iget-object v5, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/HtcActionBar;->mShowSearchBoxClickListener:Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2633
    iget-boolean v5, p0, Lcom/htc/widget/HtcActionBar;->mIsDispatchBackKey:Z

    if-nez v5, :cond_7

    :goto_2
    move v4, v3

    goto :goto_0

    .line 2626
    :cond_5
    iget-boolean v5, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    if-nez v5, :cond_6

    const/16 v5, 0x4b

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    .line 2627
    :cond_6
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_7
    move v3, v4

    .line 2633
    goto :goto_2
.end method

.method public onPrepareActionBar(Landroid/view/Menu;Z)V
    .locals 3
    .parameter "menu"
    .parameter "isDisplayed"

    .prologue
    .line 878
    const-string v0, "HtcActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before onPrepareActionBar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->clearActionbarButton()V

    .line 880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuButtonClicked:Z

    .line 881
    const-string v0, "HtcActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareActionBar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->isGoogleAPISupported:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-nez v0, :cond_1

    .line 884
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->updateAppButtonWidth()V

    .line 885
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->measureRightmostButton()V

    .line 898
    :goto_0
    return-void

    .line 890
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcActionBar;->constructHtcActionBar(Landroid/view/Menu;)V

    .line 891
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 892
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->updateAppButtonWidth()V

    .line 894
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v0}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 895
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->setupSearchBox()V

    .line 897
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->measureRightmostButton()V

    goto :goto_0
.end method

.method public recoveryMenuContent(Landroid/view/Menu;)V
    .locals 13
    .parameter "menu"

    .prologue
    .line 591
    if-nez p1, :cond_0

    .line 635
    :goto_0
    return-void

    .line 592
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v9, p0, Lcom/htc/widget/HtcActionBar;->mMenuItemList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_9

    .line 593
    iget-object v9, p0, Lcom/htc/widget/HtcActionBar;->mMenuItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 594
    .local v3, mi:Lcom/android/internal/view/menu/MenuItemImpl;
    const/4 v6, 0x0

    .line 595
    .local v6, showAsAction:I
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v9

    if-eqz v9, :cond_5

    or-int/lit8 v6, v6, 0x1

    .line 597
    :cond_1
    :goto_2
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v9

    if-eqz v9, :cond_2

    or-int/lit8 v6, v6, 0x4

    .line 600
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 601
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v10

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getOrder()I

    move-result v11

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v8

    .line 602
    .local v8, subMenu:Landroid/view/SubMenu;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    .line 603
    .local v5, oldSubMenu:Landroid/view/SubMenu;
    const/4 v7, 0x0

    .line 604
    .local v7, subItemShowAsAction:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    invoke-interface {v5}, Landroid/view/SubMenu;->size()I

    move-result v9

    if-ge v2, v9, :cond_7

    .line 605
    invoke-interface {v5, v2}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 606
    .local v4, oldSubItem:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v9

    if-eqz v9, :cond_6

    or-int/lit8 v7, v7, 0x1

    .line 608
    :cond_3
    :goto_4
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v9

    if-eqz v9, :cond_4

    or-int/lit8 v7, v7, 0x4

    .line 609
    :cond_4
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v10

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getOrder()I

    move-result v11

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 604
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 596
    .end local v2           #j:I
    .end local v4           #oldSubItem:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v5           #oldSubMenu:Landroid/view/SubMenu;
    .end local v7           #subItemShowAsAction:I
    .end local v8           #subMenu:Landroid/view/SubMenu;
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v9

    if-eqz v9, :cond_1

    or-int/lit8 v6, v6, 0x2

    goto/16 :goto_2

    .line 607
    .restart local v2       #j:I
    .restart local v4       #oldSubItem:Lcom/android/internal/view/menu/MenuItemImpl;
    .restart local v5       #oldSubMenu:Landroid/view/SubMenu;
    .restart local v7       #subItemShowAsAction:I
    .restart local v8       #subMenu:Landroid/view/SubMenu;
    :cond_6
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v9

    if-eqz v9, :cond_3

    or-int/lit8 v7, v7, 0x2

    goto :goto_4

    .line 620
    .end local v4           #oldSubItem:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v9

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 624
    .end local v2           #j:I
    .end local v5           #oldSubMenu:Landroid/view/SubMenu;
    .end local v7           #subItemShowAsAction:I
    .end local v8           #subMenu:Landroid/view/SubMenu;
    .local v1, item:Landroid/view/MenuItem;
    :goto_5
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v9

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 622
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_8
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v10

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getOrder()I

    move-result v11

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .restart local v1       #item:Landroid/view/MenuItem;
    goto :goto_5

    .line 634
    .end local v1           #item:Landroid/view/MenuItem;
    .end local v3           #mi:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v6           #showAsAction:I
    :cond_9
    const-string v9, "HtcActionBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "recoveryMenuContent menu size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public removeCustomView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1459
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsShowCustomView:Z

    .line 1460
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setVisibility(I)V

    .line 1461
    const v2, 0x20200e8

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1462
    .local v1, iv:Landroid/widget/ImageView;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1463
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1464
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1465
    const v2, 0x20200da

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1466
    .local v0, customView:Landroid/widget/FrameLayout;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1467
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1468
    return-void
.end method

.method public setAbrOnDragListener(Lcom/htc/widget/AbrOnDragListener;)V
    .locals 1
    .parameter "Abrl"

    .prologue
    .line 1675
    iput-object p1, p0, Lcom/htc/widget/HtcActionBar;->mSpecialOnFragListener:Lcom/htc/widget/AbrOnDragListener;

    .line 1676
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mStubView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1677
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->initStubView()V

    .line 1679
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mSpecialOnFragListener:Lcom/htc/widget/AbrOnDragListener;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcActionBar;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1680
    return-void
.end method

.method public setActionBarButtonDropDownAdapter(ILandroid/widget/ListAdapter;)V
    .locals 4
    .parameter "buttonIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ">(ITT;)V"
        }
    .end annotation

    .prologue
    .line 1754
    .local p2, adapter:Landroid/widget/ListAdapter;,"TT;"
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonModeList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1755
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1756
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x20200e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 1757
    .local v1, dropDown:Lcom/htc/widget/DropDownList;
    if-eqz v1, :cond_0

    .line 1758
    invoke-virtual {v1, p2}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1759
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 1760
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 1763
    .end local v0           #buttonContainer:Landroid/view/View;
    .end local v1           #dropDown:Lcom/htc/widget/DropDownList;
    :cond_0
    return-void
.end method

.method public setActionBarButtonDropDownAdapter(ILandroid/widget/ListAdapter;Z)V
    .locals 4
    .parameter "buttonIndex"
    .parameter
    .parameter "isWithControl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ">(ITT;Z)V"
        }
    .end annotation

    .prologue
    .line 1770
    .local p2, adapter:Landroid/widget/ListAdapter;,"TT;"
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonModeList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1771
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1772
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x20200e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 1773
    .local v1, dropDown:Lcom/htc/widget/DropDownList;
    if-eqz v1, :cond_0

    .line 1774
    invoke-virtual {v1, p2}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1775
    if-eqz p3, :cond_1

    .line 1776
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 1777
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 1784
    .end local v0           #buttonContainer:Landroid/view/View;
    .end local v1           #dropDown:Lcom/htc/widget/DropDownList;
    :cond_0
    :goto_0
    return-void

    .line 1779
    .restart local v0       #buttonContainer:Landroid/view/View;
    .restart local v1       #dropDown:Lcom/htc/widget/DropDownList;
    :cond_1
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 1780
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    goto :goto_0
.end method

.method public setActionBarButtonDropDownExpandableAdapter(ILandroid/widget/ExpandableListAdapter;)V
    .locals 4
    .parameter "buttonIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ExpandableListAdapter;",
            ">(ITT;)V"
        }
    .end annotation

    .prologue
    .line 3205
    .local p2, adapter:Landroid/widget/ExpandableListAdapter;,"TT;"
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonModeList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3206
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3207
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x20200e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 3208
    .local v1, dropdown:Lcom/htc/widget/DropDownList;
    if-eqz v1, :cond_0

    .line 3209
    invoke-virtual {v1, p2}, Lcom/htc/widget/DropDownList;->setExpandableAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 3210
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 3211
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 3215
    :cond_0
    return-void

    .line 3214
    .end local v0           #buttonContainer:Landroid/view/View;
    .end local v1           #dropdown:Lcom/htc/widget/DropDownList;
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "DropDown List mode is not HtcActionBar.TWOLEVEL_DROPDOWN_MODE"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setActionBarButtonDropDownExpandableAdapter(ILandroid/widget/ExpandableListAdapter;Z)V
    .locals 4
    .parameter "buttonIndex"
    .parameter
    .parameter "isWithControl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ExpandableListAdapter;",
            ">(ITT;Z)V"
        }
    .end annotation

    .prologue
    .line 3223
    .local p2, adapter:Landroid/widget/ExpandableListAdapter;,"TT;"
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonModeList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 3224
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3225
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x20200e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 3226
    .local v1, dropdown:Lcom/htc/widget/DropDownList;
    if-eqz v1, :cond_0

    .line 3227
    invoke-virtual {v1, p2}, Lcom/htc/widget/DropDownList;->setExpandableAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 3228
    if-eqz p3, :cond_1

    .line 3229
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 3230
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 3238
    :cond_0
    :goto_0
    return-void

    .line 3232
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 3233
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    goto :goto_0

    .line 3237
    .end local v0           #buttonContainer:Landroid/view/View;
    .end local v1           #dropdown:Lcom/htc/widget/DropDownList;
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "DropDown List mode is not HtcActionBar.TWOLEVEL_DROPDOWN_MODE"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setActionBarButtonEnabled(IZ)V
    .locals 11
    .parameter "buttonIndex"
    .parameter "isEnabled"

    .prologue
    const v10, 0x20200e0

    const v9, 0x202009a

    const v8, 0x2020099

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1808
    iget-object v5, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1809
    .local v0, buttonContainer:Landroid/view/View;
    if-nez p2, :cond_2

    .line 1810
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 1811
    .local v1, dropdown:Lcom/htc/widget/DropDownList;
    invoke-virtual {v1, v6}, Lcom/htc/widget/DropDownList;->setClickable(Z)V

    .line 1812
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1813
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v4, v5

    check-cast v4, Landroid/widget/TextView;

    .line 1814
    .local v4, tv:Landroid/widget/TextView;
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1815
    const v5, -0x7f333334

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1816
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1817
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1818
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1819
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    const/16 v5, 0x80

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1820
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionBar;->invalidate()V

    .line 1833
    :cond_1
    :goto_0
    return-void

    .line 1822
    .end local v1           #dropdown:Lcom/htc/widget/DropDownList;
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 1823
    .restart local v1       #dropdown:Lcom/htc/widget/DropDownList;
    invoke-virtual {v1, v7}, Lcom/htc/widget/DropDownList;->setClickable(Z)V

    .line 1824
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1825
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v4, v5

    check-cast v4, Landroid/widget/TextView;

    .line 1826
    .restart local v4       #tv:Landroid/widget/TextView;
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1827
    const v5, -0x333334

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1828
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1829
    .restart local v3       #iv:Landroid/widget/ImageView;
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1830
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1831
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    const/16 v5, 0xff

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public setActionBarButtonIcon(II)V
    .locals 3
    .parameter "buttonIndex"
    .parameter "resId"

    .prologue
    .line 1700
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1701
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x2020099

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1702
    .local v1, iv:Landroid/widget/ImageView;
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1703
    return-void
.end method

.method public setActionBarButtonIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "buttonIndex"
    .parameter "drawable"

    .prologue
    .line 1710
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1711
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x2020099

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1712
    .local v1, iv:Landroid/widget/ImageView;
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1713
    return-void
.end method

.method public setActionBarButtonIndicatorText(ILjava/lang/String;)V
    .locals 3
    .parameter "buttonIndex"
    .parameter "text"

    .prologue
    .line 1526
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1527
    .local v0, buttonLayout:Landroid/view/View;
    const v2, 0x20200e4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1528
    .local v1, indicator:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1529
    return-void
.end method

.method public setActionBarButtonIndicatorTextByItemId(ILjava/lang/String;)V
    .locals 3
    .parameter "itemId"
    .parameter "text"

    .prologue
    .line 1515
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcActionBar;->findButtonByItemId(I)Landroid/view/View;

    move-result-object v0

    .line 1516
    .local v0, buttonLayout:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1519
    :goto_0
    return-void

    .line 1517
    :cond_0
    const v2, 0x20200e4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1518
    .local v1, indicator:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setActionBarButtonMode(II)V
    .locals 6
    .parameter "buttonIndex"
    .parameter "mode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1791
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1792
    .local v0, buttonContainer:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonModeList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1793
    const v2, 0x20200e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 1794
    .local v1, dropdown:Lcom/htc/widget/DropDownList;
    if-eqz p2, :cond_2

    .line 1795
    invoke-virtual {v1, v4}, Lcom/htc/widget/DropDownList;->setDropDownEnabled(Z)V

    .line 1796
    invoke-virtual {v1, p2}, Lcom/htc/widget/DropDownList;->setMode(I)V

    .line 1797
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4}, Lcom/htc/widget/DropDownList;->setClickable(Z)V

    .line 1798
    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->isGoogleAPISupported:Z

    if-nez v2, :cond_1

    invoke-virtual {v1, v5}, Lcom/htc/widget/DropDownList;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1799
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1801
    :goto_0
    return-void

    .line 1800
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownEnabled(Z)V

    goto :goto_0
.end method

.method public setActionBarButtonOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "buttonIndex"
    .parameter "onClickListener"

    .prologue
    .line 1740
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonModeList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 1742
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 1747
    :cond_0
    :goto_0
    return-void

    .line 1743
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1744
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x20200e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 1745
    .local v1, dropDown:Lcom/htc/widget/DropDownList;
    invoke-virtual {v1, p2}, Lcom/htc/widget/DropDownList;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setActionBarButtonText(II)V
    .locals 3
    .parameter "buttonIndex"
    .parameter "resId"

    .prologue
    .line 1730
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1731
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x202009a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    .line 1732
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1733
    return-void
.end method

.method public setActionBarButtonText(ILjava/lang/String;)V
    .locals 3
    .parameter "buttonIndex"
    .parameter "text"

    .prologue
    .line 1720
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1721
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x202009a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    .line 1722
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1723
    return-void
.end method

.method public setAppButtonDropDownExpandableAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ExpandableListAdapter;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, adapter:Landroid/widget/ExpandableListAdapter;,"TT;"
    const/4 v1, 0x2

    .line 3302
    iget v0, p0, Lcom/htc/widget/HtcActionBar;->mAppButtonMode:I

    if-ne v0, v1, :cond_1

    .line 3303
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v0, :cond_0

    .line 3304
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList;->setMode(I)V

    .line 3305
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DropDownList;->setExpandableAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 3309
    :cond_0
    return-void

    .line 3308
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DropDown List mode is not HtcActionBar.TWOLEVEL_DROPDOWN_MODE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAppButtonEnabled(Z)V
    .locals 4
    .parameter "isEnabled"

    .prologue
    const/4 v3, 0x0

    .line 1321
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2, p1}, Lcom/htc/widget/DropDownList;->setClickable(Z)V

    .line 1322
    const v2, 0x2020093

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1323
    .local v1, iv:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1324
    .local v0, appDropDownLP:Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_1

    .line 1325
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1326
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1327
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1333
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->updateAppButtonWidth()V

    .line 1334
    return-void

    .line 1329
    :cond_1
    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mAppButtonMode:I

    if-eqz v2, :cond_0

    .line 1330
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAppButtonMode(I)V
    .locals 8
    .parameter "mode"

    .prologue
    const/16 v7, 0x15

    const/4 v6, 0x6

    .line 1300
    iput p1, p0, Lcom/htc/widget/HtcActionBar;->mAppButtonMode:I

    .line 1301
    const v5, 0x2020091

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1302
    .local v2, mainTitle:Landroid/widget/TextView;
    const v5, 0x2020092

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1303
    .local v4, secondaryTitle:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1304
    .local v1, mainLP:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1305
    .local v3, secondaryLP:Landroid/widget/FrameLayout$LayoutParams;
    const v5, 0x2020093

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1306
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz p1, :cond_1

    .line 1307
    iget-object v5, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v5}, Lcom/htc/widget/DropDownList;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1308
    :cond_0
    const v5, 0x208014d

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1309
    invoke-direct {p0, v2, v4}, Lcom/htc/widget/HtcActionBar;->measureArrowDownLocation(Landroid/view/View;Landroid/view/View;)V

    .line 1310
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1311
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1317
    :goto_0
    return-void

    .line 1313
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1314
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1315
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method public setAppButtonOnlickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "onClickListner"

    .prologue
    .line 1185
    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mAppButtonMode:I

    if-nez v1, :cond_0

    .line 1186
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mAppButtonContainer:Landroid/widget/RelativeLayout;

    const v2, 0x202008c

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/DropDownList;

    .line 1187
    .local v0, dropDown:Lcom/htc/widget/DropDownList;
    invoke-virtual {v0, p1}, Lcom/htc/widget/DropDownList;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1188
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1190
    .end local v0           #dropDown:Lcom/htc/widget/DropDownList;
    :cond_0
    return-void
.end method

.method public setAppDropDownAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 1065
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    iget v0, p0, Lcom/htc/widget/HtcActionBar;->mAppButtonMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1072
    :cond_0
    return-void

    .line 1071
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DropDownList mode is not the HtcActionBar.DROPDOWN_MODE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAppIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 1158
    const v1, 0x20200e8

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1159
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1160
    return-void
.end method

.method public setAppIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 1176
    const v1, 0x20200e8

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1177
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1178
    return-void
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 1167
    const v1, 0x20200e8

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1168
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1169
    return-void
.end method

.method public setBackButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "onClickListner"

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mBackButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1412
    return-void
.end method

.method public setBackButtonEnabled(Z)V
    .locals 14
    .parameter "enabled"

    .prologue
    .line 1356
    iput-boolean p1, p0, Lcom/htc/widget/HtcActionBar;->mBackButtonEnabled:Z

    .line 1357
    const v9, 0x20200ea

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1358
    .local v7, iv:Landroid/widget/ImageView;
    const v9, 0x20200dc

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1361
    .local v4, backButton:Landroid/view/View;
    const v9, 0x20200e8

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1362
    .local v2, appIconView:Landroid/widget/ImageView;
    const v9, 0x20200e9

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1363
    .local v5, bubble:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1364
    .local v1, appIconLP:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1365
    .local v6, bubbleLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v9, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/htc/widget/HtcActionBar;->mTransparentStyleEnabled:Z

    if-eqz v9, :cond_1

    .line 1366
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    const/16 v10, 0x41

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1367
    const/4 v9, 0x5

    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1368
    const/16 v9, 0x28

    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1373
    :goto_0
    if-eqz p1, :cond_3

    .line 1374
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1375
    const v9, 0x2080436

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1376
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1377
    .local v3, arrowUpLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v9, p0, Lcom/htc/widget/HtcActionBar;->mFullScreenStyleEnabled:Z

    if-eqz v9, :cond_2

    .line 1378
    const/4 v9, 0x1

    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1379
    const/4 v9, 0x1

    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1384
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1385
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->adjustLayoutForBackButton()V

    .line 1404
    .end local v3           #arrowUpLP:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_2
    return-void

    .line 1370
    :cond_1
    const/16 v9, 0xa

    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1371
    const/16 v9, 0x2d

    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 1381
    .restart local v3       #arrowUpLP:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/4 v9, 0x0

    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1382
    const/4 v9, 0x0

    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 1389
    .end local v3           #arrowUpLP:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1390
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1391
    iget-object v9, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    const/16 v10, -0x1e

    invoke-virtual {v9, v10}, Lcom/htc/widget/DropDownList;->setDropDownHorizontalOffset(I)V

    .line 1392
    iget-object v9, p0, Lcom/htc/widget/HtcActionBar;->mBaseBkgContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1393
    .local v8, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v9, 0x0

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1396
    iget-object v9, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    const/16 v10, 0x4a

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/htc/widget/DropDownList;->setPadding(IIII)V

    .line 1397
    iget-object v9, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v9}, Lcom/htc/widget/DropDownList;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1398
    .local v0, appDropdownLP:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v9, 0x1

    const v10, 0x20200dc

    invoke-virtual {v0, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1399
    iget v9, p0, Lcom/htc/widget/HtcActionBar;->mMaxAppButtonWidth:I

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1401
    const v9, 0x2020091

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x2020092

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/htc/widget/HtcActionBar;->measureArrowDownLocation(Landroid/view/View;Landroid/view/View;)V

    .line 1402
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->updateAppButtonWidth()V

    goto :goto_2
.end method

.method public setIsDispatchBackKeyEvent(Z)V
    .locals 0
    .parameter "isDispatch"

    .prologue
    .line 2112
    iput-boolean p1, p0, Lcom/htc/widget/HtcActionBar;->mIsDispatchBackKey:Z

    .line 2113
    return-void
.end method

.method public setMainTitle(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 1099
    const v1, 0x2020091

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1100
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1102
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcActionBar;->getTitleRawWidth(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mMainTitleRawWidth:I

    .line 1103
    const v1, 0x2020092

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/HtcActionBar;->measureArrowDownLocation(Landroid/view/View;Landroid/view/View;)V

    .line 1104
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 1087
    const v1, 0x2020091

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1088
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1090
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcActionBar;->getTitleRawWidth(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mMainTitleRawWidth:I

    .line 1091
    const v1, 0x2020092

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/HtcActionBar;->measureArrowDownLocation(Landroid/view/View;Landroid/view/View;)V

    .line 1092
    return-void
.end method

.method public setMenuButtonEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1043
    iput-boolean p1, p0, Lcom/htc/widget/HtcActionBar;->isMenuButtonenabled:Z

    .line 1044
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/htc/widget/HtcActionBar;->isMenuButtonenabled:Z

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonEnabled(IZ)V

    .line 1045
    return-void
.end method

.method public setMenuDropDownAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    .line 960
    invoke-virtual {p0, v4, v3}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonMode(II)V

    .line 961
    const v2, 0x20200e7

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 962
    .local v1, menuButtonContainer:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v2, :cond_1

    .line 963
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2, p1}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 964
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 965
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z

    .line 967
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 968
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-ge v2, v5, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    .line 969
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 970
    const v2, 0x20200e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 971
    .local v0, bkgHolder:Landroid/view/View;
    invoke-direct {p0, v0, v4}, Lcom/htc/widget/HtcActionBar;->adjustTitleBarBkg(Landroid/view/View;I)V

    .line 972
    const/4 v2, 0x2

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 974
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 975
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 979
    .end local v0           #bkgHolder:Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->updateAppButtonWidth()V

    .line 980
    return-void
.end method

.method public setMenuDropDownAdapter(Landroid/widget/ListAdapter;Z)V
    .locals 6
    .parameter
    .parameter "isWithControl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ">(TT;Z)V"
        }
    .end annotation

    .prologue
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    .line 988
    invoke-virtual {p0, v4, v3}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonMode(II)V

    .line 989
    const v2, 0x20200e7

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 990
    .local v1, menuButtonContainer:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v2, :cond_1

    .line 991
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2, p1}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 992
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 993
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z

    .line 995
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 996
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-ge v2, v5, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    .line 997
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 998
    const v2, 0x20200e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 999
    .local v0, bkgHolder:Landroid/view/View;
    invoke-direct {p0, v0, v4}, Lcom/htc/widget/HtcActionBar;->adjustTitleBarBkg(Landroid/view/View;I)V

    .line 1000
    const/4 v2, 0x2

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1001
    if-eqz p2, :cond_2

    .line 1002
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 1003
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 1010
    .end local v0           #bkgHolder:Landroid/view/View;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->updateAppButtonWidth()V

    .line 1011
    return-void

    .line 1005
    .restart local v0       #bkgHolder:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 1006
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v3, p0, Lcom/htc/widget/HtcActionBar;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    goto :goto_0
.end method

.method public setMenuDropDownExpandableAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ExpandableListAdapter;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, adapter:Landroid/widget/ExpandableListAdapter;,"TT;"
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 3247
    invoke-virtual {p0, v3, v2}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonMode(II)V

    .line 3248
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v1, :cond_1

    .line 3249
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z

    .line 3250
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setMode(I)V

    .line 3251
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1, p1}, Lcom/htc/widget/DropDownList;->setExpandableAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 3252
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 3253
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 3254
    const v1, 0x20200e7

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3255
    .local v0, menuButtonContainer:Landroid/view/View;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 3256
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3257
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    .line 3258
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3259
    const v1, 0x20200e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/htc/widget/HtcActionBar;->adjustTitleBarBkg(Landroid/view/View;I)V

    .line 3260
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 3261
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 3264
    .end local v0           #menuButtonContainer:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setMenuDropDownExpandableAdapter(Landroid/widget/ExpandableListAdapter;Z)V
    .locals 4
    .parameter
    .parameter "isWithControl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ExpandableListAdapter;",
            ">(TT;Z)V"
        }
    .end annotation

    .prologue
    .local p1, adapter:Landroid/widget/ExpandableListAdapter;,"TT;"
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 3272
    invoke-virtual {p0, v3, v2}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonMode(II)V

    .line 3273
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v1, :cond_1

    .line 3274
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z

    .line 3275
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setMode(I)V

    .line 3276
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1, p1}, Lcom/htc/widget/DropDownList;->setExpandableAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 3277
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 3278
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 3279
    const v1, 0x20200e7

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3280
    .local v0, menuButtonContainer:Landroid/view/View;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 3281
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3282
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    .line 3283
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3284
    const v1, 0x20200e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/htc/widget/HtcActionBar;->adjustTitleBarBkg(Landroid/view/View;I)V

    .line 3285
    if-eqz p2, :cond_2

    .line 3286
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 3287
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 3294
    .end local v0           #menuButtonContainer:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 3289
    .restart local v0       #menuButtonContainer:Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 3290
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionBar;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    goto :goto_0
.end method

.method public setMenuDropDownFocusable(Z)V
    .locals 2
    .parameter "focusable"

    .prologue
    .line 3100
    iput-boolean p1, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDownFocusable:Z

    .line 3101
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDownFocusable:Z

    if-nez v0, :cond_0

    .line 3102
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList;->setIsGainFocusOnClick(Z)V

    .line 3104
    :cond_0
    return-void
.end method

.method public setNotificationBubbleText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 2053
    const v1, 0x20200e9

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2054
    .local v0, ball:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 2055
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2057
    :cond_0
    return-void
.end method

.method public setOnShowSearchBoxListener(Lcom/htc/widget/HtcActionBar$OnShowSearchBoxListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2142
    iput-object p1, p0, Lcom/htc/widget/HtcActionBar;->mOnShowSearchBoxListener:Lcom/htc/widget/HtcActionBar$OnShowSearchBoxListener;

    .line 2143
    return-void
.end method

.method public setSearchBoxButtonIcon(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 2150
    if-nez p1, :cond_0

    .line 2153
    :goto_0
    return-void

    .line 2151
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v2, 0x2020099

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2152
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setSearchBoxButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    .line 2160
    if-nez p1, :cond_0

    .line 2163
    :goto_0
    return-void

    .line 2161
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v2, 0x2020099

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2162
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSearchBoxButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "onClickListner"

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mButtonModeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->mIsSearchBoxEnabled:Z

    if-eqz v0, :cond_0

    .line 2126
    iput-object p1, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxListener:Landroid/view/View$OnClickListener;

    .line 2131
    :cond_0
    return-void
.end method

.method public setSecondaryTitle(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 1131
    const v3, 0x2020091

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1132
    .local v1, mainTV:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1133
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const v3, 0x2020092

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1134
    .local v2, tv:Landroid/widget/TextView;
    if-nez p1, :cond_0

    .line 1135
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1136
    const/16 v3, 0xd

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1142
    :goto_0
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcActionBar;->getTitleRawWidth(Landroid/widget/TextView;)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcActionBar;->mSubTitleRawWidth:I

    .line 1143
    invoke-direct {p0, v1, v2}, Lcom/htc/widget/HtcActionBar;->measureArrowDownLocation(Landroid/view/View;Landroid/view/View;)V

    .line 1144
    return-void

    .line 1138
    :cond_0
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1139
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1140
    const/4 v3, 0x5

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 1111
    const v3, 0x2020091

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1112
    .local v1, mainTV:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1113
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const v3, 0x2020092

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1114
    .local v2, tv:Landroid/widget/TextView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1115
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1116
    const/16 v3, 0xd

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1122
    :goto_0
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcActionBar;->getTitleRawWidth(Landroid/widget/TextView;)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcActionBar;->mSubTitleRawWidth:I

    .line 1123
    invoke-direct {p0, v1, v2}, Lcom/htc/widget/HtcActionBar;->measureArrowDownLocation(Landroid/view/View;Landroid/view/View;)V

    .line 1124
    return-void

    .line 1118
    :cond_1
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1120
    const/4 v3, 0x5

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public setupActionBarButton(IIILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "buttonIndex"
    .parameter "resId"
    .parameter "textResId"
    .parameter "onClickListner"

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    if-eqz v0, :cond_0

    .line 1686
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v0}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 1693
    :goto_0
    return-void

    .line 1690
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonIcon(II)V

    .line 1691
    invoke-virtual {p0, p1, p3}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonText(II)V

    .line 1692
    invoke-virtual {p0, p1, p4}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setupActionBarButton(IILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "buttonIndex"
    .parameter "resId"
    .parameter "text"
    .parameter "onClickListner"

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v0}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 1582
    :goto_0
    return-void

    .line 1579
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonIcon(II)V

    .line 1580
    invoke-virtual {p0, p1, p3}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonText(ILjava/lang/String;)V

    .line 1581
    invoke-virtual {p0, p1, p4}, Lcom/htc/widget/HtcActionBar;->setActionBarButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setupRemoveTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mStubView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1652
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->initStubView()V

    .line 1655
    :cond_0
    return-void
.end method

.method public setupStubViewDeleteIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mStubView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1664
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->initStubView()V

    .line 1667
    :cond_0
    return-void
.end method

.method public setupStubViewTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mStubView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1640
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->initStubView()V

    .line 1642
    :cond_0
    return-void
.end method

.method public showActionBarButton(IZ)V
    .locals 5
    .parameter "buttonIndex"
    .parameter "isShow"

    .prologue
    const/4 v2, 0x0

    .line 1537
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1538
    .local v0, view:Landroid/view/View;
    if-eqz p2, :cond_3

    .line 1539
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    .line 1541
    :cond_0
    const-string v3, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Show button"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1543
    const v1, 0x20200e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/htc/widget/HtcActionBar;->adjustTitleBarBkg(Landroid/view/View;I)V

    .line 1566
    :goto_1
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->updateAppButtonWidth()V

    .line 1567
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 1541
    goto :goto_0

    .line 1546
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    if-eqz v1, :cond_4

    .line 1547
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v1}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_1

    .line 1552
    :cond_4
    iget-boolean v1, p0, Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 1555
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-lez v1, :cond_6

    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    .line 1556
    :cond_6
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1557
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Lcom/htc/widget/DropDownList;->postInvalidateDelayed(J)V

    .line 1558
    iget v1, p0, Lcom/htc/widget/HtcActionBar;->mShownButtonCount:I

    if-eqz v1, :cond_1

    .line 1564
    invoke-direct {p0, p1, v2}, Lcom/htc/widget/HtcActionBar;->updateButtonsBkg(IZ)V

    goto :goto_1
.end method

.method public showActionBarButtonIndicator(IZ)V
    .locals 3
    .parameter "buttonIndex"
    .parameter "shown"

    .prologue
    .line 1501
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1502
    .local v0, buttonLayout:Landroid/view/View;
    const v2, 0x20200e4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1503
    .local v1, indicator:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 1504
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1508
    :goto_0
    return-void

    .line 1506
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showActionBarButtonIndicatorByItemId(IZ)V
    .locals 3
    .parameter "itemId"
    .parameter "shown"

    .prologue
    .line 1486
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcActionBar;->findButtonByItemId(I)Landroid/view/View;

    move-result-object v0

    .line 1487
    .local v0, buttonLayout:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1494
    :goto_0
    return-void

    .line 1488
    :cond_0
    const v2, 0x20200e4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1489
    .local v1, indicator:Landroid/view/View;
    if-eqz p2, :cond_1

    .line 1490
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1492
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showAppButton(Z)V
    .locals 4
    .parameter "isShown"

    .prologue
    const v3, 0x20200e8

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1341
    if-eqz p1, :cond_0

    .line 1342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->isShowAppButton:Z

    .line 1343
    const v0, 0x20200db

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1344
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1353
    :goto_0
    return-void

    .line 1347
    :cond_0
    iput-boolean v1, p0, Lcom/htc/widget/HtcActionBar;->isShowAppButton:Z

    .line 1348
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mAppButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1349
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showNotificationBubble(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 2040
    iput-boolean p1, p0, Lcom/htc/widget/HtcActionBar;->mIsBubbleShown:Z

    .line 2041
    const v1, 0x20200e9

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2042
    .local v0, ball:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2043
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2046
    :cond_0
    :goto_0
    return-void

    .line 2044
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showProgressBar(Z)V
    .locals 9
    .parameter "show"

    .prologue
    const v8, 0x20200dd

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 2068
    iput-boolean p1, p0, Lcom/htc/widget/HtcActionBar;->mIsShowProgressbar:Z

    .line 2069
    iget-object v5, p0, Lcom/htc/widget/HtcActionBar;->mAppButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 2070
    .local v3, progressBarInPort:Landroid/widget/ProgressBar;
    iget-object v5, p0, Lcom/htc/widget/HtcActionBar;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 2071
    .local v2, progressBarInLand:Landroid/widget/ProgressBar;
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 2094
    :cond_0
    :goto_0
    return-void

    .line 2072
    :cond_1
    if-eqz p1, :cond_4

    .line 2073
    invoke-direct {p0}, Lcom/htc/widget/HtcActionBar;->isInLandscapeMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2074
    iget-object v5, p0, Lcom/htc/widget/HtcActionBar;->mAppDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v5}, Lcom/htc/widget/DropDownList;->isClickable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2075
    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2076
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 2078
    :cond_2
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2079
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 2083
    :cond_3
    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2084
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2085
    const v5, 0x2020091

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2086
    .local v0, mainTV:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2087
    .local v1, mainTitleLP:Landroid/widget/FrameLayout$LayoutParams;
    const v5, 0x2020092

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2088
    .local v4, tv:Landroid/widget/TextView;
    invoke-direct {p0, v0, v4}, Lcom/htc/widget/HtcActionBar;->measureArrowDownLocation(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 2091
    .end local v0           #mainTV:Landroid/widget/TextView;
    .end local v1           #mainTitleLP:Landroid/widget/FrameLayout$LayoutParams;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_4
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2092
    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSearchBox()V
    .locals 2

    .prologue
    .line 2101
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionBar;->mIsSearchBoxEnabled:Z

    if-eqz v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v1, 0x20200e0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 2105
    :cond_0
    return-void
.end method
