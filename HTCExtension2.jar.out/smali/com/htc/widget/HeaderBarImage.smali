.class public Lcom/htc/widget/HeaderBarImage;
.super Landroid/widget/RelativeLayout;
.source "HeaderBarImage.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HeaderBarImage$ImageSelectView;,
        Lcom/htc/widget/HeaderBarImage$ImageFrameView;
    }
.end annotation


# static fields
.field public static final ImageButton:I = 0x3

.field public static final ImageFrame:I = 0x2

.field private static final ImageFrameFromButton:I = 0x6

.field public static final ImageLabel:I = 0x1

.field public static final ImageSelect:I = 0x4

.field public static final QuickContact:I = 0x5


# instance fields
.field private backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private bubbleview:Landroid/widget/TextView;

.field private clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

.field private clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

.field private clickListenerLong:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field private currentMode:I

.field private dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

.field private final imageAlphaDisable:I

.field private final imageAlphaEnable:I

.field private imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private imageButtonSize:I

.field private imageFrameButtonSize:I

.field private imageFrameLPadding:I

.field private imageFrameSize:I

.field private imageLabelBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private imageLabelSize:I

.field private imageLabelUOffset:I

.field private imageSelectHeight:I

.field private imageSelectWidth:I

.field private imageview:Landroid/widget/ImageView;

.field private labelview:Landroid/widget/TextView;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private listFooterView:Landroid/view/View;

.field private listHeaderView:Landroid/view/View;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private popupAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private popupAdapterExp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ExpandableListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

.field private popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

.field private popupMaxWidth:I

.field private quickcontact:Lcom/htc/widget/QuickContactBadge;

.field private selectedDrawable:Landroid/graphics/drawable/Drawable;

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;

.field private skipChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelSize:I

    .line 61
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    .line 62
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    .line 63
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameButtonSize:I

    .line 65
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    .line 66
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I

    .line 68
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    .line 69
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    .line 71
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    .line 73
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    .line 74
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    .line 75
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    .line 76
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    .line 79
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    .line 448
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    .line 449
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    .line 452
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    .line 454
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 455
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerLong:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 457
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    .line 458
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    .line 461
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 462
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 465
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 466
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 468
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 955
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->onClickListener:Landroid/view/View$OnClickListener;

    .line 1012
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/widget/HeaderBarImage;->imageAlphaEnable:I

    .line 1013
    const/16 v0, 0x7f

    iput v0, p0, Lcom/htc/widget/HeaderBarImage;->imageAlphaDisable:I

    .line 99
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupMeasurement()V

    .line 100
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupEnvironment()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrset"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelSize:I

    .line 61
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    .line 62
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    .line 63
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameButtonSize:I

    .line 65
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    .line 66
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I

    .line 68
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    .line 69
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    .line 71
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    .line 73
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    .line 74
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    .line 75
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    .line 76
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    .line 79
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    .line 448
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    .line 449
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    .line 452
    iput v2, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    .line 454
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 455
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerLong:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 457
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    .line 458
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    .line 461
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 462
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 465
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 466
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 468
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 955
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->onClickListener:Landroid/view/View$OnClickListener;

    .line 1012
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/widget/HeaderBarImage;->imageAlphaEnable:I

    .line 1013
    const/16 v0, 0x7f

    iput v0, p0, Lcom/htc/widget/HeaderBarImage;->imageAlphaDisable:I

    .line 111
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupMeasurement()V

    .line 112
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupEnvironment()V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HeaderBarImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HeaderBarImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameButtonSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HeaderBarImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HeaderBarImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->enableMaskBitmap()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/widget/HeaderBarImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HeaderBarImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I

    return v0
.end method

.method private cleanPreviousWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 648
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    const-string v0, "HeaderBar"

    const-string v1, "show() clean popup window adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 654
    iput-object v2, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 661
    const-string v0, "HeaderBar"

    const-string v1, "show() clean expandable popup window adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 664
    iput-object v2, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 666
    :cond_1
    return-void
.end method

