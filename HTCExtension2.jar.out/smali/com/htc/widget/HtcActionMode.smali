.class public Lcom/htc/widget/HtcActionMode;
.super Landroid/widget/LinearLayout;
.source "HtcActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;,
        Lcom/htc/widget/HtcActionMode$SubMenuDropDownAdapter;,
        Lcom/htc/widget/HtcActionMode$OnShowSearchBoxListener;,
        Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;,
        Lcom/htc/widget/HtcActionMode$OnDropDownListItemClickListener;,
        Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;,
        Lcom/htc/widget/HtcActionMode$HtcMenuItem;
    }
.end annotation


# static fields
.field public static final DROPDOWN_MODE:I = 0x1

.field private static final MAX_ACTION_MODE_BUTTON_COUNT:I = 0x4

.field public static final STANDARD_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcActionBar"

.field public static final TWOLEVEL_DROPDOWN_MODE:I = 0x2


# instance fields
.field private divider:Landroid/graphics/drawable/Drawable;

.field isContainActionItem:Z

.field isDismissDropDownOnBackKey:Z

.field private isGoogleAPISupported:Z

.field private isInitDropDown:Z

.field isRotate:Z

.field private isShowAppButton:Z

.field private mActiomModeCallback:Landroid/view/ActionMode$Callback;

.field private mActionBarButtonDropDownWithControlWidth:I

.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionMode:Landroid/view/ActionMode;

.field private mAppButtonContainer:Landroid/widget/RelativeLayout;

.field private mAppButtonMode:I

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

.field mHasOverflow:Z

.field mIsBubbleShown:Z

.field private mIsDispatchBackKey:Z

.field mIsMenuButtonClicked:Z

.field mIsMenuDropDownShowing:Z

.field private mIsMenuEnabled:Z

.field private mIsSearchBoxEnabled:Z

.field private mIsShowCustomView:Z

.field private mMaxActionBarButtonDropDownWidth:I

.field private mMaxAppButtonDropDownWidth:I

.field private mMaxAppButtonWidth:I

.field private mMaxDropDownHieghtInLand:I

.field private mMaxDropDownHieghtInPort:I

.field private mMenu:Landroid/view/Menu;

.field private mMenuDropDown:Lcom/htc/widget/DropDownList;

.field private mMenuDropDownAdapter:Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;

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

.field private mOnActionButtonClickListener:Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;

.field private mOnDropDownListItemClickListener:Lcom/htc/widget/HtcActionMode$OnDropDownListItemClickListener;

.field private mOnShowSearchBoxListener:Lcom/htc/widget/HtcActionMode$OnShowSearchBoxListener;

.field private mOneButtonSearchBoxWidth:I

.field private mSearchBox:Lcom/htc/widget/SearchBoxView;

.field private mSearchBoxContainer:Landroid/widget/LinearLayout;

.field private mSearchBoxListener:Landroid/view/View$OnClickListener;

.field private mSerachBoxContainerLP:Landroid/widget/LinearLayout$LayoutParams;

.field private mShowSearchBoxClickListener:Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;

.field private mShownButtonCount:I

.field private mSubMenuDropDownAdapterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcActionMode$SubMenuDropDownAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mThreeButtonSearchBoxWidth:I

.field private mTitlebar4RoundBkgResId:I

.field private mTitlebarAllBkgResId:I

.field private mTitlebarBaseBkgResId:I

.field private mTitlebarCenter1DivBkgResId:I

.field private mTitlebarCenterBkgResId:I

.field private mTitlebarCenterNoDivBkgResId:I

.field private mTitlebarLeftBkgResId:I

.field private mTitlebarLeftNoDivBkgResId:I

.field private mTitlebarRightBkgResId:I

.field private mTitlebarRightNoDivBkgResId:I

.field private mTwoButtonSearchBoxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcActionMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcActionMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 87
    iput v5, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    .line 98
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionMode;->mIsSearchBoxEnabled:Z

    .line 99
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionMode;->mIsMenuEnabled:Z

    .line 100
    iput v5, p0, Lcom/htc/widget/HtcActionMode;->mAppButtonMode:I

    .line 111
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionMode;->isInitDropDown:Z

    .line 118
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionMode;->mBackButtonEnabled:Z

    .line 119
    iput-boolean v4, p0, Lcom/htc/widget/HtcActionMode;->isShowAppButton:Z

    .line 120
    iput-boolean v4, p0, Lcom/htc/widget/HtcActionMode;->isGoogleAPISupported:Z

    .line 121
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionMode;->mIsDispatchBackKey:Z

    .line 123
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionMode;->mIsShowCustomView:Z

    .line 130
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->divider:Landroid/graphics/drawable/Drawable;

    .line 272
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionMode;->mHasOverflow:Z

    .line 412
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionMode;->isContainActionItem:Z

    .line 1056
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionMode;->mIsBubbleShown:Z

    .line 1334
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionMode;->isRotate:Z

    .line 1459
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionMode;->isDismissDropDownOnBackKey:Z

    .line 1884
    iput-boolean v4, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDownFocusable:Z

    .line 1896
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionMode;->mIsMenuButtonClicked:Z

    .line 1897
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionMode;->mIsMenuDropDownShowing:Z

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    .line 143
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mButtonModeList:Ljava/util/List;

    .line 144
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mMenuItemList:Ljava/util/ArrayList;

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mSubMenuDropDownAdapterList:Ljava/util/ArrayList;

    .line 147
    new-instance v3, Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;

    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mMenuItemList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4}, Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;-><init>(Lcom/htc/widget/HtcActionMode;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDownAdapter:Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;

    .line 148
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mButtonModeList:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mSubMenuDropDownAdapterList:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/widget/HtcActionMode$SubMenuDropDownAdapter;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcActionMode$SubMenuDropDownAdapter;-><init>(Lcom/htc/widget/HtcActionMode;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcActionMode;->setWillNotDraw(Z)V

    .line 156
    const/4 v2, 0x0

    .line 157
    .local v2, resId:I
    sget-object v3, Lcom/htc/R$styleable;->HtcActionBar:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 158
    .local v0, a:Landroid/content/res/TypedArray;
    const-string v3, "common_titlebar_left"

    invoke-static {p1, v3, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 159
    if-eqz v2, :cond_1

    iput v2, p0, Lcom/htc/widget/HtcActionMode;->mTitlebarLeftBkgResId:I

    .line 160
    :cond_1
    const-string v3, "common_titlebar_center"

    invoke-static {p1, v3, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 161
    if-eqz v2, :cond_2

    iput v2, p0, Lcom/htc/widget/HtcActionMode;->mTitlebarCenterBkgResId:I

    .line 162
    :cond_2
    const-string v3, "common_titlebar_right"

    invoke-static {p1, v3, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 163
    if-eqz v2, :cond_3

    iput v2, p0, Lcom/htc/widget/HtcActionMode;->mTitlebarRightBkgResId:I

    .line 164
    :cond_3
    const-string v3, "common_titlebar_4round"

    invoke-static {p1, v3, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 165
    if-eqz v2, :cond_4

    iput v6, p0, Lcom/htc/widget/HtcActionMode;->mTitlebar4RoundBkgResId:I

    .line 167
    :cond_4
    const-string v3, "common_titlebar_left_no_div"

    invoke-static {p1, v3, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 168
    if-eqz v2, :cond_5

    iput v2, p0, Lcom/htc/widget/HtcActionMode;->mTitlebarLeftNoDivBkgResId:I

    .line 169
    :cond_5
    const-string v3, "common_titlebar_center_1div"

    invoke-static {p1, v3, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 170
    if-eqz v2, :cond_6

    iput v2, p0, Lcom/htc/widget/HtcActionMode;->mTitlebarCenter1DivBkgResId:I

    .line 171
    :cond_6
    const-string v3, "common_titlebar_center_no_div"

    invoke-static {p1, v3, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 172
    if-eqz v2, :cond_7

    iput v2, p0, Lcom/htc/widget/HtcActionMode;->mTitlebarCenterNoDivBkgResId:I

    .line 173
    :cond_7
    const-string v3, "common_titlebar_right_no_div"

    invoke-static {p1, v3, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 174
    if-eqz v2, :cond_8

    iput v2, p0, Lcom/htc/widget/HtcActionMode;->mTitlebarRightNoDivBkgResId:I

    .line 175
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcActionMode;->mOneButtonSearchBoxWidth:I

    .line 178
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcActionMode;->mTwoButtonSearchBoxWidth:I

    .line 179
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcActionMode;->mThreeButtonSearchBoxWidth:I

    .line 180
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcActionMode;->mFourButtonSearchBoxWidth:I

    .line 182
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcActionMode;->mMaxActionBarButtonDropDownWidth:I

    .line 183
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcActionMode;->mMinActionBarButtonDropDownWidth:I

    .line 184
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcActionMode;->mActionBarButtonDropDownWithControlWidth:I

    .line 185
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcActionMode;->mMaxAppButtonDropDownWidth:I

    .line 186
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcActionMode;->mMinAppButtonDropDownWidth:I

    .line 187
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcActionMode;->mMaxDropDownHieghtInPort:I

    .line 188
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x205004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcActionMode;->mMaxDropDownHieghtInLand:I

    .line 189
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x205004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcActionMode;->mMaxAppButtonWidth:I

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcActionMode;)Lcom/htc/widget/DropDownList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcActionMode;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionMode;->mIsMenuEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcActionMode;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcActionMode;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcActionMode;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcActionMode;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcActionMode;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcActionMode;)Landroid/view/ActionMode$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mActiomModeCallback:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcActionMode;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionMode;->mIsSearchBoxEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcActionMode;)Lcom/htc/widget/SearchBoxView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcActionMode;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->setupSearchBox()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcActionMode;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcActionMode;)Lcom/htc/widget/HtcActionMode$OnShowSearchBoxListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mOnShowSearchBoxListener:Lcom/htc/widget/HtcActionMode$OnShowSearchBoxListener;

    return-object v0
.end method

.method private adjustDropDownLocationAfterRotate()V
    .locals 4

    .prologue
    .line 1266
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionMode;->isRotate:Z

    if-eqz v2, :cond_1

    .line 1267
    const-string v2, "DropDownList"

    const-string v3, "adjustDropDownLocationAfterRotate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1269
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x20200e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/DropDownList;

    .line 1270
    .local v0, dropDown:Lcom/htc/widget/DropDownList;
    if-eqz v0, :cond_2

    .line 1271
    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1272
    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 1273
    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->performClick()Z

    .line 1278
    .end local v0           #dropDown:Lcom/htc/widget/DropDownList;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/HtcActionMode;->isRotate:Z

    .line 1280
    .end local v1           #i:I
    :cond_1
    return-void

    .line 1268
    .restart local v0       #dropDown:Lcom/htc/widget/DropDownList;
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private adjustTitleBarBkg(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "buttonIndex"

    .prologue
    .line 990
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/htc/widget/HtcActionMode;->updateButtonsBkg(IZ)V

    .line 991
    return-void
.end method

.method private applyDefaultStyle()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcActionMode;->mTitlebarBaseBkgResId:I

    .line 248
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
    .line 357
    .local p1, menuItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDownAdapter:Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;->setMenu(Ljava/util/ArrayList;)V

    .line 358
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDownAdapter:Lcom/htc/widget/HtcActionMode$MenuDropDownAdapter;

    return-object v0
.end method

.method private buildAdapterFromSubMenu(Landroid/view/SubMenu;I)Landroid/widget/BaseAdapter;
    .locals 2
    .parameter "menu"
    .parameter "buttonIndex"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mSubMenuDropDownAdapterList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcActionMode$SubMenuDropDownAdapter;

    .line 352
    .local v0, adapter:Lcom/htc/widget/HtcActionMode$SubMenuDropDownAdapter;
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcActionMode$SubMenuDropDownAdapter;->setMenu(Landroid/view/SubMenu;)V

    .line 353
    return-object v0
.end method

.method private clearActionModeButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 470
    const-string v1, "HtcActionBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearActionModeButton "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsSearchBoxEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/widget/HtcActionMode;->mIsSearchBoxEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lcom/htc/widget/HtcActionMode;->isContainActionItem:Z

    if-eqz v1, :cond_5

    .line 472
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcActionMode;->mIsMenuEnabled:Z

    if-nez v1, :cond_4

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/htc/widget/HtcActionMode;->mIsSearchBoxEnabled:Z

    if-nez v1, :cond_4

    .line 473
    :cond_1
    invoke-virtual {p0, v0, v4}, Lcom/htc/widget/HtcActionMode;->showActionModeButton(IZ)V

    .line 474
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonDropDownAdapter(ILandroid/widget/ListAdapter;)V

    .line 475
    invoke-virtual {p0, v0, v4}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonMode(II)V

    .line 481
    :goto_1
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/htc/widget/HtcActionMode;->mIsSearchBoxEnabled:Z

    if-nez v1, :cond_3

    .line 482
    :cond_2
    invoke-virtual {p0, v0, v4}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonIcon(II)V

    .line 483
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonText(ILjava/lang/String;)V

    .line 471
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->disableMenuButton()V

    goto :goto_1

    .line 486
    :cond_5
    return-void
.end method

.method private constructHtcActionMode(Landroid/view/Menu;)V
    .locals 13
    .parameter "menu"

    .prologue
    const v12, 0x20200e0

    const/4 v11, 0x3

    const/4 v10, 0x1

    .line 414
    if-nez p1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    const-string v8, "HtcActionBar"

    const-string v9, "constructHtcActionMode"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v5, nonActionButtonItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 419
    iget-object v8, p0, Lcom/htc/widget/HtcActionMode;->mMenuItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 420
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcActionMode;->flagActionItems(Landroid/view/Menu;)V

    .line 421
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    .line 422
    .local v4, menuItemCount:I
    const/4 v2, 0x0

    .line 426
    .local v2, isMoveItemInDropDown:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_7

    .line 428
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 433
    .local v3, item:Lcom/android/internal/view/menu/MenuItemImpl;
    iget-boolean v8, p0, Lcom/htc/widget/HtcActionMode;->mHasOverflow:Z

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    if-ne v8, v11, :cond_2

    const/4 v2, 0x1

    .line 434
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    if-gt v8, v11, :cond_6

    if-nez v2, :cond_6

    .line 435
    iput-boolean v10, p0, Lcom/htc/widget/HtcActionMode;->isContainActionItem:Z

    .line 436
    iget v8, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonIcon(ILandroid/graphics/drawable/Drawable;)V

    .line 437
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 438
    .local v7, text:Ljava/lang/String;
    iget v8, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    invoke-virtual {p0, v8, v7}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonText(ILjava/lang/String;)V

    .line 439
    iget-object v8, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    iget v9, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 440
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 441
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v6

    .line 442
    .local v6, subMenu:Landroid/view/SubMenu;
    iget v8, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    invoke-virtual {p0, v8, v10}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonMode(II)V

    .line 443
    iget v8, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    invoke-virtual {p0, v8, v10}, Lcom/htc/widget/HtcActionMode;->showActionModeButton(IZ)V

    .line 445
    if-eqz v6, :cond_3

    .line 446
    iget v8, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-direct {p0, v6, v8}, Lcom/htc/widget/HtcActionMode;->buildAdapterFromSubMenu(Landroid/view/SubMenu;I)Landroid/widget/BaseAdapter;

    move-result-object v0

    .line 447
    .local v0, a:Landroid/widget/BaseAdapter;
    iget v8, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8, v0}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonDropDownAdapter(ILandroid/widget/ListAdapter;)V

    .line 453
    .end local v0           #a:Landroid/widget/BaseAdapter;
    .end local v6           #subMenu:Landroid/view/SubMenu;
    :cond_3
    :goto_2
    iget v8, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonEnabled(IZ)V

    .line 426
    .end local v7           #text:Ljava/lang/String;
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 450
    .restart local v7       #text:Ljava/lang/String;
    :cond_5
    iget v8, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonMode(II)V

    .line 451
    iget v8, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    invoke-virtual {p0, v8, v10}, Lcom/htc/widget/HtcActionMode;->showActionModeButton(IZ)V

    goto :goto_2

    .line 456
    .end local v7           #text:Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 457
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 462
    .end local v3           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 463
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcActionMode;->buildAdapterFromMenu(Ljava/util/ArrayList;)Landroid/widget/BaseAdapter;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcActionMode;->setMenuDropDownAdapter(Landroid/widget/ListAdapter;)V

    .line 464
    iget-object v8, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    new-instance v9, Lcom/htc/widget/HtcActionMode$HtcMenuItem;

    invoke-direct {v9, p0, v12}, Lcom/htc/widget/HtcActionMode$HtcMenuItem;-><init>(Lcom/htc/widget/HtcActionMode;I)V

    invoke-virtual {v8, v9}, Lcom/htc/widget/DropDownList;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private dismissDropDown()V
    .locals 4

    .prologue
    .line 1462
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1463
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x20200e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/DropDownList;

    .line 1464
    .local v0, dropDown:Lcom/htc/widget/DropDownList;
    if-eqz v0, :cond_1

    .line 1465
    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1466
    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 1467
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HtcActionMode;->isDismissDropDownOnBackKey:Z

    .line 1472
    .end local v0           #dropDown:Lcom/htc/widget/DropDownList;
    :cond_0
    return-void

    .line 1462
    .restart local v0       #dropDown:Lcom/htc/widget/DropDownList;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 1297
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getWidth()I

    move-result v5

    .line 1299
    .local v5, boundleft:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    .local v1, VisibleButtonIndex:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v8, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 1304
    iget-object v8, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    .line 1305
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1307
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1308
    .local v7, resources:Landroid/content/res/Resources;
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/widget/HtcActionMode;->divider:Landroid/graphics/drawable/Drawable;

    .line 1309
    iget-object v8, p0, Lcom/htc/widget/HtcActionMode;->divider:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_3

    .line 1311
    const-string v8, "Actionmode"

    const-string v9, "draw divider = null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_2
    return-void

    .line 1315
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x205003a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    .line 1316
    .local v4, boundTop:I
    const/4 v2, 0x0

    .line 1317
    .local v2, boundBotton:I
    iget v8, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    if-lez v8, :cond_2

    .line 1318
    iget-object v8, p0, Lcom/htc/widget/HtcActionMode;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v5, v8

    .line 1319
    const/4 v6, 0x1

    :goto_1
    iget v8, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    if-gt v6, v8, :cond_2

    .line 1321
    iget-object v9, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    iget v8, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    sub-int/2addr v8, v6

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1322
    .local v0, DisplayButton:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v5, v8

    .line 1324
    iget-object v8, p0, Lcom/htc/widget/HtcActionMode;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int v3, v5, v8

    .line 1325
    .local v3, boundRight:I
    iget-object v8, p0, Lcom/htc/widget/HtcActionMode;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v5, v4, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1326
    iget-object v8, p0, Lcom/htc/widget/HtcActionMode;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1327
    const-string v8, "Actionmode_transparent"

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

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private filterInvisibleItems(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    .line 255
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    .line 256
    .local v2, itemsSize:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v3, mInvisibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 258
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mMenuItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 260
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 261
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 262
    .local v1, item:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mMenuItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 268
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 270
    :cond_2
    return-void
.end method

.method private flagActionItems(Landroid/view/Menu;)V
    .locals 17
    .parameter "menu"

    .prologue
    .line 278
    const/4 v9, 0x4

    .line 279
    .local v9, maxActions:I
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/widget/HtcActionMode;->mHasOverflow:Z

    .line 283
    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcActionMode;->filterInvisibleItems(Landroid/view/Menu;)V

    .line 284
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

    .line 285
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v10

    .line 287
    .local v10, menuItemCount:I
    const/4 v12, 0x0

    .line 288
    .local v12, requiredItems:I
    const/4 v11, 0x0

    .line 289
    .local v11, requestedItems:I
    const/4 v3, 0x0

    .line 290
    .local v3, hasOverflow:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v10, :cond_2

    .line 291
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 292
    .local v7, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 293
    add-int/lit8 v12, v12, 0x1

    .line 290
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 295
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 297
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 300
    .end local v7           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/widget/HtcActionMode;->mHasOverflow:Z

    .line 302
    if-nez v3, :cond_3

    add-int v14, v12, v11

    if-le v14, v9, :cond_4

    .line 303
    :cond_3
    add-int/lit8 v9, v9, -0x1

    .line 304
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/widget/HtcActionMode;->mHasOverflow:Z

    .line 306
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    sub-int/2addr v9, v14

    .line 307
    sub-int/2addr v9, v12

    .line 308
    if-gez v9, :cond_5

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/widget/HtcActionMode;->mHasOverflow:Z

    .line 311
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcActionMode;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 312
    .local v13, seenGroups:Landroid/util/SparseBooleanArray;
    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->clear()V

    .line 315
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v10, :cond_d

    .line 316
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 318
    .restart local v7       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 319
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    .line 320
    .local v2, groupId:I
    if-eqz v2, :cond_6

    .line 321
    const/4 v14, 0x1

    invoke-virtual {v13, v2, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 315
    .end local v2           #groupId:I
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 323
    :cond_7
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 324
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    .line 325
    .restart local v2       #groupId:I
    invoke-virtual {v13, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 326
    .local v5, inGroup:Z
    if-lez v9, :cond_9

    const/4 v6, 0x1

    .line 327
    .local v6, isAction:Z
    :goto_4
    add-int/lit8 v9, v9, -0x1

    .line 329
    if-eqz v6, :cond_a

    if-eqz v2, :cond_a

    .line 330
    const/4 v14, 0x1

    invoke-virtual {v13, v2, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 342
    :cond_8
    invoke-virtual {v7, v6}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto :goto_3

    .line 326
    .end local v6           #isAction:Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    .line 331
    .restart local v6       #isAction:Z
    :cond_a
    if-eqz v5, :cond_8

    .line 333
    const/4 v14, 0x0

    invoke-virtual {v13, v2, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 334
    const/4 v8, 0x0

    .local v8, j:I
    :goto_5
    if-ge v8, v4, :cond_8

    .line 335
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 336
    .local v1, areYouMyGroupie:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v14

    if-ne v14, v2, :cond_b

    .line 337
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 334
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 343
    .end local v1           #areYouMyGroupie:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v2           #groupId:I
    .end local v5           #inGroup:Z
    .end local v6           #isAction:Z
    .end local v8           #j:I
    :cond_c
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v14

    if-nez v14, :cond_6

    .line 344
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto :goto_3

    .line 348
    .end local v7           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_d
    return-void
.end method

.method private getLeftmostButtonIndex()I
    .locals 4

    .prologue
    .line 977
    const/4 v2, 0x0

    .line 978
    .local v2, leftmostButtonIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 979
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 980
    .local v0, buttonContainer:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 981
    move v2, v1

    .line 985
    .end local v0           #buttonContainer:Landroid/view/View;
    :cond_0
    return v2

    .line 978
    .restart local v0       #buttonContainer:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getRightmostButtonIndex()I
    .locals 4

    .prologue
    .line 965
    const/4 v2, 0x0

    .line 966
    .local v2, rightmostButtonIndex:I
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 967
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 968
    .local v0, buttonContainer:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 969
    move v2, v1

    .line 973
    .end local v0           #buttonContainer:Landroid/view/View;
    :cond_0
    return v2

    .line 966
    .restart local v0       #buttonContainer:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private hideSearchBox()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 1176
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v4, 0x20200e3

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1177
    .local v2, contentHolderLP:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1178
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1179
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v4, 0x20200e1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1180
    .local v0, bkgHolder:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1187
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mSerachBoxContainerLP:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1199
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1200
    return-void

    .line 1192
    :cond_0
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1193
    invoke-virtual {v0, v7, v6, v7, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1194
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1195
    .local v1, centerLayoutLP:Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1196
    const/high16 v3, 0x3f80

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method private setupDropDown()V
    .locals 4

    .prologue
    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, dropDown:Lcom/htc/widget/DropDownList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 595
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x20200e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #dropDown:Lcom/htc/widget/DropDownList;
    check-cast v0, Lcom/htc/widget/DropDownList;

    .line 596
    .restart local v0       #dropDown:Lcom/htc/widget/DropDownList;
    const/16 v2, -0xd

    invoke-virtual {v0, v2}, Lcom/htc/widget/DropDownList;->setDropDownVerticalOffset(I)V

    .line 598
    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/htc/widget/DropDownList;->setDropDownWidth(I)V

    .line 599
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionMode;->isInitDropDown:Z

    if-nez v2, :cond_0

    .line 600
    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v0, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 601
    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v0, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 604
    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMaxDropDownHieghtInPort:I

    invoke-virtual {v0, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumHeight(I)V

    .line 594
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
    :cond_1
    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMaxDropDownHieghtInLand:I

    invoke-virtual {v0, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumHeight(I)V

    goto :goto_1

    .line 608
    :cond_2
    return-void
.end method

.method private setupSearchBox()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x3

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 1203
    const-string v4, "HtcActionBar"

    const-string v5, "setupSearchBox"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v4}, Lcom/htc/widget/SearchBoxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1207
    .local v3, searchBoxLP:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v5, 0x20200e3

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1208
    .local v2, contentHolderLP:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1210
    .local v1, centerLayoutLP:Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    iget v4, p0, Lcom/htc/widget/HtcActionMode;->mFourButtonSearchBoxWidth:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1220
    :cond_0
    :goto_0
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1221
    const/16 v4, 0x33

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1225
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v5, 0x20200e1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1226
    .local v0, bkgHolder:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v10, :cond_4

    .line 1228
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mSerachBoxContainerLP:Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1229
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mSerachBoxContainerLP:Landroid/widget/LinearLayout$LayoutParams;

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1230
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1231
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1234
    const v4, 0x20200db

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1235
    const v4, 0x20200de

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1236
    const v4, 0x20200e8

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1237
    const v4, 0x20200e9

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1253
    :goto_1
    return-void

    .line 1211
    .end local v0           #bkgHolder:Landroid/widget/LinearLayout;
    :cond_1
    iget v4, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    if-ne v4, v9, :cond_2

    iget v4, p0, Lcom/htc/widget/HtcActionMode;->mThreeButtonSearchBoxWidth:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 1212
    :cond_2
    iget v4, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget v4, p0, Lcom/htc/widget/HtcActionMode;->mTwoButtonSearchBoxWidth:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 1213
    :cond_3
    iget v4, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    if-ne v4, v10, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcActionMode;->mOneButtonSearchBoxWidth:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 1244
    .restart local v0       #bkgHolder:Landroid/widget/LinearLayout;
    :cond_4
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mSerachBoxContainerLP:Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1245
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mSerachBoxContainerLP:Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1246
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mSerachBoxContainerLP:Landroid/widget/LinearLayout$LayoutParams;

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1247
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lcom/htc/widget/HtcActionMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcActionMode;->mMaxAppButtonWidth:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1248
    const/4 v4, 0x0

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1249
    const/16 v4, 0xa

    const/16 v5, 0xa

    invoke-virtual {v0, v4, v9, v5, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1
.end method

.method private updateButtonsBkg(IZ)V
    .locals 14
    .parameter "buttonIndex"
    .parameter "isOnShowButton"

    .prologue
    .line 1000
    add-int/lit8 v3, p1, -0x1

    .line 1001
    .local v3, leftButtonIndex:I
    add-int/lit8 v7, p1, 0x1

    .line 1002
    .local v7, rightButtonIndex:I
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->getRightmostButtonIndex()I

    move-result v9

    .line 1004
    .local v9, rightmostButtonIndex:I
    if-ltz v3, :cond_3

    .line 1005
    move v1, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_3

    .line 1006
    iget-object v10, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1007
    .local v4, leftLayout:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    .line 1008
    const v10, 0x20200e1

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1009
    .local v0, bkgHolderView:Landroid/view/View;
    iget v10, p0, Lcom/htc/widget/HtcActionMode;->mTitlebarCenterBkgResId:I

    if-eqz v10, :cond_2

    if-eqz p2, :cond_2

    if-eq v9, v3, :cond_2

    iget v10, p0, Lcom/htc/widget/HtcActionMode;->mTitlebarCenterBkgResId:I

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1016
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1017
    .local v6, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, 0x0

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1018
    const/4 v10, 0x2

    const/4 v11, 0x5

    const/4 v12, 0x2

    const/4 v13, 0x3

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 1019
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 1005
    .end local v0           #bkgHolderView:Landroid/view/View;
    .end local v6           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1011
    .restart local v0       #bkgHolderView:Landroid/view/View;
    :cond_2
    iget v10, p0, Lcom/htc/widget/HtcActionMode;->mTitlebarRightBkgResId:I

    if-eqz v10, :cond_0

    if-nez p2, :cond_0

    if-ne v9, v1, :cond_0

    .line 1013
    const/4 v10, 0x2

    const/4 v11, 0x5

    const/4 v12, 0x2

    const/4 v13, 0x3

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 1024
    .end local v0           #bkgHolderView:Landroid/view/View;
    .end local v1           #i:I
    .end local v4           #leftLayout:Landroid/view/View;
    :cond_3
    const/4 v2, 0x0

    .line 1026
    .local v2, isHasRightButtonVisible:Z
    const/4 v10, 0x3

    if-gt v7, v10, :cond_5

    if-eqz p2, :cond_5

    .line 1027
    move v1, v7

    .restart local v1       #i:I
    :goto_1
    const/4 v10, 0x3

    if-gt v1, v10, :cond_4

    .line 1028
    iget-object v10, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1029
    .local v8, rightLayout:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_6

    .line 1030
    const/4 v2, 0x1

    .line 1034
    .end local v8           #rightLayout:Landroid/view/View;
    :cond_4
    iget-object v10, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    const v11, 0x20200e1

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1035
    .restart local v0       #bkgHolderView:Landroid/view/View;
    iget v10, p0, Lcom/htc/widget/HtcActionMode;->mTitlebarCenterBkgResId:I

    if-eqz v10, :cond_7

    if-eqz v2, :cond_7

    .line 1037
    const/4 v10, 0x2

    const/4 v11, 0x5

    const/4 v12, 0x2

    const/4 v13, 0x3

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 1044
    .end local v0           #bkgHolderView:Landroid/view/View;
    .end local v1           #i:I
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->getLeftmostButtonIndex()I

    move-result v5

    .line 1054
    .local v5, leftmostButtonIndex:I
    return-void

    .line 1027
    .end local v5           #leftmostButtonIndex:I
    .restart local v1       #i:I
    .restart local v8       #rightLayout:Landroid/view/View;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1038
    .end local v8           #rightLayout:Landroid/view/View;
    .restart local v0       #bkgHolderView:Landroid/view/View;
    :cond_7
    iget v10, p0, Lcom/htc/widget/HtcActionMode;->mTitlebarRightBkgResId:I

    if-eqz v10, :cond_5

    if-nez v2, :cond_5

    .line 1040
    const/4 v10, 0x2

    const/4 v11, 0x5

    const/4 v12, 0x2

    const/4 v13, 0x3

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 501
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@clearActionBar "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/widget/HtcActionMode;->mIsMenuButtonClicked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iput v5, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    .line 503
    iput-boolean v5, p0, Lcom/htc/widget/HtcActionMode;->mIsSearchBoxEnabled:Z

    .line 505
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/SearchBoxView;->setVisibility(I)V

    .line 506
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 507
    .local v0, containerLP:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x46

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 508
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 509
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->hideSearchBox()V

    .line 510
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->disableSearchBox()V

    .line 512
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 513
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/widget/HtcActionMode;->mIsMenuEnabled:Z

    if-nez v2, :cond_1

    .line 514
    :cond_0
    invoke-virtual {p0, v1, v5}, Lcom/htc/widget/HtcActionMode;->showActionModeButton(IZ)V

    .line 515
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonDropDownAdapter(ILandroid/widget/ListAdapter;)V

    .line 516
    invoke-virtual {p0, v1, v5}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonMode(II)V

    .line 521
    :goto_1
    invoke-virtual {p0, v1, v5}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonIcon(II)V

    .line 522
    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonText(ILjava/lang/String;)V

    .line 523
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mOnActionButtonClickListener:Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->disableMenuButton()V

    goto :goto_1

    .line 527
    :cond_2
    return-void
.end method

.method disableMenuButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 670
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonMode(II)V

    .line 671
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 672
    :cond_0
    const v1, 0x20200e7

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 673
    .local v0, menuButtonContainer:Landroid/view/View;
    iget-boolean v1, p0, Lcom/htc/widget/HtcActionMode;->mIsMenuEnabled:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    .line 674
    :cond_1
    iput-boolean v4, p0, Lcom/htc/widget/HtcActionMode;->mIsMenuEnabled:Z

    .line 675
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 676
    const-string v1, ""

    invoke-virtual {p0, v3, v1}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonText(ILjava/lang/String;)V

    .line 677
    invoke-virtual {p0, v3, v4}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonIcon(II)V

    .line 679
    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mTitlebarRightNoDivBkgResId:I

    if-eqz v1, :cond_2

    .line 684
    :goto_0
    return-void

    .line 683
    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/htc/widget/HtcActionMode;->updateButtonsBkg(IZ)V

    goto :goto_0
.end method

.method disableSearchBox()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1164
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionMode;->mIsSearchBoxEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1166
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/SearchBoxView;->setVisibility(I)V

    .line 1167
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcActionMode;->mIsSearchBoxEnabled:Z

    .line 1169
    iget v0, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcActionMode;->mTitlebarRightNoDivBkgResId:I

    if-eqz v0, :cond_1

    .line 1173
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1414
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1415
    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1288
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1289
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcActionMode;->drawDivider(Landroid/graphics/Canvas;)V

    .line 1290
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->adjustDropDownLocationAfterRotate()V

    .line 1291
    return-void
.end method

.method enableSearchBox()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1143
    invoke-virtual {p0, v6, v6}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonMode(II)V

    .line 1144
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/HtcActionMode;->mIsSearchBoxEnabled:Z

    .line 1146
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    .line 1147
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1149
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v5, 0x20200e1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/htc/widget/HtcActionMode;->adjustTitleBarBkg(Landroid/view/View;I)V

    .line 1152
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    const v5, 0x2020174

    invoke-virtual {v4, v5}, Lcom/htc/widget/SearchBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/high16 v5, 0x4190

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1153
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    const v5, 0x20200dd

    invoke-virtual {v4, v5}, Lcom/htc/widget/SearchBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 1154
    .local v1, pBar:Landroid/widget/ProgressBar;
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1155
    .local v2, pBarLP:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x1c

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1156
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1158
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v5, 0x20200e0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/HtcActionMode;->mShowSearchBoxClickListener:Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1159
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v5, 0x202009a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v3, v4

    check-cast v3, Landroid/widget/TextView;

    .line 1160
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v5, 0x2020099

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1161
    .local v0, iv:Landroid/widget/ImageView;
    return-void
.end method

.method public getActionBarButtonDropDownList(I)Lcom/htc/widget/DropDownList;
    .locals 3
    .parameter "buttonIndex"

    .prologue
    .line 958
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 959
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x20200e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 960
    .local v1, dropdown:Lcom/htc/widget/DropDownList;
    return-object v1
.end method

.method public getMenuDropDownList()Lcom/htc/widget/DropDownList;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

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
    .line 588
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mMenuItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSearchBox()Lcom/htc/widget/SearchBoxView;
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    const v8, 0x20200e8

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 1341
    const-string v3, "HtcActionBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

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

    .line 1342
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcActionMode;->isRotate:Z

    .line 1343
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1344
    .local v1, centerLayoutLP:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1347
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1348
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1352
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->setupDropDown()V

    .line 1353
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    if-eqz v3, :cond_1

    .line 1354
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v3}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1355
    iget-boolean v3, p0, Lcom/htc/widget/HtcActionMode;->mIsShowCustomView:Z

    if-nez v3, :cond_0

    .line 1356
    const v3, 0x20200db

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1357
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1358
    const v3, 0x20200de

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v4, 0x20200e1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1363
    .local v0, bkgHolder:Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->setupSearchBox()V

    .line 1392
    .end local v0           #bkgHolder:Landroid/widget/LinearLayout;
    :cond_1
    :goto_0
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1400
    .local v2, view:Landroid/view/View;
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1401
    return-void

    .line 1371
    .end local v2           #view:Landroid/view/View;
    :cond_2
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1372
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1374
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->setupDropDown()V

    .line 1375
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    if-eqz v3, :cond_1

    .line 1376
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v3}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1377
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->setupSearchBox()V

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;Landroid/view/ActionMode$Callback;Z)V
    .locals 2
    .parameter "actionMode"
    .parameter "menu"
    .parameter "callback"
    .parameter "isDisplayed"

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->clear()V

    .line 542
    iput-object p1, p0, Lcom/htc/widget/HtcActionMode;->mActionMode:Landroid/view/ActionMode;

    .line 543
    iput-object p3, p0, Lcom/htc/widget/HtcActionMode;->mActiomModeCallback:Landroid/view/ActionMode$Callback;

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcActionMode;->isContainActionItem:Z

    .line 545
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->requestFocus()Z

    .line 546
    const-string v0, "test"

    const-string v1, "onCreateActionMode "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iput-object p2, p0, Lcom/htc/widget/HtcActionMode;->mMenu:Landroid/view/Menu;

    .line 548
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionMode;->isGoogleAPISupported:Z

    if-eqz v0, :cond_0

    if-nez p4, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcActionMode;->constructHtcActionMode(Landroid/view/Menu;)V

    .line 551
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->requestLayout()V

    .line 1262
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1263
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->adjustDropDownLocationAfterRotate()V

    .line 1264
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const v8, 0x20200e0

    const v7, 0x20200df

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 198
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcActionMode;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mBaseBkgContainer:Landroid/widget/LinearLayout;

    .line 199
    const v3, 0x20200db

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mAppButtonContainer:Landroid/widget/RelativeLayout;

    .line 200
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    .line 201
    const v3, 0x20200dc

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mBackButton:Landroid/widget/LinearLayout;

    .line 202
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v4, 0x20200e2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/SearchBoxView;

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    .line 203
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mSerachBoxContainerLP:Landroid/widget/LinearLayout$LayoutParams;

    .line 205
    const v3, 0x20200e7

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 206
    .local v2, menuLayout:Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/DropDownList;

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    .line 208
    const v3, 0x20200de

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mCenterLayout:Landroid/widget/LinearLayout;

    .line 210
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    const v4, 0x20200e5

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    const v4, 0x20200e6

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v3, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;-><init>(Lcom/htc/widget/HtcActionMode;)V

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mOnActionButtonClickListener:Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;

    .line 216
    new-instance v3, Lcom/htc/widget/HtcActionMode$OnDropDownListItemClickListener;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcActionMode$OnDropDownListItemClickListener;-><init>(Lcom/htc/widget/HtcActionMode;)V

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mOnDropDownListItemClickListener:Lcom/htc/widget/HtcActionMode$OnDropDownListItemClickListener;

    .line 217
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/DropDownList;

    .line 219
    .local v0, dropdown:Lcom/htc/widget/DropDownList;
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mOnActionButtonClickListener:Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/widget/DropDownList;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mOnDropDownListItemClickListener:Lcom/htc/widget/HtcActionMode$OnDropDownListItemClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/widget/DropDownList;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 221
    invoke-virtual {v0, v5}, Lcom/htc/widget/DropDownList;->setDropDownEnabled(Z)V

    .line 222
    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->syncDropDownListShownStatus()V

    .line 223
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v0           #dropdown:Lcom/htc/widget/DropDownList;
    :cond_0
    new-instance v3, Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;-><init>(Lcom/htc/widget/HtcActionMode;)V

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mShowSearchBoxClickListener:Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;

    .line 230
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->setupDropDown()V

    .line 231
    iput-boolean v6, p0, Lcom/htc/widget/HtcActionMode;->isInitDropDown:Z

    .line 233
    iget-object v3, p0, Lcom/htc/widget/HtcActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcActionMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 235
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->applyDefaultStyle()V

    .line 237
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v6, 0x20200e0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1425
    const/16 v2, 0x52

    if-ne p1, v2, :cond_2

    .line 1426
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->dismissDropDown()V

    .line 1427
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/widget/HtcActionMode;->mIsMenuEnabled:Z

    if-eqz v2, :cond_0

    .line 1428
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonModeList:Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1429
    .local v1, menuButtonMode:I
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->getPopupWindow()Lcom/htc/widget/PopupBubbleWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->showDropDown()V

    .line 1456
    .end local v1           #menuButtonMode:I
    :cond_0
    :goto_0
    return v4

    .line 1430
    .restart local v1       #menuButtonMode:I
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0

    .line 1433
    .end local v1           #menuButtonMode:I
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 1434
    iput-boolean v4, p0, Lcom/htc/widget/HtcActionMode;->isDismissDropDownOnBackKey:Z

    .line 1435
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->dismissDropDown()V

    .line 1436
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1437
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 1438
    iput-boolean v3, p0, Lcom/htc/widget/HtcActionMode;->isDismissDropDownOnBackKey:Z

    .line 1440
    :cond_3
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionMode;->isDismissDropDownOnBackKey:Z

    if-eqz v2, :cond_4

    move v4, v3

    goto :goto_0

    .line 1441
    :cond_4
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    if-eqz v2, :cond_0

    .line 1442
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v2}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1444
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/htc/widget/SearchBoxView;->setVisibility(I)V

    .line 1445
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1446
    .local v0, containerLP:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x46

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1447
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1448
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->hideSearchBox()V

    .line 1449
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/DropDownList;

    invoke-virtual {v2, v4}, Lcom/htc/widget/DropDownList;->setIsGainFocusAndPerformClick(Z)V

    .line 1450
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v5, p0, Lcom/htc/widget/HtcActionMode;->mShowSearchBoxClickListener:Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1451
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionMode;->mIsDispatchBackKey:Z

    if-nez v2, :cond_5

    move v2, v3

    :goto_1
    move v4, v2

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1
.end method

.method public onPrepareActionMode(Landroid/view/Menu;Z)V
    .locals 6
    .parameter "menu"
    .parameter "isDisplayed"

    .prologue
    const/4 v5, 0x2

    .line 565
    const-string v2, "HtcActionBar"

    const-string v3, "before onPrepareActionMode "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->clearActionModeButton()V

    .line 567
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/HtcActionMode;->mIsMenuButtonClicked:Z

    .line 568
    const-string v2, "HtcActionBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareActionBar "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionMode;->isGoogleAPISupported:Z

    if-eqz v2, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v2

    if-nez v2, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcActionMode;->constructHtcActionMode(Landroid/view/Menu;)V

    .line 574
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 576
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v2}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 577
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->setupSearchBox()V

    .line 580
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/HtcActionMode;->getRightmostButtonIndex()I

    move-result v0

    .line 581
    .local v0, rightmostButtonIndex:I
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 582
    .local v1, rightmostButtonLayout:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/16 v3, 0x4b

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 583
    const v2, 0x20200e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public recoveryMenuContent(Landroid/view/Menu;)V
    .locals 13
    .parameter "menu"

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 410
    :goto_0
    return-void

    .line 367
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v9, p0, Lcom/htc/widget/HtcActionMode;->mMenuItemList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_9

    .line 368
    iget-object v9, p0, Lcom/htc/widget/HtcActionMode;->mMenuItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 369
    .local v3, mi:Lcom/android/internal/view/menu/MenuItemImpl;
    const/4 v6, 0x0

    .line 370
    .local v6, showAsAction:I
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v9

    if-eqz v9, :cond_5

    or-int/lit8 v6, v6, 0x1

    .line 372
    :cond_1
    :goto_2
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v9

    if-eqz v9, :cond_2

    or-int/lit8 v6, v6, 0x4

    .line 375
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 376
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

    .line 377
    .local v8, subMenu:Landroid/view/SubMenu;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    .line 378
    .local v5, oldSubMenu:Landroid/view/SubMenu;
    const/4 v7, 0x0

    .line 379
    .local v7, subItemShowAsAction:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    invoke-interface {v5}, Landroid/view/SubMenu;->size()I

    move-result v9

    if-ge v2, v9, :cond_7

    .line 380
    invoke-interface {v5, v2}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 381
    .local v4, oldSubItem:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v9

    if-eqz v9, :cond_6

    or-int/lit8 v7, v7, 0x1

    .line 383
    :cond_3
    :goto_4
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v9

    if-eqz v9, :cond_4

    or-int/lit8 v7, v7, 0x4

    .line 384
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

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 371
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

    .line 382
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

    .line 395
    .end local v4           #oldSubItem:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v9

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 399
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

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 397
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

    .line 409
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
    .line 867
    .local p2, adapter:Landroid/widget/ListAdapter;,"TT;"
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonModeList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 868
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 869
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x20200e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 870
    .local v1, dropDown:Lcom/htc/widget/DropDownList;
    if-eqz v1, :cond_0

    .line 871
    invoke-virtual {v1, p2}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 872
    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 873
    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 876
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
    .line 883
    .local p2, adapter:Landroid/widget/ListAdapter;,"TT;"
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonModeList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 884
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 885
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x20200e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 886
    .local v1, dropDown:Lcom/htc/widget/DropDownList;
    if-eqz v1, :cond_0

    .line 887
    invoke-virtual {v1, p2}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 888
    if-eqz p3, :cond_1

    .line 889
    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 890
    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 897
    .end local v0           #buttonContainer:Landroid/view/View;
    .end local v1           #dropDown:Lcom/htc/widget/DropDownList;
    :cond_0
    :goto_0
    return-void

    .line 892
    .restart local v0       #buttonContainer:Landroid/view/View;
    .restart local v1       #dropDown:Lcom/htc/widget/DropDownList;
    :cond_1
    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 893
    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    goto :goto_0
.end method

.method setActionBarButtonDropDownExpandableAdapter(ILandroid/widget/ExpandableListAdapter;)V
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
    .line 1991
    .local p2, adapter:Landroid/widget/ExpandableListAdapter;,"TT;"
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonModeList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1992
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1993
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x20200e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 1994
    .local v1, dropdown:Lcom/htc/widget/DropDownList;
    if-eqz v1, :cond_0

    .line 1995
    invoke-virtual {v1, p2}, Lcom/htc/widget/DropDownList;->setExpandableAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 1996
    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 1997
    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 2001
    :cond_0
    return-void

    .line 2000
    .end local v0           #buttonContainer:Landroid/view/View;
    .end local v1           #dropdown:Lcom/htc/widget/DropDownList;
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "DropDown List mode is not HtcActionBar.TWOLEVEL_DROPDOWN_MODE"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method setActionBarButtonDropDownExpandableAdapter(ILandroid/widget/ExpandableListAdapter;Z)V
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
    .line 2005
    .local p2, adapter:Landroid/widget/ExpandableListAdapter;,"TT;"
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonModeList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2006
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2007
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x20200e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 2008
    .local v1, dropdown:Lcom/htc/widget/DropDownList;
    if-eqz v1, :cond_0

    .line 2009
    invoke-virtual {v1, p2}, Lcom/htc/widget/DropDownList;->setExpandableAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 2010
    if-eqz p3, :cond_1

    .line 2011
    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 2012
    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 2020
    :cond_0
    :goto_0
    return-void

    .line 2014
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v3, p0, Lcom/htc/widget/HtcActionMode;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 2015
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v3, p0, Lcom/htc/widget/HtcActionMode;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    goto :goto_0

    .line 2019
    .end local v0           #buttonContainer:Landroid/view/View;
    .end local v1           #dropdown:Lcom/htc/widget/DropDownList;
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "DropDown List mode is not HtcActionBar.TWOLEVEL_DROPDOWN_MODE"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setActionBarButtonEnabled(IZ)V
    .locals 12
    .parameter "buttonIndex"
    .parameter "isEnabled"

    .prologue
    const v11, 0x20200e0

    const v10, 0x202009a

    const v9, 0x2020099

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 921
    iget-object v5, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 922
    .local v0, buttonContainer:Landroid/view/View;
    if-nez p2, :cond_2

    .line 923
    const-string v5, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disable Button "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 925
    .local v1, dropdown:Lcom/htc/widget/DropDownList;
    invoke-virtual {v1, v8}, Lcom/htc/widget/DropDownList;->setClickable(Z)V

    .line 926
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 927
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v4, v5

    check-cast v4, Landroid/widget/TextView;

    .line 928
    .local v4, tv:Landroid/widget/TextView;
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 929
    const v5, -0x7fb3b3b4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 930
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 931
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 932
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 933
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    const/16 v5, 0x80

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 934
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcActionMode;->invalidate()V

    .line 947
    :cond_1
    :goto_0
    return-void

    .line 936
    .end local v1           #dropdown:Lcom/htc/widget/DropDownList;
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 937
    .restart local v1       #dropdown:Lcom/htc/widget/DropDownList;
    invoke-virtual {v1, v6}, Lcom/htc/widget/DropDownList;->setClickable(Z)V

    .line 938
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 939
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v4, v5

    check-cast v4, Landroid/widget/TextView;

    .line 940
    .restart local v4       #tv:Landroid/widget/TextView;
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 941
    const v5, -0xb3b3b4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 942
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 943
    .restart local v3       #iv:Landroid/widget/ImageView;
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 944
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 945
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
    .line 813
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 814
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x2020099

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 815
    .local v1, iv:Landroid/widget/ImageView;
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 816
    return-void
.end method

.method public setActionBarButtonIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "buttonIndex"
    .parameter "drawable"

    .prologue
    .line 823
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 824
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x2020099

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 825
    .local v1, iv:Landroid/widget/ImageView;
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 826
    return-void
.end method

.method public setActionBarButtonMode(II)V
    .locals 6
    .parameter "buttonIndex"
    .parameter "mode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 904
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 905
    .local v0, buttonContainer:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonModeList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 906
    const v2, 0x20200e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 907
    .local v1, dropdown:Lcom/htc/widget/DropDownList;
    if-eqz p2, :cond_2

    .line 908
    invoke-virtual {v1, v4}, Lcom/htc/widget/DropDownList;->setDropDownEnabled(Z)V

    .line 909
    invoke-virtual {v1, p2}, Lcom/htc/widget/DropDownList;->setMode(I)V

    .line 910
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4}, Lcom/htc/widget/DropDownList;->setClickable(Z)V

    .line 911
    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionMode;->isGoogleAPISupported:Z

    if-nez v2, :cond_1

    invoke-virtual {v1, v5}, Lcom/htc/widget/DropDownList;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 912
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    :goto_0
    return-void

    .line 913
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
    .line 853
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonModeList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 855
    iget-boolean v2, p0, Lcom/htc/widget/HtcActionMode;->mIsMenuEnabled:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 857
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x20200e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/DropDownList;

    .line 858
    .local v1, dropDown:Lcom/htc/widget/DropDownList;
    invoke-virtual {v1, p2}, Lcom/htc/widget/DropDownList;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setActionBarButtonText(II)V
    .locals 3
    .parameter "buttonIndex"
    .parameter "resId"

    .prologue
    .line 843
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 844
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x202009a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    .line 845
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 846
    return-void
.end method

.method public setActionBarButtonText(ILjava/lang/String;)V
    .locals 3
    .parameter "buttonIndex"
    .parameter "text"

    .prologue
    .line 833
    iget-object v2, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 834
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x202009a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    .line 835
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    return-void
.end method

.method public setIsDispatchBackKeyEvent(Z)V
    .locals 0
    .parameter "isDispatch"

    .prologue
    .line 1105
    iput-boolean p1, p0, Lcom/htc/widget/HtcActionMode;->mIsDispatchBackKey:Z

    .line 1106
    return-void
.end method

.method public setMainTitle(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 709
    const v1, 0x2020091

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 710
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 711
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 712
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 699
    const v1, 0x2020091

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 700
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 702
    return-void
.end method

.method public setMenuDropDownAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
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
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 623
    invoke-virtual {p0, v3, v2}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonMode(II)V

    .line 624
    const v1, 0x20200e7

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 625
    .local v0, menuButtonContainer:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v1, :cond_1

    .line 626
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1, p1}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 627
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 628
    iput-boolean v2, p0, Lcom/htc/widget/HtcActionMode;->mIsMenuEnabled:Z

    .line 629
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    .line 631
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 632
    const v1, 0x20200e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/htc/widget/HtcActionMode;->adjustTitleBarBkg(Landroid/view/View;I)V

    .line 634
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 635
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 638
    :cond_1
    return-void
.end method

.method public setMenuDropDownAdapter(Landroid/widget/ListAdapter;Z)V
    .locals 4
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
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 646
    invoke-virtual {p0, v3, v2}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonMode(II)V

    .line 647
    const v1, 0x20200e7

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 648
    .local v0, menuButtonContainer:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v1, :cond_1

    .line 649
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1, p1}, Lcom/htc/widget/DropDownList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 650
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 651
    iput-boolean v2, p0, Lcom/htc/widget/HtcActionMode;->mIsMenuEnabled:Z

    .line 652
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    .line 654
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 655
    const v1, 0x20200e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/htc/widget/HtcActionMode;->adjustTitleBarBkg(Landroid/view/View;I)V

    .line 657
    if-eqz p2, :cond_2

    .line 658
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 659
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 666
    :cond_1
    :goto_0
    return-void

    .line 661
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 662
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    goto :goto_0
.end method

.method setMenuDropDownExpandableAdapter(Landroid/widget/ExpandableListAdapter;)V
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

    .line 2025
    invoke-virtual {p0, v3, v2}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonMode(II)V

    .line 2026
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v1, :cond_1

    .line 2027
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcActionMode;->mIsMenuEnabled:Z

    .line 2028
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setMode(I)V

    .line 2029
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1, p1}, Lcom/htc/widget/DropDownList;->setExpandableAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 2030
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 2031
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 2032
    const v1, 0x20200e7

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2033
    .local v0, menuButtonContainer:Landroid/view/View;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2034
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2035
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    .line 2036
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2037
    const v1, 0x20200e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/htc/widget/HtcActionMode;->adjustTitleBarBkg(Landroid/view/View;I)V

    .line 2038
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 2039
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 2042
    .end local v0           #menuButtonContainer:Landroid/view/View;
    :cond_1
    return-void
.end method

.method setMenuDropDownExpandableAdapter(Landroid/widget/ExpandableListAdapter;Z)V
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

    .line 2046
    invoke-virtual {p0, v3, v2}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonMode(II)V

    .line 2047
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    if-eqz v1, :cond_1

    .line 2048
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcActionMode;->mIsMenuEnabled:Z

    .line 2049
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setMode(I)V

    .line 2050
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    invoke-virtual {v1, p1}, Lcom/htc/widget/DropDownList;->setExpandableAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 2051
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 2052
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 2053
    const v1, 0x20200e7

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2054
    .local v0, menuButtonContainer:Landroid/view/View;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2055
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2056
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    .line 2057
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2058
    const v1, 0x20200e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/htc/widget/HtcActionMode;->adjustTitleBarBkg(Landroid/view/View;I)V

    .line 2059
    if-eqz p2, :cond_2

    .line 2060
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 2061
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mActionBarButtonDropDownWithControlWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    .line 2068
    .end local v0           #menuButtonContainer:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 2063
    .restart local v0       #menuButtonContainer:Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMaxActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMaximumWidth(I)V

    .line 2064
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    iget v2, p0, Lcom/htc/widget/HtcActionMode;->mMinActionBarButtonDropDownWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList;->setDropDownMinimumWidth(I)V

    goto :goto_0
.end method

.method public setMenuDropDownFocusable(Z)V
    .locals 2
    .parameter "focusable"

    .prologue
    .line 1890
    iput-boolean p1, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDownFocusable:Z

    .line 1891
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDownFocusable:Z

    if-nez v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList;->setIsGainFocusOnClick(Z)V

    .line 1894
    :cond_0
    return-void
.end method

.method public setNotificationBubbleText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 1071
    const v1, 0x20200e9

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1072
    .local v0, ball:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1073
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    :cond_0
    return-void
.end method

.method setOnShowSearchBoxListener(Lcom/htc/widget/HtcActionMode$OnShowSearchBoxListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/htc/widget/HtcActionMode;->mOnShowSearchBoxListener:Lcom/htc/widget/HtcActionMode$OnShowSearchBoxListener;

    .line 1119
    return-void
.end method

.method public setSearchBoxButtonIcon(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 1126
    if-nez p1, :cond_0

    .line 1129
    :goto_0
    return-void

    .line 1127
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v2, 0x2020099

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1128
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setSearchBoxButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    .line 1136
    if-nez p1, :cond_0

    .line 1139
    :goto_0
    return-void

    .line 1137
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v2, 0x2020099

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1138
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method setSearchBoxButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "onClickListner"

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mButtonModeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcActionMode;->mIsSearchBoxEnabled:Z

    if-eqz v0, :cond_0

    .line 1110
    iput-object p1, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxListener:Landroid/view/View$OnClickListener;

    .line 1115
    :cond_0
    return-void
.end method

.method public setSecondaryTitle(I)V
    .locals 6
    .parameter "resId"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 737
    const v3, 0x2020091

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 738
    .local v1, mainTV:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 739
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const v3, 0x2020092

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 740
    .local v2, tv:Landroid/widget/TextView;
    if-nez p1, :cond_0

    .line 741
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 742
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 748
    :goto_0
    return-void

    .line 744
    :cond_0
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 745
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 746
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 6
    .parameter "text"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 719
    const v3, 0x2020091

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 720
    .local v1, mainTV:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 721
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const v3, 0x2020092

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 722
    .local v2, tv:Landroid/widget/TextView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 723
    :cond_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 724
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 730
    :goto_0
    return-void

    .line 726
    :cond_1
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 728
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public setupActionBarButton(IIILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "buttonIndex"
    .parameter "resId"
    .parameter "textResId"
    .parameter "onClickListner"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v0}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 806
    :goto_0
    return-void

    .line 803
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonIcon(II)V

    .line 804
    invoke-virtual {p0, p1, p3}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonText(II)V

    .line 805
    invoke-virtual {p0, p1, p4}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setupActionBarButton(IILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "buttonIndex"
    .parameter "resId"
    .parameter "text"
    .parameter "onClickListner"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v0}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 795
    :goto_0
    return-void

    .line 792
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonIcon(II)V

    .line 793
    invoke-virtual {p0, p1, p3}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonText(ILjava/lang/String;)V

    .line 794
    invoke-virtual {p0, p1, p4}, Lcom/htc/widget/HtcActionMode;->setActionBarButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public showActionModeButton(IZ)V
    .locals 5
    .parameter "buttonIndex"
    .parameter "isShow"

    .prologue
    const/4 v2, 0x0

    .line 755
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mButtonList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 756
    .local v0, view:Landroid/view/View;
    if-eqz p2, :cond_3

    .line 757
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    .line 759
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

    iget v4, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

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

    .line 760
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 761
    const v1, 0x20200e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/htc/widget/HtcActionMode;->adjustTitleBarBkg(Landroid/view/View;I)V

    .line 780
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v2

    .line 759
    goto :goto_0

    .line 764
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    if-eqz v1, :cond_4

    .line 765
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v1}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_1

    .line 769
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    if-lez v1, :cond_5

    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    .line 770
    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 771
    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mShownButtonCount:I

    if-nez v1, :cond_6

    iget v1, p0, Lcom/htc/widget/HtcActionMode;->mTitlebarRightNoDivBkgResId:I

    if-nez v1, :cond_1

    .line 777
    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/htc/widget/HtcActionMode;->updateButtonsBkg(IZ)V

    goto :goto_1
.end method

.method showNotificationBubble(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 1058
    iput-boolean p1, p0, Lcom/htc/widget/HtcActionMode;->mIsBubbleShown:Z

    .line 1059
    const v1, 0x20200e9

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1060
    .local v0, ball:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1061
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showProgressBar(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 1086
    const v1, 0x20200dd

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcActionMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 1087
    .local v0, p:Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 1088
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method showSearchBox()V
    .locals 2

    .prologue
    .line 1094
    iget-boolean v0, p0, Lcom/htc/widget/HtcActionMode;->mIsSearchBoxEnabled:Z

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;

    const v1, 0x20200e0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1098
    :cond_0
    return-void
.end method

.method public supportGoogleMenuAPI()V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcActionMode;->isGoogleAPISupported:Z

    .line 494
    return-void
.end method
