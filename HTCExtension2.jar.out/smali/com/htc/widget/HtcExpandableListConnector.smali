.class Lcom/htc/widget/HtcExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "HtcExpandableListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;,
        Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;,
        Lcom/htc/widget/HtcExpandableListConnector$MyDataSetObserver;
    }
.end annotation


# instance fields
.field private MAX_CACHE:I

.field private mAnimatedViewHeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatedViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mDarkModeEnabled:Z

.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

.field private mHandleChildBackground:Z

.field private mHideViewCount:I

.field mIsReduceChildCount:Z

.field private mMaxExpGroupCount:I

.field mPosMap:Lcom/htc/widget/PositionMap;

.field mReducedViewSize:I

.field mSection:[Ljava/lang/Object;

.field private mShouldHideView:Z

.field private mTotalExpChildrenCount:I


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 3
    .parameter "expandableListAdapter"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 77
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mMaxExpGroupCount:I

    .line 80
    new-instance v0, Lcom/htc/widget/HtcExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcExpandableListConnector$MyDataSetObserver;-><init>(Lcom/htc/widget/HtcExpandableListConnector;)V

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mHandleChildBackground:Z

    .line 1196
    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mSection:[Ljava/lang/Object;

    .line 1197
    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mPosMap:Lcom/htc/widget/PositionMap;

    .line 1257
    iput-boolean v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mDarkModeEnabled:Z

    .line 1273
    iput-boolean v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mIsReduceChildCount:Z

    .line 1278
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mReducedViewSize:I

    .line 1279
    iput-boolean v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mShouldHideView:Z

    .line 1280
    iput v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mHideViewCount:I

    .line 1281
    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mAnimatedViewList:Ljava/util/ArrayList;

    .line 1282
    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mAnimatedViewHeightList:Ljava/util/ArrayList;

    .line 1283
    iput v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->MAX_CACHE:I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/widget/ExpandableListAdapter;Landroid/content/Context;)V
    .locals 0
    .parameter "expandableListAdapter"
    .parameter "context"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    .line 95
    iput-object p2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mContext:Landroid/content/Context;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcExpandableListConnector;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .locals 13
    .parameter "forceChildrenCountRefresh"
    .parameter "syncGroupPositions"

    .prologue
    const/4 v12, -0x1

    .line 620
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 621
    .local v2, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 622
    .local v3, egmlSize:I
    const/4 v0, 0x0

    .line 625
    .local v0, curFlPos:I
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcExpandableListConnector;->mTotalExpChildrenCount:I

    .line 627
    if-eqz p2, :cond_3

    .line 629
    const/4 v8, 0x0

    .line 631
    .local v8, positionsChanged:Z
    add-int/lit8 v5, v3, -0x1

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_2

    .line 632
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 633
    .local v1, curGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    iget-wide v9, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gId:J

    iget v11, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v9, v10, v11}, Lcom/htc/widget/HtcExpandableListConnector;->findGroupPosition(JI)I

    move-result v7

    .line 634
    .local v7, newGPos:I
    iget v9, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v7, v9, :cond_1

    .line 635
    if-ne v7, v12, :cond_0

    .line 637
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 638
    add-int/lit8 v3, v3, -0x1

    .line 641
    :cond_0
    iput v7, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    .line 642
    if-nez v8, :cond_1

    const/4 v8, 0x1

    .line 631
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 646
    .end local v1           #curGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    .end local v7           #newGPos:I
    :cond_2
    if-eqz v8, :cond_3

    .line 648
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 653
    .end local v5           #i:I
    .end local v8           #positionsChanged:Z
    :cond_3
    const/4 v6, 0x0

    .line 654
    .local v6, lastGPos:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1
    if-ge v5, v3, :cond_7

    .line 656
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 662
    .restart local v1       #curGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    iget v9, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v9, v12, :cond_4

    if-eqz p1, :cond_6

    .line 663
    :cond_4
    iget-object v9, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v10, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v9, v10}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    .line 665
    .local v4, gChildrenCount:I
    iget v9, p0, Lcom/htc/widget/HtcExpandableListConnector;->mReducedViewSize:I

    if-eq v9, v12, :cond_5

    iget v9, p0, Lcom/htc/widget/HtcExpandableListConnector;->mReducedViewSize:I

    if-ge v9, v4, :cond_5

    iget-boolean v9, p0, Lcom/htc/widget/HtcExpandableListConnector;->mIsReduceChildCount:Z

    if-eqz v9, :cond_5

    .line 668
    iget v4, p0, Lcom/htc/widget/HtcExpandableListConnector;->mReducedViewSize:I

    .line 680
    :cond_5
    :goto_2
    iget v9, p0, Lcom/htc/widget/HtcExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v9, v4

    iput v9, p0, Lcom/htc/widget/HtcExpandableListConnector;->mTotalExpChildrenCount:I

    .line 687
    iget v9, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v9, v6

    add-int/2addr v0, v9

    .line 688
    iget v6, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    .line 691
    iput v0, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    .line 692
    add-int/2addr v0, v4

    .line 693
    iput v0, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 654
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 676
    .end local v4           #gChildrenCount:I
    :cond_6
    iget v9, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v10, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v4, v9, v10

    .restart local v4       #gChildrenCount:I
    goto :goto_2

    .line 695
    .end local v1           #curGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    .end local v4           #gChildrenCount:I
    :cond_7
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method collapseGroup(I)Z
    .locals 4
    .parameter "groupPos"

    .prologue
    const/4 v3, -0x1

    .line 703
    const/4 v2, 0x2

    invoke-static {v2, p1, v3, v3}, Lcom/htc/widget/HtcExpandableListPosition;->obtain(IIII)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 705
    .local v0, pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 709
    :goto_0
    return v1

    .line 707
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcExpandableListConnector;->collapseGroup(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Z

    move-result v1

    .line 708
    .local v1, retValue:Z
    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method collapseGroup(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Z
    .locals 3
    .parameter "posMetadata"

    .prologue
    const/4 v0, 0x0

    .line 722
    iget-object v1, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    if-nez v1, :cond_0

    .line 736
    :goto_0
    return v0

    .line 725
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 728
    invoke-direct {p0, v0, v0}, Lcom/htc/widget/HtcExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 731
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListConnector;->notifyDataSetChanged()V

    .line 734
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v1, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    .line 736
    const/4 v0, 0x1

    goto :goto_0
.end method

.method collapseGroupDuringAnimation(I)Z
    .locals 4
    .parameter "groupPos"

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 1353
    const/4 v2, 0x2

    invoke-static {v2, p1, v3, v3}, Lcom/htc/widget/HtcExpandableListPosition;->obtain(IIII)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 1355
    .local v0, pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    if-nez v0, :cond_1

    .line 1375
    :cond_0
    :goto_0
    return v1

    .line 1365
    :cond_1
    iget-object v2, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    if-eqz v2, :cond_0

    .line 1367
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1370
    invoke-direct {p0, v1, v1}, Lcom/htc/widget/HtcExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 1373
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListConnector;->notifyDataSetChanged()V

    .line 1374
    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 1375
    const/4 v1, 0x1

    goto :goto_0
.end method

.method expandGroup(I)Z
    .locals 4
    .parameter "groupPos"

    .prologue
    const/4 v3, -0x1

    .line 744
    const/4 v2, 0x2

    invoke-static {v2, p1, v3, v3}, Lcom/htc/widget/HtcExpandableListPosition;->obtain(IIII)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 746
    .local v0, pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcExpandableListConnector;->expandGroup(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Z

    move-result v1

    .line 747
    .local v1, retValue:Z
    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 748
    return v1
.end method

.method expandGroup(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Z
    .locals 8
    .parameter "posMetadata"

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 756
    iget-object v4, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v4, v4, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    if-gez v4, :cond_0

    .line 758
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Need group"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 761
    :cond_0
    iget v4, p0, Lcom/htc/widget/HtcExpandableListConnector;->mMaxExpGroupCount:I

    if-nez v4, :cond_2

    .line 800
    :cond_1
    :goto_0
    return v3

    .line 764
    :cond_2
    iget-object v4, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    if-nez v4, :cond_1

    .line 767
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcExpandableListConnector;->mMaxExpGroupCount:I

    if-lt v4, v5, :cond_3

    .line 771
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 773
    .local v0, collapsedGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 775
    .local v1, collapsedIndex:I
    iget v4, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcExpandableListConnector;->collapseGroup(I)Z

    .line 778
    iget v4, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v4, v1, :cond_3

    .line 779
    iget v4, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 783
    .end local v0           #collapsedGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    .end local v1           #collapsedIndex:I
    :cond_3
    iget-object v4, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v4, v4, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget-object v5, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v6, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v6, v6, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v5, v6}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v5

    invoke-static {v7, v7, v4, v5, v6}, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->obtain(IIIJ)Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    move-result-object v2

    .line 789
    .local v2, expandedGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v5, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 792
    invoke-direct {p0, v3, v3}, Lcom/htc/widget/HtcExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 795
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListConnector;->notifyDataSetChanged()V

    .line 798
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v4, v2, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    .line 800
    const/4 v3, 0x1

    goto :goto_0
.end method

.method expandGroupWithCollapse(I)I
    .locals 8
    .parameter "groupPosition"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1326
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1327
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 1328
    .local v1, expandedGroup:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1330
    invoke-direct {p0, v6, v6}, Lcom/htc/widget/HtcExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 1332
    .end local v1           #expandedGroup:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :cond_0
    const/4 v3, 0x2

    invoke-static {v3, p1, v7, v7}, Lcom/htc/widget/HtcExpandableListPosition;->obtain(IIII)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1334
    .local v2, pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v3, v2, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v3, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v5, v2, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v5, v5, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v4, v5}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    invoke-static {v7, v7, v3, v4, v5}, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->obtain(IIIJ)Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    move-result-object v0

    .line 1340
    .local v0, expandedGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v4, v2, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1343
    invoke-direct {p0, v6, v6}, Lcom/htc/widget/HtcExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 1345
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v4, v2, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v4, v4, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcExpandableListConnector;->setHideViewFlag(I)V

    .line 1347
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListConnector;->notifyDataSetChanged()V

    .line 1348
    invoke-virtual {v2}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 1349
    iget v3, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    return v3
.end method

.method findGroupPosition(JI)I
    .locals 16
    .parameter "groupIdToMatch"
    .parameter "seedGroupPosition"

    .prologue
    .line 899
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v12}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v2

    .line 901
    .local v2, count:I
    if-nez v2, :cond_0

    .line 902
    const/4 v12, -0x1

    .line 971
    :goto_0
    return v12

    .line 906
    :cond_0
    const-wide/high16 v12, -0x8000

    cmp-long v12, p1, v12

    if-nez v12, :cond_1

    .line 907
    const/4 v12, -0x1

    goto :goto_0

    .line 911
    :cond_1
    const/4 v12, 0x0

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 912
    add-int/lit8 v12, v2, -0x1

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 914
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x64

    add-long v3, v12, v14

    .line 919
    .local v3, endTime:J
    move/from16 v5, p3

    .line 922
    .local v5, first:I
    move/from16 v8, p3

    .line 925
    .local v8, last:I
    const/4 v9, 0x0

    .line 935
    .local v9, next:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 936
    .local v1, adapter:Landroid/widget/ExpandableListAdapter;
    if-nez v1, :cond_4

    .line 937
    const/4 v12, -0x1

    goto :goto_0

    .line 955
    .local v6, hitFirst:Z
    .local v7, hitLast:Z
    .local v10, rowId:J
    :cond_2
    if-nez v6, :cond_3

    if-eqz v9, :cond_9

    if-nez v7, :cond_9

    .line 957
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 958
    move/from16 p3, v8

    .line 960
    const/4 v9, 0x0

    .line 940
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v10           #rowId:J
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    cmp-long v12, v12, v3

    if-gtz v12, :cond_6

    .line 941
    move/from16 v0, p3

    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v10

    .line 942
    .restart local v10       #rowId:J
    cmp-long v12, v10, p1

    if-nez v12, :cond_5

    move/from16 v12, p3

    .line 944
    goto :goto_0

    .line 947
    :cond_5
    add-int/lit8 v12, v2, -0x1

    if-ne v8, v12, :cond_7

    const/4 v7, 0x1

    .line 948
    .restart local v7       #hitLast:Z
    :goto_2
    if-nez v5, :cond_8

    const/4 v6, 0x1

    .line 950
    .restart local v6       #hitFirst:Z
    :goto_3
    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 971
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v10           #rowId:J
    :cond_6
    const/4 v12, -0x1

    goto :goto_0

    .line 947
    .restart local v10       #rowId:J
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 948
    .restart local v7       #hitLast:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 961
    .restart local v6       #hitFirst:Z
    :cond_9
    if-nez v7, :cond_a

    if-nez v9, :cond_4

    if-nez v6, :cond_4

    .line 963
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 964
    move/from16 p3, v5

    .line 966
    const/4 v9, 0x1

    goto :goto_1
.end method

.method findReducedChildrenCount(I)V
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcExpandableListConnector;->setHideViewFlag(I)V

    .line 1380
    return-void
.end method

.method getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method getCurrentExpandedGroup()I
    .locals 2

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v0, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    .line 1400
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getCurrentExpandedGroupChildCount()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1404
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v1, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v0, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v0, v1, v0

    .line 1407
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 854
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method getExpandedPosition()I
    .locals 2

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 1310
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v0, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 846
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 847
    check-cast v0, Landroid/widget/Filterable;

    .end local v0           #adapter:Landroid/widget/ExpandableListAdapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 849
    :goto_0
    return-object v1

    .restart local v0       #adapter:Landroid/widget/ExpandableListAdapter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    .locals 25
    .parameter "pos"

    .prologue
    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 281
    .local v20, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 284
    .local v23, numExpGroups:I
    const/4 v13, 0x0

    .line 285
    .local v13, leftExpGroupIndex:I
    add-int/lit8 v19, v23, -0x1

    .line 286
    .local v19, rightExpGroupIndex:I
    const/16 v22, 0x0

    .line 289
    .local v22, midExpGroupIndex:I
    if-nez v23, :cond_9

    .line 295
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    move/from16 v7, v22

    .line 385
    .end local v22           #midExpGroupIndex:I
    .local v7, midExpGroupIndex:I
    :goto_0
    return-object v2

    .line 304
    :cond_0
    :goto_1
    move/from16 v0, v19

    if-gt v13, v0, :cond_5

    .line 305
    sub-int v2, v19, v13

    div-int/lit8 v2, v2, 0x2

    add-int v7, v2, v13

    .line 306
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 308
    .local v6, midExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget v3, v6, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    if-le v2, v3, :cond_1

    .line 312
    add-int/lit8 v13, v7, 0x1

    goto :goto_1

    .line 313
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget v3, v6, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v3, :cond_2

    .line 317
    add-int/lit8 v19, v7, -0x1

    goto :goto_1

    .line 318
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget v3, v6, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, v3, :cond_0

    .line 323
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 325
    iget v2, v6, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 327
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 329
    iget v2, v6, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 333
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 342
    .end local v6           #midExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    .line 344
    const/4 v2, 0x0

    goto :goto_0

    .line 352
    :cond_6
    if-le v13, v7, :cond_7

    .line 363
    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 364
    .local v21, leftExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    move-object/from16 v0, v21

    iget v4, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v3, v4

    add-int v8, v2, v3

    .line 368
    .local v8, flPos:I
    move-object/from16 v0, p1

    iget v9, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_0

    .line 370
    .end local v8           #flPos:I
    .end local v21           #leftExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :cond_7
    move/from16 v0, v19

    if-ge v0, v7, :cond_8

    .line 378
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 379
    .local v24, rightExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v24

    iget v2, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, v24

    iget v3, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    sub-int/2addr v3, v4

    sub-int v8, v2, v3

    .line 382
    .restart local v8       #flPos:I
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move v14, v8

    invoke-static/range {v14 .. v19}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_0

    .line 385
    .end local v8           #flPos:I
    .end local v24           #rightExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v7           #midExpGroupIndex:I
    .restart local v22       #midExpGroupIndex:I
    :cond_9
    move/from16 v7, v22

    .end local v22           #midExpGroupIndex:I
    .restart local v7       #midExpGroupIndex:I
    goto/16 :goto_1
.end method

.method getGroupFlatPosition(I)I
    .locals 3
    .parameter "groupPosition"

    .prologue
    .line 1315
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1316
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 1318
    .local v0, groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    iget v2, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, p1, :cond_1

    .line 1319
    iget p1, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    .line 1322
    .end local v0           #groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    .end local p1
    :cond_0
    return p1

    .line 1315
    .restart local v0       #groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    .restart local p1
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .parameter "flatListPos"

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 440
    .local v0, posMetadata:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v2, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v2, v2, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 441
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v3, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    .line 451
    .local v1, retValue:Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 453
    return-object v1

    .line 443
    .end local v1           #retValue:Ljava/lang/Object;
    :cond_0
    iget-object v2, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v2, v2, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 444
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v3, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget-object v4, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v4, v4, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #retValue:Ljava/lang/Object;
    goto :goto_0

    .line 448
    .end local v1           #retValue:Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Flat list position is of unknown type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getItemId(I)J
    .locals 10
    .parameter "flatListPos"

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v4

    .line 462
    .local v4, posMetadata:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v7, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v8, v8, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v2

    .line 465
    .local v2, groupId:J
    iget-object v7, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v7, v7, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 466
    iget-object v7, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v5

    .line 476
    .local v5, retValue:J
    :goto_0
    invoke-virtual {v4}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 478
    return-wide v5

    .line 467
    .end local v5           #retValue:J
    :cond_0
    iget-object v7, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v7, v7, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 468
    iget-object v7, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v8, v8, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget-object v9, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v9, v9, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    invoke-interface {v7, v8, v9}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 470
    .local v0, childId:J
    iget-object v7, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7, v2, v3, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v5

    .line 471
    .restart local v5       #retValue:J
    goto :goto_0

    .line 473
    .end local v0           #childId:J
    .end local v5           #retValue:J
    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Flat list position is of unknown type"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "flatListPos"

    .prologue
    const/4 v5, 0x2

    .line 558
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v4

    iget-object v2, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    .line 561
    .local v2, pos:Lcom/htc/widget/HtcExpandableListPosition;
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v4, v4, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v4, :cond_1

    .line 562
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 564
    .local v0, adapter:Landroid/widget/HeterogeneousExpandableList;
    iget v4, v2, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    if-ne v4, v5, :cond_0

    .line 565
    iget v4, v2, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v0, v4}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v3

    .line 578
    .end local v0           #adapter:Landroid/widget/HeterogeneousExpandableList;
    .local v3, retValue:I
    :goto_0
    invoke-virtual {v2}, Lcom/htc/widget/HtcExpandableListPosition;->recycle()V

    .line 580
    return v3

    .line 567
    .end local v3           #retValue:I
    .restart local v0       #adapter:Landroid/widget/HeterogeneousExpandableList;
    :cond_0
    iget v4, v2, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget v5, v2, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    invoke-interface {v0, v4, v5}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v1

    .line 568
    .local v1, childType:I
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v4

    add-int v3, v4, v1

    .restart local v3       #retValue:I
    goto :goto_0

    .line 571
    .end local v0           #adapter:Landroid/widget/HeterogeneousExpandableList;
    .end local v1           #childType:I
    .end local v3           #retValue:I
    :cond_1
    iget v4, v2, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    if-ne v4, v5, :cond_2

    .line 572
    const/4 v3, 0x0

    .restart local v3       #retValue:I
    goto :goto_0

    .line 574
    .end local v3           #retValue:I
    :cond_2
    const/4 v3, 0x1

    .restart local v3       #retValue:I
    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mPosMap:Lcom/htc/widget/PositionMap;

    invoke-interface {v0, p1}, Lcom/htc/widget/PositionMap;->indexOf(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1232
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mSection:[Ljava/lang/Object;

    return-object v0
.end method

.method getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    .locals 20
    .parameter "flPos"

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 131
    .local v13, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 134
    .local v17, numExpGroups:I
    const/4 v15, 0x0

    .line 135
    .local v15, leftExpGroupIndex:I
    add-int/lit8 v19, v17, -0x1

    .line 136
    .local v19, rightExpGroupIndex:I
    const/16 v16, 0x0

    .line 139
    .local v16, midExpGroupIndex:I
    if-nez v17, :cond_7

    .line 145
    const/4 v2, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p1

    move/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v1

    move/from16 v6, v16

    .line 264
    .end local v16           #midExpGroupIndex:I
    .local v6, midExpGroupIndex:I
    :goto_0
    return-object v1

    .line 161
    :cond_0
    :goto_1
    move/from16 v0, v19

    if-gt v15, v0, :cond_4

    .line 162
    sub-int v1, v19, v15

    div-int/lit8 v1, v1, 0x2

    add-int v6, v1, v15

    .line 165
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 167
    .local v5, midExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    iget v1, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-le v0, v1, :cond_1

    .line 172
    add-int/lit8 v15, v6, 0x1

    goto :goto_1

    .line 173
    :cond_1
    iget v1, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ge v0, v1, :cond_2

    .line 178
    add-int/lit8 v19, v6, -0x1

    goto :goto_1

    .line 179
    :cond_2
    iget v1, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 184
    const/4 v2, 0x2

    iget v3, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    const/4 v4, -0x1

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 186
    :cond_3
    iget v1, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-gt v0, v1, :cond_0

    .line 196
    iget v1, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v1, v1, 0x1

    sub-int v4, p1, v1

    .line 197
    .local v4, childPos:I
    const/4 v2, 0x1

    iget v3, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 213
    .end local v4           #childPos:I
    .end local v5           #midExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :cond_4
    const/4 v12, 0x0

    .line 216
    .local v12, insertPosition:I
    const/4 v9, 0x0

    .line 223
    .local v9, groupPos:I
    if-le v15, v6, :cond_5

    .line 231
    add-int/lit8 v1, v15, -0x1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 233
    .local v14, leftExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    move v12, v15

    .line 239
    iget v1, v14, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v1, p1, v1

    iget v2, v14, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    add-int v9, v1, v2

    .line 264
    .end local v14           #leftExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :goto_2
    const/4 v8, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x0

    move/from16 v7, p1

    invoke-static/range {v7 .. v12}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 241
    :cond_5
    move/from16 v0, v19

    if-ge v0, v6, :cond_6

    .line 248
    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 250
    .local v18, rightExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    move/from16 v12, v19

    .line 258
    move-object/from16 v0, v18

    iget v1, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, v18

    iget v2, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v2, v2, p1

    sub-int v9, v1, v2

    .line 259
    goto :goto_2

    .line 261
    .end local v18           #rightExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v6           #midExpGroupIndex:I
    .end local v9           #groupPos:I
    .end local v12           #insertPosition:I
    .restart local v16       #midExpGroupIndex:I
    :cond_7
    move/from16 v6, v16

    .end local v16           #midExpGroupIndex:I
    .restart local v6       #midExpGroupIndex:I
    goto/16 :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "flatListPos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 486
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v11

    .line 489
    .local v11, posMetadata:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v2, v11, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v2, v2, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 490
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v11, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v3, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-virtual {v11}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v2, v3, v4, v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 547
    .local v12, retValue:Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {v11}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 549
    return-object v12

    .line 492
    .end local v12           #retValue:Landroid/view/View;
    :cond_1
    iget-object v2, v11, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v2, v2, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 493
    iget-object v2, v11, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v2, v2, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_5

    const/4 v5, 0x1

    .line 495
    .local v5, isLastChild:Z
    :goto_1
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v11, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v3, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget-object v4, v11, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v4, v4, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 497
    .restart local v12       #retValue:Landroid/view/View;
    const/4 v13, 0x0

    .line 498
    .local v13, rightPadding:I
    const/4 v9, 0x0

    .line 499
    .local v9, leftPadding:I
    const/4 v14, 0x0

    .line 500
    .local v14, topPadding:I
    const/4 v8, 0x0

    .line 501
    .local v8, bottomPadding:I
    if-eqz v12, :cond_2

    .line 502
    invoke-virtual {v12}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    .line 503
    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    .line 504
    invoke-virtual {v12}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    .line 505
    invoke-virtual {v12}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    .line 507
    :cond_2
    iget-boolean v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mHandleChildBackground:Z

    if-eqz v2, :cond_3

    if-eqz v12, :cond_3

    .line 508
    iget-boolean v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mDarkModeEnabled:Z

    if-nez v2, :cond_6

    const v2, 0x208016a

    invoke-virtual {v12, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 514
    :cond_3
    :goto_2
    if-eqz v12, :cond_4

    .line 515
    invoke-virtual {v12, v9, v14, v13, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 519
    :cond_4
    iget-boolean v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mShouldHideView:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mAnimatedViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcExpandableListConnector;->mHideViewCount:I

    if-ge v2, v3, :cond_0

    .line 520
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mAnimatedViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    instance-of v2, v12, Lcom/htc/widget/HtcListItem;

    if-eqz v2, :cond_7

    move-object v2, v12

    .line 522
    check-cast v2, Lcom/htc/widget/HtcListItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->setUseCustomHeight(Z)V

    move-object v2, v12

    .line 523
    check-cast v2, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 524
    .local v10, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mAnimatedViewHeightList:Ljava/util/ArrayList;

    iget v3, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :goto_3
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mAnimatedViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcExpandableListConnector;->mHideViewCount:I

    if-ne v2, v3, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListConnector;->unSetHideViewFlag()V

    .line 538
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mShouldHideView:Z

    goto/16 :goto_0

    .line 493
    .end local v5           #isLastChild:Z
    .end local v8           #bottomPadding:I
    .end local v9           #leftPadding:I
    .end local v10           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v12           #retValue:Landroid/view/View;
    .end local v13           #rightPadding:I
    .end local v14           #topPadding:I
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 509
    .restart local v5       #isLastChild:Z
    .restart local v8       #bottomPadding:I
    .restart local v9       #leftPadding:I
    .restart local v12       #retValue:Landroid/view/View;
    .restart local v13       #rightPadding:I
    .restart local v14       #topPadding:I
    :cond_6
    const v2, 0x208016b

    invoke-virtual {v12, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 528
    :cond_7
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 529
    .restart local v10       #lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v10, :cond_8

    .line 530
    new-instance v10, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .end local v10           #lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v10, v2, v3}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(II)V

    .line 532
    .restart local v10       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mAnimatedViewHeightList:Ljava/util/ArrayList;

    iget v3, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 544
    .end local v5           #isLastChild:Z
    .end local v8           #bottomPadding:I
    .end local v9           #leftPadding:I
    .end local v10           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v12           #retValue:Landroid/view/View;
    .end local v13           #rightPadding:I
    .end local v14           #topPadding:I
    :cond_9
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Flat list position is of unknown type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getViewTypeCount()I
    .locals 3

    .prologue
    .line 589
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v1, v1, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v1, :cond_0

    .line 590
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 592
    .local v0, adapter:Landroid/widget/HeterogeneousExpandableList;
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 594
    .end local v0           #adapter:Landroid/widget/HeterogeneousExpandableList;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 884
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .parameter "flatListPos"

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    iget-object v0, v2, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    .line 407
    .local v0, pos:Lcom/htc/widget/HtcExpandableListPosition;
    iget v2, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 408
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v3, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget v4, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v1

    .line 414
    .local v1, retValue:Z
    :goto_0
    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListPosition;->recycle()V

    .line 416
    return v1

    .line 411
    .end local v1           #retValue:Z
    :cond_0
    const/4 v1, 0x1

    .restart local v1       #retValue:Z
    goto :goto_0
.end method

.method public isGroupExpanded(I)Z
    .locals 3
    .parameter "groupPosition"

    .prologue
    .line 814
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 815
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 817
    .local v0, groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    iget v2, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, p1, :cond_0

    .line 818
    const/4 v2, 0x1

    .line 822
    .end local v0           #groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :goto_1
    return v2

    .line 814
    .restart local v0       #groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 822
    .end local v0           #groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method linkHideViewList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "maxCache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1303
    .local p1, animatedViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p2, animatedViewHeightList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mAnimatedViewList:Ljava/util/ArrayList;

    .line 1304
    iput-object p2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mAnimatedViewHeightList:Ljava/util/ArrayList;

    .line 1305
    iput p3, p0, Lcom/htc/widget/HtcExpandableListConnector;->MAX_CACHE:I

    .line 1306
    return-void
.end method

.method recoverChildren()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1393
    iput-boolean v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mIsReduceChildCount:Z

    .line 1396
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/HtcExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 1397
    return-void
.end method

.method reduceChildren(I)V
    .locals 2
    .parameter "newChildCount"

    .prologue
    const/4 v1, 0x1

    .line 1386
    iput-boolean v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mIsReduceChildCount:Z

    .line 1387
    iput p1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mReducedViewSize:I

    .line 1390
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 1391
    return-void
.end method

.method setDarkModeEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1265
    iput-boolean p1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mDarkModeEnabled:Z

    .line 1266
    return-void
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .parameter "expandableListAdapter"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 113
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 114
    return-void
.end method

.method setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 859
    .local p1, expandedGroupMetadataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;>;"
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v2, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 866
    .local v1, numGroups:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 867
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v2, v2, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v1, :cond_0

    .line 866
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 873
    :cond_2
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 874
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    goto :goto_0
.end method

.method public setHandleChildBackground(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1250
    iput-boolean p1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mHandleChildBackground:Z

    .line 1251
    return-void
.end method

.method setHideViewFlag(I)V
    .locals 1
    .parameter "hideViewCount"

    .prologue
    .line 1286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mShouldHideView:Z

    .line 1287
    iget v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->MAX_CACHE:I

    if-le p1, v0, :cond_0

    .line 1288
    iget v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->MAX_CACHE:I

    iput v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mHideViewCount:I

    .line 1291
    :goto_0
    return-void

    .line 1290
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mHideViewCount:I

    goto :goto_0
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0
    .parameter "maxExpGroupCount"

    .prologue
    .line 833
    iput p1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mMaxExpGroupCount:I

    .line 834
    return-void
.end method

.method public setPositionMap(Lcom/htc/widget/PositionMap;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mPosMap:Lcom/htc/widget/PositionMap;

    .line 1212
    return-void
.end method

.method public setSections([Ljava/lang/Object;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mSection:[Ljava/lang/Object;

    .line 1204
    return-void
.end method

.method shouldHideView()Z
    .locals 1

    .prologue
    .line 1299
    iget-boolean v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mShouldHideView:Z

    return v0
.end method

.method unSetHideViewFlag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1294
    iput-boolean v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mShouldHideView:Z

    .line 1295
    iput v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mHideViewCount:I

    .line 1296
    return-void
.end method
