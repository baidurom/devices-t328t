.class public Lcom/htc/dialog/HtcAlertController;
.super Ljava/lang/Object;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dialog/HtcAlertController$AlertParams;,
        Lcom/htc/dialog/HtcAlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAutoLinkMask:I

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeDisabled:Z

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralDisabled:Z

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveDisabled:Z

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mHtcContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCenter:Z

.field private mTitleDivider:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 4
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v1, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingSpecified:Z

    .line 110
    iput v2, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    .line 123
    iput-boolean v3, p0, Lcom/htc/dialog/HtcAlertController;->mForceInverseBackground:Z

    .line 128
    iput v2, p0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    .line 139
    iput-boolean v3, p0, Lcom/htc/dialog/HtcAlertController;->mTitleDivider:Z

    .line 140
    iput-boolean v1, p0, Lcom/htc/dialog/HtcAlertController;->mTitleCenter:Z

    .line 146
    iput v1, p0, Lcom/htc/dialog/HtcAlertController;->mAutoLinkMask:I

    .line 147
    new-instance v1, Lcom/htc/dialog/HtcAlertController$1;

    invoke-direct {v1, p0}, Lcom/htc/dialog/HtcAlertController$1;-><init>(Lcom/htc/dialog/HtcAlertController;)V

    iput-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 198
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    .line 199
    iput-object p2, p0, Lcom/htc/dialog/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 200
    iput-object p3, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    .line 201
    new-instance v1, Lcom/htc/dialog/HtcAlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/htc/dialog/HtcAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mHandler:Landroid/os/Handler;

    .line 204
    :try_start_0
    const-string v1, "com.htc"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mHtcContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mInflater:Landroid/view/LayoutInflater;

    .line 211
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mHtcContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/dialog/HtcAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$902(Lcom/htc/dialog/HtcAlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    return p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    :goto_0
    return v2

    .line 218
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 219
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 222
    check-cast v1, Landroid/view/ViewGroup;

    .line 223
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 224
    .local v0, i:I
    :cond_2
    if-lez v0, :cond_3

    .line 225
    add-int/lit8 v0, v0, -0x1

    .line 226
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 227
    invoke-static {p0}, Lcom/htc/dialog/HtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 232
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 10
    .parameter "button"

    .prologue
    const/4 v9, 0x0

    .line 831
    const/4 v6, 0x0

    .line 832
    .local v6, weight:F
    iget-object v7, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 833
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 885
    .local v0, conf:Landroid/content/res/Configuration;
    iget-object v7, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const/high16 v8, 0x202

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 886
    .local v2, leftSpacer:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 887
    .local v3, paramsL:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 888
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 892
    iget-object v7, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x2020001

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 893
    .local v5, rightSpacer:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 894
    .local v4, paramsR:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 895
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 896
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 898
    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 22
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "popup_full_dark"

    const v21, 0x20802f0

    invoke-static/range {v19 .. v21}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    .line 906
    .local v9, fullDark:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "popup_top_dark"

    const v21, 0x20802f4

    invoke-static/range {v19 .. v21}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    .line 907
    .local v16, topDark:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "popup_center_dark"

    const v21, 0x20802ed

    invoke-static/range {v19 .. v21}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 908
    .local v6, centerDark:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "popup_bottom_dark"

    const v21, 0x20802e6

    invoke-static/range {v19 .. v21}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 909
    .local v3, bottomDark:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "popup_full_bright"

    const v21, 0x20802ef

    invoke-static/range {v19 .. v21}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 910
    .local v8, fullBright:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "popup_top_bright"

    const v21, 0x20802f3

    invoke-static/range {v19 .. v21}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    .line 911
    .local v15, topBright:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "popup_center_bright"

    const v21, 0x20802ec

    invoke-static/range {v19 .. v21}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 912
    .local v5, centerBright:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "popup_bottom_bright"

    const v21, 0x20802e4

    invoke-static/range {v19 .. v21}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 913
    .local v2, bottomBright:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "popup_bottom_medium"

    const v21, 0x20802e8

    invoke-static/range {v19 .. v21}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 914
    .local v4, bottomMedium:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "popup_center_medium"

    const v21, 0x20802ee

    invoke-static/range {v19 .. v21}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 925
    .local v7, centerMedium:I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v18, v0

    .line 926
    .local v18, views:[Landroid/view/View;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v12, v0, [Z

    .line 927
    .local v12, light:[Z
    const/4 v11, 0x0

    .line 928
    .local v11, lastView:Landroid/view/View;
    const/4 v10, 0x0

    .line 930
    .local v10, lastLight:Z
    const/4 v13, 0x0

    .line 931
    .local v13, pos:I
    if-eqz p6, :cond_0

    .line 932
    aput-object p1, v18, v13

    .line 933
    const/16 v19, 0x0

    aput-boolean v19, v12, v13

    .line 934
    add-int/lit8 v13, v13, 0x1

    .line 942
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 p2, 0x0

    .end local p2
    :cond_1
    aput-object p2, v18, v13

    .line 946
    const/16 v19, 0x1

    aput-boolean v19, v12, v13

    .line 948
    add-int/lit8 v13, v13, 0x1

    .line 949
    if-eqz p3, :cond_2

    .line 950
    aput-object p3, v18, v13

    .line 951
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mForceInverseBackground:Z

    move/from16 v19, v0

    aput-boolean v19, v12, v13

    .line 952
    add-int/lit8 v13, v13, 0x1

    .line 954
    :cond_2
    if-nez p4, :cond_3

    if-eqz p6, :cond_4

    .line 955
    :cond_3
    aput-object p7, v18, v13

    .line 956
    const/16 v19, 0x0

    aput-boolean v19, v12, v13

    .line 959
    :cond_4
    const/4 v14, 0x0

    .line 960
    .local v14, setView:Z
    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_a

    .line 961
    aget-object v17, v18, v13

    .line 962
    .local v17, v:Landroid/view/View;
    if-nez v17, :cond_5

    .line 960
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 965
    :cond_5
    if-eqz v11, :cond_6

    .line 966
    if-nez v14, :cond_8

    .line 967
    if-eqz v10, :cond_7

    move/from16 v19, v15

    :goto_2
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 971
    :goto_3
    const/4 v14, 0x1

    .line 973
    :cond_6
    move-object/from16 v11, v17

    .line 974
    aget-boolean v10, v12, v13

    goto :goto_1

    :cond_7
    move/from16 v19, v16

    .line 967
    goto :goto_2

    .line 969
    :cond_8
    if-eqz v10, :cond_9

    move/from16 v19, v5

    :goto_4
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_9
    move/from16 v19, v6

    goto :goto_4

    .line 977
    .end local v17           #v:Landroid/view/View;
    :cond_a
    if-eqz v11, :cond_c

    .line 978
    if-eqz v14, :cond_10

    .line 983
    if-eqz v10, :cond_f

    if-eqz p4, :cond_e

    .end local v4           #bottomMedium:I
    :cond_b
    :goto_5
    invoke-virtual {v11, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1016
    .end local v8           #fullBright:I
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1018
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_d

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    move/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setSelection(I)V

    .line 1023
    :cond_d
    return-void

    .restart local v4       #bottomMedium:I
    .restart local v8       #fullBright:I
    :cond_e
    move v4, v2

    .line 983
    goto :goto_5

    :cond_f
    if-nez p4, :cond_b

    move v4, v3

    goto :goto_5

    .line 987
    :cond_10
    if-eqz v10, :cond_11

    .end local v8           #fullBright:I
    :goto_7
    invoke-virtual {v11, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .restart local v8       #fullBright:I
    :cond_11
    move v8, v9

    goto :goto_7
.end method

.method private setupButtons()Z
    .locals 23

    .prologue
    .line 650
    const/4 v10, 0x0

    .line 651
    .local v10, defaultButton:Landroid/view/View;
    const/4 v6, 0x1

    .line 652
    .local v6, BIT_BUTTON_POSITIVE:I
    const/4 v4, 0x2

    .line 653
    .local v4, BIT_BUTTON_NEGATIVE:I
    const/4 v5, 0x4

    .line 654
    .local v5, BIT_BUTTON_NEUTRAL:I
    const/16 v19, 0x0

    .line 655
    .local v19, whichButtons:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    const v21, 0x202005a

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    const v21, 0x2020057

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 662
    .local v13, padding1:Landroid/view/View;
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 670
    .end local v13           #padding1:Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveDisabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x33ffffff

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setTextColor(I)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    .line 676
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    const v21, 0x2020056

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    const v21, 0x2020002

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 683
    .local v14, padding2:Landroid/view/View;
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 695
    .end local v14           #padding2:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeDisabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x106000c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setTextColor(I)V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    .line 701
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    const v21, 0x2020058

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    const v21, 0x2020059

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 708
    .local v15, padding3:Landroid/view/View;
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 723
    .end local v15           #padding3:Landroid/view/View;
    :goto_2
    move/from16 v0, v19

    if-ne v0, v6, :cond_a

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    .line 731
    :cond_2
    :goto_3
    const/4 v9, 0x0

    .line 733
    .local v9, context:Landroid/content/Context;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "com.htc"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 743
    :goto_4
    if-eqz v9, :cond_4

    .line 744
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 745
    .local v17, r:Landroid/content/res/Resources;
    if-eqz v17, :cond_4

    .line 746
    const-string/jumbo v20, "popup_bottom_left_rest"

    const-string v21, "drawable"

    const-string v22, "com.htc"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 747
    .local v12, left_bkg:I
    const-string/jumbo v20, "popup_bottom_center_rest"

    const-string v21, "drawable"

    const-string v22, "com.htc"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 748
    .local v8, center_bkg:I
    const-string/jumbo v20, "popup_bottom_right_rest"

    const-string v21, "drawable"

    const-string v22, "com.htc"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 750
    .local v18, right_bkg:I
    const-string v20, "b_button_primary"

    const v21, 0x2060066

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v9, v0, v1}, Landroid/widget/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 751
    .local v7, button_skin:Landroid/content/res/ColorStateList;
    if-eqz v12, :cond_4

    if-eqz v8, :cond_4

    if-eqz v18, :cond_4

    .line 753
    const-string/jumbo v20, "popup_bottom_left_rest"

    move-object/from16 v0, v20

    invoke-static {v9, v0, v12}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    .line 754
    const-string/jumbo v20, "popup_bottom_center_rest"

    move-object/from16 v0, v20

    invoke-static {v9, v0, v8}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 755
    const-string/jumbo v20, "popup_bottom_right_rest"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v9, v0, v1}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v18

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    const v21, 0x2020057

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 758
    .restart local v13       #padding1:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    const v21, 0x2020002

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 759
    .restart local v14       #padding2:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    const v21, 0x2020059

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 760
    .restart local v15       #padding3:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    const v21, 0x2020055

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 761
    .local v16, padding4:Landroid/view/View;
    const v20, 0x2080036

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 762
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 763
    const v20, 0x2080036

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 764
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 765
    const v20, 0x2080036

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 766
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 767
    if-eqz v16, :cond_3

    .line 768
    const v20, 0x2080036

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 769
    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 772
    :cond_3
    move/from16 v0, v19

    if-ne v0, v6, :cond_c

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x20300e9

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 826
    .end local v7           #button_skin:Landroid/content/res/ColorStateList;
    .end local v8           #center_bkg:I
    .end local v12           #left_bkg:I
    .end local v13           #padding1:Landroid/view/View;
    .end local v14           #padding2:Landroid/view/View;
    .end local v15           #padding3:Landroid/view/View;
    .end local v16           #padding4:Landroid/view/View;
    .end local v17           #r:Landroid/content/res/Resources;
    .end local v18           #right_bkg:I
    :cond_4
    :goto_5
    if-eqz v19, :cond_12

    const/16 v20, 0x1

    :goto_6
    return v20

    .line 664
    .end local v9           #context:Landroid/content/Context;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 666
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 667
    or-int v19, v19, v6

    goto/16 :goto_0

    .line 686
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 689
    if-nez v10, :cond_7

    .line 690
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 692
    :cond_7
    or-int v19, v19, v4

    goto/16 :goto_1

    .line 710
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 713
    if-nez v10, :cond_9

    .line 714
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 716
    :cond_9
    or-int v19, v19, v5

    goto/16 :goto_2

    .line 725
    :cond_a
    move/from16 v0, v19

    if-ne v0, v4, :cond_b

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 727
    :cond_b
    move/from16 v0, v19

    if-ne v0, v5, :cond_2

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 734
    .restart local v9       #context:Landroid/content/Context;
    :catch_0
    move-exception v11

    .line 735
    .local v11, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 776
    .end local v11           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7       #button_skin:Landroid/content/res/ColorStateList;
    .restart local v8       #center_bkg:I
    .restart local v12       #left_bkg:I
    .restart local v13       #padding1:Landroid/view/View;
    .restart local v14       #padding2:Landroid/view/View;
    .restart local v15       #padding3:Landroid/view/View;
    .restart local v16       #padding4:Landroid/view/View;
    .restart local v17       #r:Landroid/content/res/Resources;
    .restart local v18       #right_bkg:I
    :cond_c
    move/from16 v0, v19

    if-ne v0, v4, :cond_d

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x20300e9

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_5

    .line 780
    :cond_d
    move/from16 v0, v19

    if-ne v0, v5, :cond_e

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x20300e9

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_5

    .line 784
    :cond_e
    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x20300e9

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x20300e9

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 791
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 792
    :cond_f
    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x20300e9

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x20300e9

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 799
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 800
    :cond_10
    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x20300e9

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x20300e9

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 807
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 808
    :cond_11
    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x20300e9

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x20300e9

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x20300e9

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 818
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 819
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 826
    .end local v7           #button_skin:Landroid/content/res/ColorStateList;
    .end local v8           #center_bkg:I
    .end local v12           #left_bkg:I
    .end local v13           #padding1:Landroid/view/View;
    .end local v14           #padding2:Landroid/view/View;
    .end local v15           #padding3:Landroid/view/View;
    .end local v16           #padding4:Landroid/view/View;
    .end local v17           #r:Landroid/content/res/Resources;
    .end local v18           #right_bkg:I
    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_6
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "contentPanel"

    .prologue
    const v5, 0x2020050

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 619
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 620
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 623
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x2020051

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    .line 624
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 630
    iget v0, p0, Lcom/htc/dialog/HtcAlertController;->mAutoLinkMask:I

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/dialog/HtcAlertController;->mAutoLinkMask:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 638
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 639
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 640
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 644
    :cond_3
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 11
    .parameter "topPanel"

    .prologue
    const v10, 0x202004b

    const/4 v5, 0x0

    const/16 v9, 0x8

    .line 552
    const/4 v1, 0x1

    .line 554
    .local v1, hasTitle:Z
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 556
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 559
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 563
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 615
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 565
    :cond_1
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v0, 0x1

    .line 567
    .local v0, hasTextTitle:Z
    :goto_1
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x202004c

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    .line 568
    if-eqz v0, :cond_7

    .line 571
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x202004d

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    .line 573
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    instance-of v4, v4, Lcom/android/internal/widget/DialogTitle;

    if-eqz v4, :cond_2

    .line 574
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    check-cast v4, Lcom/android/internal/widget/DialogTitle;

    invoke-virtual {v4}, Lcom/android/internal/widget/DialogTitle;->setNotChangeTextSize()V

    .line 577
    :cond_2
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/dialog/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    iget v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    if-lez v4, :cond_5

    .line 584
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget v6, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 585
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 601
    :cond_3
    :goto_2
    iget-boolean v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleCenter:Z

    if-eqz v4, :cond_0

    .line 602
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 603
    .local v3, titleTemplate:Landroid/widget/LinearLayout;
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .end local v0           #hasTextTitle:Z
    .end local v3           #titleTemplate:Landroid/widget/LinearLayout;
    :cond_4
    move v0, v5

    .line 565
    goto :goto_1

    .line 586
    .restart local v0       #hasTextTitle:Z
    :cond_5
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 587
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/dialog/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 588
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 589
    :cond_6
    iget v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    if-nez v4, :cond_3

    .line 594
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 598
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 609
    :cond_7
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 610
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 612
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 17

    .prologue
    .line 465
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v14, 0x202004f

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 466
    .local v3, contentPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/dialog/HtcAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 467
    invoke-direct/range {p0 .. p0}, Lcom/htc/dialog/HtcAlertController;->setupButtons()Z

    move-result v5

    .line 469
    .local v5, hasButtons:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v14, 0x202004a

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 475
    .local v2, topPanel:Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    .line 476
    .local v11, htcContext:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/dialog/HtcAlertController;->mHtcContext:Landroid/content/Context;

    .line 478
    const/4 v1, 0x0

    sget-object v14, Lcom/htc/R$styleable;->AlertDialog:[I

    const v15, 0x2010078

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v1, v14, v15, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 482
    .local v6, a:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/dialog/HtcAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v7

    .line 483
    .local v7, hasTitle:Z
    if-nez v7, :cond_0

    .line 484
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 486
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v14, 0x2020054

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 487
    .local v8, buttonPanel:Landroid/view/View;
    if-nez v5, :cond_1

    if-nez v7, :cond_1

    .line 488
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 491
    :cond_1
    const/4 v4, 0x0

    .line 492
    .local v4, customPanel:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v14, 0x2020052

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #customPanel:Landroid/widget/FrameLayout;
    check-cast v4, Landroid/widget/FrameLayout;

    .line 494
    .restart local v4       #customPanel:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v14, 0x2020053

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    .line 495
    .local v9, custom:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-direct/range {v14 .. v16}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingSpecified:Z

    if-eqz v1, :cond_2

    .line 497
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingTop:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingRight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingBottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v9, v1, v14, v15, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 500
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    .line 501
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, 0x0

    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 510
    .end local v9           #custom:Landroid/widget/FrameLayout;
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 511
    .local v10, dm:Landroid/util/DisplayMetrics;
    iget v1, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v14, 0x1e0

    if-ne v1, v14, :cond_4

    iget v1, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v14, 0x320

    if-eq v1, v14, :cond_7

    :cond_4
    iget v1, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v14, 0x320

    if-ne v1, v14, :cond_5

    iget v1, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v14, 0x1e0

    if-eq v1, v14, :cond_7

    :cond_5
    iget v1, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v14, 0x400

    if-ne v1, v14, :cond_6

    iget v1, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v14, 0x258

    if-eq v1, v14, :cond_7

    :cond_6
    iget v1, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v14, 0x258

    if-ne v1, v14, :cond_8

    iget v1, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v14, 0x400

    if-ne v1, v14, :cond_8

    .line 516
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v14, 0x2020053

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    .line 517
    .restart local v9       #custom:Landroid/widget/FrameLayout;
    const v1, 0x102000d

    invoke-virtual {v9, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 519
    .local v13, prog:Landroid/view/View;
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_c

    .line 521
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v1, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 522
    .local v12, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xf

    const/4 v14, 0x0

    const/16 v15, 0xf

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v1, v14, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 523
    invoke-virtual {v13, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    if-eqz v9, :cond_8

    .line 525
    const/4 v1, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-virtual {v9, v1, v14, v15, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 537
    .end local v9           #custom:Landroid/widget/FrameLayout;
    .end local v12           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13           #prog:Landroid/view/View;
    :cond_8
    :goto_1
    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 538
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v14, 0x202004e

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    :cond_a
    move-object/from16 v1, p0

    .line 547
    invoke-direct/range {v1 .. v8}, Lcom/htc/dialog/HtcAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 548
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 549
    return-void

    .line 504
    .end local v10           #dm:Landroid/util/DisplayMetrics;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v14, 0x2020052

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 528
    .restart local v9       #custom:Landroid/widget/FrameLayout;
    .restart local v10       #dm:Landroid/util/DisplayMetrics;
    .restart local v13       #prog:Landroid/view/View;
    :cond_c
    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v1, :cond_8

    .line 529
    if-eqz v9, :cond_8

    .line 530
    const/4 v1, 0x0

    const/4 v14, 0x7

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v1, v14, v15, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_1
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 2
    .parameter "whichButton"

    .prologue
    const/4 v0, 0x0

    .line 440
    packed-switch p1, :pswitch_data_0

    .line 448
    :cond_0
    :goto_0
    return-object v0

    .line 442
    :pswitch_0
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 444
    :pswitch_1
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 446
    :pswitch_2
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 7

    .prologue
    const/high16 v4, 0x2

    const/4 v6, -0x2

    .line 238
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 240
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    invoke-static {v2}, Lcom/htc/dialog/HtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x209000d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 246
    invoke-direct {p0}, Lcom/htc/dialog/HtcAlertController;->setupView()V

    .line 248
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v3, 0x202004a

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 249
    .local v1, topPanel:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    .line 250
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 251
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_2

    .line 252
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3, v6}, Landroid/view/Window;->setLayout(II)V

    .line 259
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :goto_0
    return-void

    .line 254
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    :cond_2
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3, v6}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 258
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :cond_3
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v6, v6}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 455
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 461
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 339
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 340
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 343
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :pswitch_0
    iput-object p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 347
    iput-object p4, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 363
    :goto_0
    return-void

    .line 351
    :pswitch_1
    iput-object p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 352
    iput-object p4, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 356
    :pswitch_2
    iput-object p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 357
    iput-object p4, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 343
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonDisabled(IZ)V
    .locals 2
    .parameter "whichButton"
    .parameter "disabled"

    .prologue
    .line 369
    packed-switch p1, :pswitch_data_0

    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :pswitch_0
    iput-boolean p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveDisabled:Z

    .line 386
    :goto_0
    return-void

    .line 376
    :pswitch_1
    iput-boolean p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralDisabled:Z

    goto :goto_0

    .line 380
    :pswitch_2
    iput-boolean p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeDisabled:Z

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    .line 275
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 408
    iput p1, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    .line 409
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 410
    if-lez p1, :cond_1

    .line 411
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 412
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    if-nez p1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 422
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 430
    iput-boolean p1, p0, Lcom/htc/dialog/HtcAlertController;->mForceInverseBackground:Z

    .line 431
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 280
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "message"
    .parameter "nAutoLinkMask"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 291
    iput p2, p0, Lcom/htc/dialog/HtcAlertController;->mAutoLinkMask:I

    .line 293
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 295
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 264
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :cond_0
    return-void
.end method

.method public setTitleCenterEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/htc/dialog/HtcAlertController;->mTitleCenter:Z

    .line 398
    return-void
.end method

.method public setTitleDividerVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 392
    iput-boolean p1, p0, Lcom/htc/dialog/HtcAlertController;->mTitleDivider:Z

    .line 393
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingSpecified:Z

    .line 307
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingSpecified:Z

    .line 317
    iput p2, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingLeft:I

    .line 318
    iput p3, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingTop:I

    .line 319
    iput p4, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingRight:I

    .line 320
    iput p5, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingBottom:I

    .line 321
    return-void
.end method