.method private enableMaskBitmap()Z
    .locals 2

    .prologue
    .line 1179
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 1181
    :cond_0
    const/4 v0, 0x0

    .line 1183
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private measureContentWidth(Landroid/widget/ExpandableListAdapter;)I
    .locals 13
    .parameter "adapter"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 923
    if-nez p1, :cond_0

    .line 950
    :goto_0
    return v3

    .line 926
    :cond_0
    const/4 v11, 0x0

    .line 927
    .local v11, maxWidth:I
    const/4 v9, 0x0

    .line 929
    .local v9, itemType:I
    const/4 v10, 0x0

    .line 931
    .local v10, itemView:Landroid/view/View;
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 932
    .local v12, widthMeasureSpec:I
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 934
    .local v8, heightMeasureSpec:I
    const/4 v1, 0x0

    .local v1, loopi:I
    invoke-interface {p1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v7

    .local v7, groupCount:I
    :goto_1
    if-ge v1, v7, :cond_2

    .line 936
    invoke-interface {p1, v1, v3, v4, v4}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 937
    invoke-virtual {v10, v12, v8}, Landroid/view/View;->measure(II)V

    .line 939
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 941
    const/4 v2, 0x0

    .local v2, loopj:I
    invoke-interface {p1, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    .local v6, childCount:I
    :goto_2
    if-ge v2, v6, :cond_1

    move-object v0, p1

    move-object v5, v4

    .line 943
    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 944
    invoke-virtual {v10, v12, v8}, Landroid/view/View;->measure(II)V

    .line 946
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 941
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 934
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #loopj:I
    .end local v6           #childCount:I
    :cond_2
    move v3, v11

    .line 950
    goto :goto_0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 878
    if-nez p1, :cond_1

    move v5, v8

    .line 918
    :cond_0
    :goto_0
    return v5

    .line 881
    :cond_1
    const/4 v5, 0x0

    .line 882
    .local v5, maxWidth:I
    const/4 v2, 0x0

    .line 883
    .local v2, itemType:I
    const/4 v6, 0x0

    .line 885
    .local v6, positionType:I
    const/4 v3, 0x0

    .line 887
    .local v3, itemView:Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 888
    .local v7, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 890
    .local v1, heightMeasureSpec:I
    const/4 v4, 0x0

    .local v4, loop:I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .local v0, adapterCount:I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 892
    invoke-interface {p1, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    .line 894
    if-eq v6, v2, :cond_2

    .line 896
    move v2, v6

    .line 897
    const/4 v3, 0x0

    .line 900
    :cond_2
    invoke-interface {p1, v4, v9, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 901
    invoke-virtual {v3, v7, v1}, Landroid/view/View;->measure(II)V

    .line 902
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 890
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 906
    :cond_3
    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 908
    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    invoke-virtual {v8, v7, v1}, Landroid/view/View;->measure(II)V

    .line 909
    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 912
    :cond_4
    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 914
    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    invoke-virtual {v8, v7, v1}, Landroid/view/View;->measure(II)V

    .line 915
    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0
.end method

.method private setupEnvironment()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 171
    const/4 v0, -0x1

    .line 172
    .local v0, layoutH:I
    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20e008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 174
    .local v1, layoutW:I
    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    if-nez v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    .line 178
    :cond_0
    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    packed-switch v3, :pswitch_data_0

    .line 203
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 208
    .local v2, lparams:Landroid/view/ViewGroup$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 209
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 211
    invoke-virtual {p0, v2}, Lcom/htc/widget/HeaderBarImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    .end local v2           #lparams:Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/htc/widget/HeaderBarImage;->setPadding(IIII)V

    .line 225
    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    if-gez v3, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    .line 228
    :cond_1
    return-void

    .line 181
    :pswitch_1
    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    iget v4, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    add-int v1, v3, v4

    .line 182
    const/4 v0, -0x1

    .line 183
    goto :goto_0

    .line 186
    :pswitch_2
    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    iget v4, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    add-int v1, v3, v4

    .line 187
    const/4 v0, -0x1

    .line 188
    goto :goto_0

    .line 191
    :pswitch_3
    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    iget v4, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    add-int v1, v3, v4

    .line 192
    const/4 v0, -0x1

    .line 193
    goto :goto_0

    .line 197
    :pswitch_4
    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameButtonSize:I

    .line 198
    const/4 v0, -0x1

    goto :goto_0

    .line 214
    :cond_2
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 178
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setupImageBubbleView()V
    .locals 8

    .prologue
    .line 268
    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 270
    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 272
    .local v3, resources:Landroid/content/res/Resources;
    const v4, 0x20e008f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 273
    .local v1, bubbleSize:I
    const v4, 0x20e00ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 275
    .local v0, bubbleMargin:I
    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x2090038

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    .line 277
    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    const-string v6, "common_notification_on"

    const v7, 0x208003d

    invoke-static {v5, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 282
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 283
    .local v2, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 284
    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 285
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 287
    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v2}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    .end local v0           #bubbleMargin:I
    .end local v1           #bubbleSize:I
    .end local v2           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private setupImageButtonMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 303
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    .line 304
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 305
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 310
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->removeAllViews()V

    .line 311
    invoke-virtual {p0, v4}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 312
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;)V

    .line 313
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setGravity(I)V

    .line 315
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    const-string v2, "common_button_small"

    const v3, 0x20803e2

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    return-void
.end method

.method private setupImageFrameButtonMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 324
    new-instance v0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HeaderBarImage$ImageFrameView;-><init>(Lcom/htc/widget/HeaderBarImage;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    .line 325
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 326
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->removeAllViews()V

    .line 327
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;)V

    .line 328
    invoke-virtual {p0, v2}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 329
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setGravity(I)V

    .line 330
    return-void
.end method

.method private setupImageFrameMode()V
    .locals 2

    .prologue
    .line 293
    new-instance v0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HeaderBarImage$ImageFrameView;-><init>(Lcom/htc/widget/HeaderBarImage;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    .line 295
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->removeAllViews()V

    .line 296
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;)V

    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 298
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setGravity(I)V

    .line 299
    return-void
.end method

.method private setupImageLabelMode()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 232
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->removeAllViews()V

    .line 233
    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 236
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x209003a

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 238
    const v1, 0x20200d6

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarImage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    .line 239
    const v1, 0x20200d5

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarImage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    .line 241
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 242
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/widget/HeaderBarTall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 248
    const-string v1, "HeaderBar"

    const-string v2, "image label reset margin for top"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 253
    .local v0, lparams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 254
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    .end local v0           #lparams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    const-string v3, "common_button_small"

    const v4, 0x20803e2

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    return-void
.end method

.method private setupImageSelectMode()V
    .locals 2

    .prologue
    .line 334
    new-instance v0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HeaderBarImage$ImageSelectView;-><init>(Lcom/htc/widget/HeaderBarImage;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    .line 336
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->removeAllViews()V

    .line 337
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;)V

    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 339
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setGravity(I)V

    .line 340
    return-void
.end method

.method private setupMeasurement()V
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 147
    .local v0, resources:Landroid/content/res/Resources;
    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelSize:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    if-gez v1, :cond_1

    .line 149
    :cond_0
    const v1, 0x20e0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelSize:I

    .line 150
    const v1, 0x20e0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    .line 151
    const v1, 0x20e0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageButtonSize:I

    .line 152
    const v1, 0x20e00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameButtonSize:I

    .line 155
    :cond_1
    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    if-gez v1, :cond_3

    .line 157
    :cond_2
    const v1, 0x20e0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    .line 158
    const v1, 0x20e0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameLPadding:I

    .line 161
    :cond_3
    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I

    if-gez v1, :cond_5

    .line 163
    :cond_4
    const v1, 0x20e00aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I

    .line 164
    const v1, 0x20e00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I

    .line 166
    :cond_5
    return-void
.end method

.method private setupQuickContactMode()V
    .locals 4

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    .line 345
    new-instance v0, Lcom/htc/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    .line 346
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    iget v3, p0, Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->removeAllViews()V

    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 350
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->addView(Landroid/view/View;)V

    .line 351
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setGravity(I)V

    .line 352
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 0
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 582
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    .line 583
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 0
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 573
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    .line 574
    return-void
.end method

.method public dismiss()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 556
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->internalDismiss()V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->internalDismiss()V

    .line 564
    :cond_1
    const-string v0, "HeaderBar"

    const-string v1, "dimiss() from external call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 988
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 990
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 992
    :cond_0
    return-void
.end method

.method public enableBackIndicator(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 999
    if-eqz p1, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1003
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080436

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1004
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->backIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public enableImageAlpha(Z)V
    .locals 2
    .parameter "alphaEnable"

    .prologue
    .line 1017
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1018
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1019
    :cond_1
    return-void

    .line 1018
    :cond_2
    const/16 v0, 0x7f

    goto :goto_0
.end method

.method public getBubbleCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getBubbleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLabelText()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQuickContact()Lcom/htc/widget/QuickContactBadge;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1170
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->quickcontact:Lcom/htc/widget/QuickContactBadge;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBubbleWindowShow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 123
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupEnvironment()V

    .line 125
    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/widget/HeaderBarTall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    const-string v1, "HeaderBar"

    const-string v2, "image label reset margin for top"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 136
    .local v0, lparams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HeaderBarImage;->imageLabelUOffset:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 137
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .end local v0           #lparams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->cleanPreviousWindow()V

    .line 383
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 384
    return-void
.end method

.method public onDismiss()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 813
    iput-boolean v4, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    .line 815
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 826
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingLeft()I

    move-result v0

    .line 827
    .local v0, paddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingRight()I

    move-result v1

    .line 830
    .local v1, paddingRight:I
    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/htc/widget/HeaderBarImage;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 831
    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/htc/widget/HeaderBarImage;->setPadding(IIII)V

    .line 833
    iget v2, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 834
    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    const v4, 0x20300e6

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 836
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v2, :cond_1

    .line 837
    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v2}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    .line 838
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 846
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    if-eqz v0, :cond_1

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->isBubbleWindowShow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 850
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 853
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 854
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    goto :goto_0

    .line 857
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_4

    .line 858
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 860
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 872
    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 3
    .parameter "adapter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 519
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 520
    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 522
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_3

    .line 529
    :cond_1
    const-string v0, "HeaderBar"

    const-string v2, "setAdapter(ExpandableListAdapter) clean another"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 539
    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 540
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 544
    :cond_3
    const-string v0, "HeaderBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdapter(ExpandableListAdapter):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return-void

    :cond_4
    move-object v0, v1

    .line 520
    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 483
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 484
    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    .line 486
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 487
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_3

    .line 493
    :cond_1
    const-string v0, "HeaderBar"

    const-string v2, "setAdapter(ListAdapter) clean another"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    .line 503
    :cond_2
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 504
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 508
    :cond_3
    const-string v0, "HeaderBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdapter(ListAdapter):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void

    :cond_4
    move-object v0, v1

    .line 484
    goto :goto_0
.end method

.method public setBubbleCount(I)V
    .locals 1
    .parameter "count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1056
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setBubbleText(Ljava/lang/String;)V

    .line 1057
    return-void
.end method

.method public setBubbleText(Ljava/lang/String;)V
    .locals 4
    .parameter "string"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1065
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1067
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageBubbleView()V

    .line 1069
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    const v0, 0x20300e2

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1073
    :cond_0
    return-void

    .line 1070
    :cond_1
    const v0, 0x20300e3

    goto :goto_0
.end method

.method public setBubbleVisibility(I)V
    .locals 2
    .parameter "visibility"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1043
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1045
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageBubbleView()V

    .line 1046
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1048
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1024
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1026
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1028
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 1030
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1033
    :cond_2
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1128
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1130
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1138
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1140
    :cond_0
    return-void
.end method

.method public setImageFromButtonToFrame(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 439
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 442
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    invoke-virtual {p0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    return-void
.end method

.method public setImageMode(I)V
    .locals 2
    .parameter "mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 394
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    if-ne v0, p1, :cond_0

    .line 433
    :goto_0
    return-void

    .line 397
    :cond_0
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    .line 398
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    .line 399
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage;->bubbleview:Landroid/widget/TextView;

    .line 401
    iput p1, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    .line 402
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupEnvironment()V

    .line 404
    packed-switch p1, :pswitch_data_0

    .line 432
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 407
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageLabelMode()V

    goto :goto_1

    .line 411
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageFrameButtonMode()V

    goto :goto_1

    .line 415
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageFrameMode()V

    goto :goto_1

    .line 419
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageButtonMode()V

    goto :goto_1

    .line 423
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupImageSelectMode()V

    goto :goto_1

    .line 427
    :pswitch_5
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->setupQuickContactMode()V

    goto :goto_1

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "resource"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1148
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1150
    :cond_0
    return-void
.end method

.method public setLabelText(I)V
    .locals 2
    .parameter "resource"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1109
    :cond_0
    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    :cond_0
    return-void
.end method

.method public setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 627
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    .line 629
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 631
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 964
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->onClickListener:Landroid/view/View$OnClickListener;

    .line 966
    iget v0, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    packed-switch v0, :pswitch_data_0

    .line 978
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 979
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 973
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 966
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 472
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 473
    return-void
.end method

.method public setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 639
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    .line 641
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V

    .line 643
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 600
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 602
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 607
    :cond_1
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 615
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerLong:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 617
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 619
    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1160
    :cond_0
    return-void
.end method

.method public show()V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 680
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage;->cleanPreviousWindow()V

    .line 682
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v5, :cond_1

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListAdapter;

    move-object v0, v5

    .line 690
    .local v0, adapter:Landroid/widget/ListAdapter;
    :goto_1
    if-eqz v0, :cond_7

    .line 692
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 693
    new-instance v5, Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 696
    const-string v5, "HeaderBar"

    const-string v6, "show() create popup window"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    if-eqz v5, :cond_2

    .line 699
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 701
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerLong:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    if-eqz v5, :cond_3

    .line 702
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerLong:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 704
    :cond_3
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->listHeaderView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->addHeaderView(Landroid/view/View;)V

    .line 705
    :cond_4
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->listFooterView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->addFooterView(Landroid/view/View;)V

    .line 707
    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 708
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 709
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v0}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 710
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v9}, Lcom/htc/widget/ListPopupBubbleWindow;->setModal(Z)V

    .line 713
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-direct {p0, v0}, Lcom/htc/widget/HeaderBarImage;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v6

    iget v7, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    .line 714
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5, v11}, Lcom/htc/widget/ListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 716
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 717
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubble:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ListPopupBubbleWindow;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 719
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingLeft()I

    move-result v2

    .line 720
    .local v2, paddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingRight()I

    move-result v3

    .line 729
    .local v3, paddingRight:I
    invoke-virtual {p0, v2, v8, v3, v8}, Lcom/htc/widget/HeaderBarImage;->setPadding(IIII)V

    .line 731
    iget v5, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    if-ne v5, v9, :cond_6

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 732
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 734
    :cond_6
    iput-boolean v8, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    .line 747
    .end local v2           #paddingLeft:I
    .end local v3           #paddingRight:I
    :cond_7
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ExpandableListAdapter;

    move-object v1, v5

    .line 749
    .local v1, adapterExp:Landroid/widget/ExpandableListAdapter;
    :cond_8
    if-eqz v1, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 754
    new-instance v5, Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 757
    const-string v5, "HeaderBar"

    const-string v6, "show() create expandable window"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    if-eqz v5, :cond_9

    .line 760
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 762
    :cond_9
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    if-eqz v5, :cond_a

    .line 763
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V

    .line 765
    :cond_a
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    if-eqz v5, :cond_b

    .line 766
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 768
    :cond_b
    new-instance v4, Lcom/htc/widget/WrapingExpandedListAdapter;

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/htc/widget/WrapingExpandedListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ExpandableListAdapter;)V

    .line 769
    .local v4, wrapAdapter:Lcom/htc/widget/WrapingExpandedListAdapter;
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 770
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 771
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 772
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v9}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setModal(Z)V

    .line 775
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-direct {p0, v4}, Lcom/htc/widget/HeaderBarImage;->measureContentWidth(Landroid/widget/ExpandableListAdapter;)I

    move-result v6

    iget v7, p0, Lcom/htc/widget/HeaderBarImage;->popupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setContentWidth(I)V

    .line 776
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5, v11}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 778
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    .line 779
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getExpandableListView()Lcom/htc/widget/HtcExpandableListView;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcExpandableListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 781
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingLeft()I

    move-result v2

    .line 782
    .restart local v2       #paddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage;->getPaddingRight()I

    move-result v3

    .line 791
    .restart local v3       #paddingRight:I
    invoke-virtual {p0, v2, v8, v3, v8}, Lcom/htc/widget/HeaderBarImage;->setPadding(IIII)V

    .line 793
    iget v5, p0, Lcom/htc/widget/HeaderBarImage;->currentMode:I

    if-ne v5, v9, :cond_c

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    if-eqz v5, :cond_c

    .line 794
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage;->labelview:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 796
    :cond_c
    iput-boolean v8, p0, Lcom/htc/widget/HeaderBarImage;->skipChange:Z

    goto/16 :goto_0

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #adapterExp:Landroid/widget/ExpandableListAdapter;
    .end local v2           #paddingLeft:I
    .end local v3           #paddingRight:I
    .end local v4           #wrapAdapter:Lcom/htc/widget/WrapingExpandedListAdapter;
    :cond_d
    move-object v0, v1

    .line 688
    goto/16 :goto_1
.end method
