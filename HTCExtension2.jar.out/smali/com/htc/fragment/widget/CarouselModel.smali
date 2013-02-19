.class Lcom/htc/fragment/widget/CarouselModel;
.super Ljava/lang/Object;
.source "CarouselModel.java"

# interfaces
.implements Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;
.implements Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/CarouselModel$Row;
    }
.end annotation


# static fields
.field static final DEBUG_LOADERS:Z = false

.field static final LOCAL_LOGV:Z = false

.field private static final sInitCapacity:I = 0x14

.field private static final sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private final mCarousel:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/fragment/widget/CarouselFragment;",
            ">;"
        }
    .end annotation
.end field

.field mContentCursor:Landroid/database/MatrixCursor;

.field private mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

.field mMemoryModeCursor:Landroid/database/MatrixCursor;

.field mMemoryModeRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fragment/widget/CarouselModel$Row;",
            ">;"
        }
    .end annotation
.end field

.field private mTabID:Ljava/lang/String;

.field private mTabPrefix:Ljava/lang/String;

.field private mTaskUri:Landroid/net/Uri;

.field private final mTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/fragment/widget/CarouselHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 597
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/htc/fragment/widget/CarouselModel;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/htc/fragment/widget/CarouselFragment;)V
    .locals 2
    .parameter "carousel"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mTasks:Ljava/util/Map;

    .line 56
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    .line 584
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    .line 596
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 883
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mContentCursor:Landroid/database/MatrixCursor;

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    .line 60
    return-void
.end method

.method private addExistingTabMenoryMode(Lcom/htc/fragment/widget/TaskInfo;I)V
    .locals 2
    .parameter "info"
    .parameter "index"

    .prologue
    .line 615
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/CarouselModel$Row;

    iget-object v0, v1, Lcom/htc/fragment/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    .line 616
    .local v0, row:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/fragment/widget/TaskInfo;->toArrayDefault([Ljava/lang/Object;I)V

    .line 617
    return-void
.end method

.method private addTabMemoryModeAfterBatch(Ljava/lang/Object;)V
    .locals 5
    .parameter "cookie"

    .prologue
    .line 643
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselModel;->initialMemoryModeCursor()V

    .line 644
    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 645
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 646
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselModel;->convertCursorToArray()V

    .line 649
    :cond_1
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v3}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v3

    new-array v2, v3, [Ljava/lang/Object;

    .local v2, row:[Ljava/lang/Object;
    move-object v1, p1

    .line 650
    check-cast v1, Lcom/htc/fragment/widget/TaskInfo;

    .line 651
    .local v1, info:Lcom/htc/fragment/widget/TaskInfo;
    iget v3, v1, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 652
    iget-object v3, v1, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/fragment/widget/CarouselModel;->findTag(Ljava/lang/String;)I

    move-result v0

    .line 653
    .local v0, index:I
    if-gez v0, :cond_3

    .line 654
    sget-object v3, Lcom/htc/fragment/widget/CarouselModel;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fragment/widget/TaskInfo;->toArrayDefault([Ljava/lang/Object;I)V

    .line 655
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/fragment/widget/CarouselModel$Row;

    invoke-direct {v4, p0, v2}, Lcom/htc/fragment/widget/CarouselModel$Row;-><init>(Lcom/htc/fragment/widget/CarouselModel;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    .end local v0           #index:I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselModel;->onAddTabComplete()V

    .line 663
    return-void

    .line 658
    .restart local v0       #index:I
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/htc/fragment/widget/CarouselModel;->addExistingTabMenoryMode(Lcom/htc/fragment/widget/TaskInfo;I)V

    goto :goto_0
.end method

.method private convertCursorToArray()V
    .locals 37

    .prologue
    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/fragment/widget/CarouselFragment;

    .line 703
    .local v6, carousel:Lcom/htc/fragment/widget/CarouselFragment;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_1

    .line 704
    invoke-virtual {v6}, Lcom/htc/fragment/widget/CarouselFragment;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v5

    .line 706
    .local v5, c:Landroid/database/Cursor;
    if-eqz v5, :cond_1

    .line 707
    const-string v35, "_id"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 708
    .local v13, idIndex1:I
    const-string v35, "task_tag"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 709
    .local v33, taskTagIndex1:I
    const-string v35, "task_name"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 710
    .local v29, taskNameIndex1:I
    const-string v35, "alternative_name"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 711
    .local v3, alternativeNameIndex1:I
    const-string v35, "intent"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 712
    .local v15, intentIndex1:I
    const-string v35, "res_package"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 713
    .local v23, resPackageIndex1:I
    const-string v35, "icon_resource"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 714
    .local v11, iconResourceIndex1:I
    const-string v35, "selected_icon_resource"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 715
    .local v26, selectedIconResourceIndex1:I
    const-string v35, "overlay_resource"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 716
    .local v21, overlayResourceIndex1:I
    const-string v35, "task_order"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 717
    .local v31, taskOrderIndex1:I
    const-string v35, "is_host"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 718
    .local v17, isHostIndex1:I
    const-string v35, "is_removable"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 719
    .local v19, isRemovableIndex1:I
    const-string v35, "count_text"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 720
    .local v7, countTextIndex1:I
    const-string v35, "count_text_visible"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 722
    .local v9, countTextVisibleIndex1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "_id"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 723
    .local v14, idIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "task_tag"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 724
    .local v34, taskTagIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "task_name"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 725
    .local v30, taskNameIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "alternative_name"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 726
    .local v4, alternativeNameIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "intent"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 727
    .local v16, intentIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "res_package"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 728
    .local v24, resPackageIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "icon_resource"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 729
    .local v12, iconResourceIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "selected_icon_resource"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 730
    .local v27, selectedIconResourceIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "overlay_resource"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 731
    .local v22, overlayResourceIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "task_order"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 732
    .local v32, taskOrderIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "is_host"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 733
    .local v18, isHostIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "is_removable"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 734
    .local v20, isRemovableIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "count_text"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 735
    .local v8, countTextIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "count_text_visible"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 736
    .local v10, countTextVisibleIndex2:I
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 738
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v35

    if-gtz v35, :cond_2

    .line 764
    .end local v3           #alternativeNameIndex1:I
    .end local v4           #alternativeNameIndex2:I
    .end local v5           #c:Landroid/database/Cursor;
    .end local v7           #countTextIndex1:I
    .end local v8           #countTextIndex2:I
    .end local v9           #countTextVisibleIndex1:I
    .end local v10           #countTextVisibleIndex2:I
    .end local v11           #iconResourceIndex1:I
    .end local v12           #iconResourceIndex2:I
    .end local v13           #idIndex1:I
    .end local v14           #idIndex2:I
    .end local v15           #intentIndex1:I
    .end local v16           #intentIndex2:I
    .end local v17           #isHostIndex1:I
    .end local v18           #isHostIndex2:I
    .end local v19           #isRemovableIndex1:I
    .end local v20           #isRemovableIndex2:I
    .end local v21           #overlayResourceIndex1:I
    .end local v22           #overlayResourceIndex2:I
    .end local v23           #resPackageIndex1:I
    .end local v24           #resPackageIndex2:I
    .end local v26           #selectedIconResourceIndex1:I
    .end local v27           #selectedIconResourceIndex2:I
    .end local v29           #taskNameIndex1:I
    .end local v30           #taskNameIndex2:I
    .end local v31           #taskOrderIndex1:I
    .end local v32           #taskOrderIndex2:I
    .end local v33           #taskTagIndex1:I
    .end local v34           #taskTagIndex2:I
    :cond_1
    :goto_0
    return-void

    .line 739
    .restart local v3       #alternativeNameIndex1:I
    .restart local v4       #alternativeNameIndex2:I
    .restart local v5       #c:Landroid/database/Cursor;
    .restart local v7       #countTextIndex1:I
    .restart local v8       #countTextIndex2:I
    .restart local v9       #countTextVisibleIndex1:I
    .restart local v10       #countTextVisibleIndex2:I
    .restart local v11       #iconResourceIndex1:I
    .restart local v12       #iconResourceIndex2:I
    .restart local v13       #idIndex1:I
    .restart local v14       #idIndex2:I
    .restart local v15       #intentIndex1:I
    .restart local v16       #intentIndex2:I
    .restart local v17       #isHostIndex1:I
    .restart local v18       #isHostIndex2:I
    .restart local v19       #isRemovableIndex1:I
    .restart local v20       #isRemovableIndex2:I
    .restart local v21       #overlayResourceIndex1:I
    .restart local v22       #overlayResourceIndex2:I
    .restart local v23       #resPackageIndex1:I
    .restart local v24       #resPackageIndex2:I
    .restart local v26       #selectedIconResourceIndex1:I
    .restart local v27       #selectedIconResourceIndex2:I
    .restart local v29       #taskNameIndex1:I
    .restart local v30       #taskNameIndex2:I
    .restart local v31       #taskOrderIndex1:I
    .restart local v32       #taskOrderIndex2:I
    .restart local v33       #taskTagIndex1:I
    .restart local v34       #taskTagIndex2:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    .line 740
    .local v25, row:[Ljava/lang/Object;
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v25, v14

    .line 742
    move/from16 v0, v33

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 743
    .local v28, tag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    .line 746
    :cond_3
    aput-object v28, v25, v34

    .line 747
    move/from16 v0, v29

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v25, v30

    .line 748
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v25, v4

    .line 749
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v25, v16

    .line 750
    move/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v25, v24

    .line 751
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v25, v12

    .line 752
    move/from16 v0, v26

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v25, v27

    .line 753
    move/from16 v0, v21

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v25, v22

    .line 754
    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v25, v32

    .line 755
    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v25, v18

    .line 756
    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v25, v20

    .line 757
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v25, v8

    .line 758
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v25, v10

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    new-instance v36, Lcom/htc/fragment/widget/CarouselModel$Row;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/widget/CarouselModel$Row;-><init>(Lcom/htc/fragment/widget/CarouselModel;[Ljava/lang/Object;)V

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v35

    if-nez v35, :cond_0

    goto/16 :goto_0
.end method

.method private findTag(Ljava/lang/String;)I
    .locals 6
    .parameter "taskTag"

    .prologue
    .line 603
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    const-string v5, "task_tag"

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 604
    .local v3, taskTagIndex:I
    const/4 v1, 0x0

    .line 605
    .local v1, row:Lcom/htc/fragment/widget/CarouselModel$Row;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 606
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #row:Lcom/htc/fragment/widget/CarouselModel$Row;
    check-cast v1, Lcom/htc/fragment/widget/CarouselModel$Row;

    .line 607
    .restart local v1       #row:Lcom/htc/fragment/widget/CarouselModel$Row;
    iget-object v4, v1, Lcom/htc/fragment/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    aget-object v2, v4, v3

    check-cast v2, Ljava/lang/String;

    .line 608
    .local v2, tag:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 611
    .end local v0           #i:I
    .end local v2           #tag:Ljava/lang/String;
    :goto_1
    return v0

    .line 605
    .restart local v0       #i:I
    .restart local v2       #tag:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 611
    .end local v2           #tag:Ljava/lang/String;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;
    .locals 1
    .parameter "packageName"
    .parameter "resourceName"

    .prologue
    .line 324
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 325
    .local v0, icon:Landroid/content/Intent$ShortcutIconResource;
    iput-object p0, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 326
    iput-object p1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 327
    return-object v0
.end method

.method private initialMemoryModeCursor()V
    .locals 2

    .prologue
    .line 599
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/htc/fragment/widget/CarouselSetting;->TAKCOLUMNNAMES:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    .line 600
    return-void
.end method

.method private updateTabMemoryModeAfterBatch(ILjava/lang/Object;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselModel;->initialMemoryModeCursor()V

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 770
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselModel;->convertCursorToArray()V

    .line 773
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/fragment/widget/CarouselModel;->updateTabMemoryMode(ILjava/lang/Object;)V

    .line 774
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselModel;->onAddTabComplete()V

    .line 775
    return-void
.end method


# virtual methods
.method public addTabMemoryMode(ILjava/lang/Object;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 625
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselModel;->initialMemoryModeCursor()V

    .line 626
    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 628
    :cond_1
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v3}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v3

    new-array v2, v3, [Ljava/lang/Object;

    .local v2, row:[Ljava/lang/Object;
    move-object v1, p2

    .line 629
    check-cast v1, Lcom/htc/fragment/widget/TaskInfo;

    .line 630
    .local v1, info:Lcom/htc/fragment/widget/TaskInfo;
    iget v3, v1, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 631
    iget-object v3, v1, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/fragment/widget/CarouselModel;->findTag(Ljava/lang/String;)I

    move-result v0

    .line 632
    .local v0, index:I
    if-gez v0, :cond_3

    .line 633
    sget-object v3, Lcom/htc/fragment/widget/CarouselModel;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fragment/widget/TaskInfo;->toArrayDefault([Ljava/lang/Object;I)V

    .line 634
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/fragment/widget/CarouselModel$Row;

    invoke-direct {v4, p0, v2}, Lcom/htc/fragment/widget/CarouselModel$Row;-><init>(Lcom/htc/fragment/widget/CarouselModel;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    .end local v0           #index:I
    :cond_2
    :goto_0
    return-void

    .line 637
    .restart local v0       #index:I
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/htc/fragment/widget/CarouselModel;->addExistingTabMenoryMode(Lcom/htc/fragment/widget/TaskInfo;I)V

    goto :goto_0
.end method

.method addTaskToDatabase(Landroid/content/Context;Lcom/htc/fragment/widget/TaskInfo;)V
    .locals 9
    .parameter "context"
    .parameter "task"

    .prologue
    const/4 v4, 0x0

    .line 146
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mTaskUri:Landroid/net/Uri;

    .line 148
    .local v3, taskUri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, tag:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x386

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task_tag=\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "task_order"

    move-object v2, p2

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startCheckInsertOrUpdate(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method buildContentCursor(Landroid/database/Cursor;)V
    .locals 16
    .parameter "cursor"

    .prologue
    .line 890
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselModel;->initContentCursor()V

    .line 891
    const-string v13, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 892
    .local v2, idIndex:I
    const-string v13, "task_tag"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 893
    .local v12, taskTagIndex:I
    const-string v13, "task_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 894
    .local v6, taskNameIndex:I
    const-string v13, "alternative_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 895
    .local v4, taskAlternativeNameIndex:I
    const-string v13, "res_package"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 896
    .local v10, taskPackageNameIndex:I
    const-string v13, "overlay_resource"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 898
    .local v8, taskOverlayIndex:I
    const/4 v1, 0x0

    .line 899
    .local v1, id:Ljava/lang/String;
    const/4 v11, 0x0

    .line 900
    .local v11, taskTag:Ljava/lang/String;
    const/4 v5, 0x0

    .line 901
    .local v5, taskName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 902
    .local v3, taskAlternativeName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 903
    .local v9, taskPackageName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 905
    .local v7, taskOverlay:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 907
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-gtz v13, :cond_1

    .line 927
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/fragment/widget/CarouselFragment;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/CarouselModel;->mContentCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v13, v14}, Lcom/htc/fragment/widget/CarouselFragment;->onContentCursorBuildComplete(Landroid/database/Cursor;)V

    .line 929
    return-void

    .line 909
    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 910
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 911
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 912
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 913
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 914
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 916
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/fragment/widget/CarouselModel;->mContentCursor:Landroid/database/MatrixCursor;

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    const/4 v15, 0x2

    aput-object v5, v14, v15

    const/4 v15, 0x3

    aput-object v3, v14, v15

    const/4 v15, 0x4

    aput-object v9, v14, v15

    const/4 v15, 0x5

    aput-object v7, v14, v15

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 917
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 838
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    .line 839
    return-void
.end method

.method clean()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method cleanTasks()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 132
    return-void
.end method

.method cleanTasks(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTaskUri:Landroid/net/Uri;

    .line 89
    .local v1, taskUri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public deleteTabMemoryMode(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 860
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselModel;->initialMemoryModeCursor()V

    .line 861
    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 862
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 863
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselModel;->convertCursorToArray()V

    .line 866
    :cond_1
    const/4 v1, 0x0

    .local v1, row:Lcom/htc/fragment/widget/CarouselModel$Row;
    move-object v2, p2

    .line 867
    check-cast v2, Ljava/lang/String;

    .line 870
    .local v2, taskTag:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/htc/fragment/widget/CarouselModel;->findTag(Ljava/lang/String;)I

    move-result v0

    .line 871
    .local v0, i:I
    if-ltz v0, :cond_2

    .line 872
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #row:Lcom/htc/fragment/widget/CarouselModel$Row;
    check-cast v1, Lcom/htc/fragment/widget/CarouselModel$Row;

    .line 874
    .restart local v1       #row:Lcom/htc/fragment/widget/CarouselModel$Row;
    :cond_2
    return-void
.end method

.method getHandler(Landroid/content/Context;)Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;
    .locals 1
    .parameter "context"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    return-object v0
.end method

.method getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 878
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselFragment;

    .line 879
    .local v0, cf:Lcom/htc/fragment/widget/CarouselFragment;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v1

    goto :goto_0
.end method

.method final getTabSpecTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/fragment/widget/CarouselHost$TabSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mTasks:Ljava/util/Map;

    return-object v0
.end method

.method initContentCursor()V
    .locals 3

    .prologue
    .line 886
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/htc/fragment/widget/CarouselSetting;->TASKCONTENTCOLUMNS:[Ljava/lang/String;

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mContentCursor:Landroid/database/MatrixCursor;

    .line 887
    return-void
.end method

.method isProviderAP(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 77
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    .line 78
    .local v0, authority:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    if-nez v2, :cond_0

    .line 79
    const/4 v2, 0x0

    .line 81
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isUpdateRequired(Ljava/lang/Object;Landroid/database/Cursor;Landroid/content/ContentValues;[I[Ljava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "cursor"
    .parameter "values"
    .parameter "token"
    .parameter "tag"

    .prologue
    const/4 v4, 0x0

    .line 513
    move-object v1, p1

    check-cast v1, Lcom/htc/fragment/widget/TaskInfo;

    .line 514
    .local v1, task:Lcom/htc/fragment/widget/TaskInfo;
    invoke-virtual {v1, p2, p3}, Lcom/htc/fragment/widget/TaskInfo;->syncWithDatabase(Landroid/database/Cursor;Landroid/content/ContentValues;)Z

    move-result v0

    .line 515
    .local v0, isUpdateRequired:Z
    if-eqz v0, :cond_1

    .line 516
    iget v2, v1, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    if-nez v2, :cond_0

    .line 517
    const/16 v2, 0x3ed

    aput v2, p4, v4

    .line 526
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/htc/fragment/widget/TaskInfo;->gId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p5, v4

    .line 527
    return-void

    .line 520
    :cond_0
    const/16 v2, 0x3ee

    aput v2, p4, v4

    goto :goto_0

    .line 523
    :cond_1
    const/16 v2, 0x3f0

    aput v2, p4, v4

    goto :goto_0
.end method

.method public notifyDataSetChanged(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 805
    if-nez p1, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselFragment;

    .line 810
    .local v0, carousel:Lcom/htc/fragment/widget/CarouselFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 814
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    .line 815
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->hideCarousel()V

    .line 819
    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselModel;->updateHashTable(Landroid/database/Cursor;)V

    .line 821
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselModel;->buildContentCursor(Landroid/database/Cursor;)V

    .line 824
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v1

    .line 826
    .local v1, host:Lcom/htc/fragment/widget/CarouselHost;
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getStateMode()I

    move-result v3

    const/16 v4, 0x3ea

    if-eq v3, v4, :cond_0

    .line 827
    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->getBackUpCurrentTag()Ljava/lang/String;

    move-result-object v2

    .line 828
    .local v2, tag:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 817
    .end local v1           #host:Lcom/htc/fragment/widget/CarouselHost;
    .end local v2           #tag:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->showCarousel()V

    goto :goto_1
.end method

.method public onAddTabComplete()V
    .locals 4

    .prologue
    .line 783
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselFragment;

    .line 784
    .local v0, carousel:Lcom/htc/fragment/widget/CarouselFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isDetached()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isDestroy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 790
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 791
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fragment/widget/CarouselModel$Row;

    iget-object v2, v2, Lcom/htc/fragment/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 794
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->setMemoryMode(Z)V

    .line 795
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->setWidgetAdapterCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public onCheckInsertOrUpdateComplete(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 550
    sparse-switch p1, :sswitch_data_0

    .line 581
    .end local p3
    :goto_0
    :sswitch_0
    return-void

    .line 554
    .restart local p3
    :sswitch_1
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/fragment/widget/CarouselModel;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 560
    .restart local p3
    :sswitch_2
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/fragment/widget/CarouselModel;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 571
    .restart local p3
    :sswitch_3
    check-cast p3, Landroid/net/Uri;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselModel;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    .line 577
    .restart local p3
    :sswitch_4
    check-cast p3, Landroid/net/Uri;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselModel;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    .line 550
    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_1
        0x3ee -> :sswitch_2
        0x3f0 -> :sswitch_0
        0x44c -> :sswitch_3
        0x44d -> :sswitch_4
    .end sparse-switch
.end method

.method public onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 335
    packed-switch p1, :pswitch_data_0

    .line 345
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    .line 338
    check-cast v0, Ljava/lang/String;

    .line 339
    .local v0, tag:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTasks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x4b0
        :pswitch_0
    .end packed-switch
.end method

.method public onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "type"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v4, 0x1

    .line 466
    const-string v2, "CarouselFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExceptionHandle: token="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", cookie="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", uri="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", values="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", selection="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", selectionArgs="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p7, :cond_1

    move-object v1, p7

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselFragment;

    .line 476
    .local v0, carousel:Lcom/htc/fragment/widget/CarouselFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 505
    :cond_0
    :goto_1
    return-void

    .line 466
    .end local v0           #carousel:Lcom/htc/fragment/widget/CarouselFragment;
    :cond_1
    invoke-static {p7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 480
    .restart local v0       #carousel:Lcom/htc/fragment/widget/CarouselFragment;
    :cond_2
    sparse-switch p1, :sswitch_data_0

    :goto_2
    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 504
    invoke-virtual/range {v0 .. v7}, Lcom/htc/fragment/widget/CarouselFragment;->onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 482
    :sswitch_0
    invoke-virtual {v0, v4}, Lcom/htc/fragment/widget/CarouselFragment;->setMemoryMode(Z)V

    .line 483
    invoke-direct {p0, p1, p4}, Lcom/htc/fragment/widget/CarouselModel;->updateTabMemoryModeAfterBatch(ILjava/lang/Object;)V

    goto :goto_2

    .line 486
    :sswitch_1
    invoke-virtual {v0, v4}, Lcom/htc/fragment/widget/CarouselFragment;->setMemoryMode(Z)V

    .line 487
    invoke-direct {p0, p1, p4}, Lcom/htc/fragment/widget/CarouselModel;->updateTabMemoryModeAfterBatch(ILjava/lang/Object;)V

    goto :goto_2

    .line 490
    :sswitch_2
    invoke-virtual {v0, v4}, Lcom/htc/fragment/widget/CarouselFragment;->setMemoryMode(Z)V

    .line 491
    invoke-direct {p0, p1, p4}, Lcom/htc/fragment/widget/CarouselModel;->updateTabMemoryModeAfterBatch(ILjava/lang/Object;)V

    goto :goto_2

    .line 494
    :sswitch_3
    invoke-virtual {v0, v4}, Lcom/htc/fragment/widget/CarouselFragment;->setMemoryMode(Z)V

    .line 495
    invoke-direct {p0, p2}, Lcom/htc/fragment/widget/CarouselModel;->addTabMemoryModeAfterBatch(Ljava/lang/Object;)V

    goto :goto_2

    .line 500
    :sswitch_4
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->setDragDropAnimationInitState()V

    goto :goto_2

    .line 480
    :sswitch_data_0
    .sparse-switch
        0x386 -> :sswitch_3
        0x3e8 -> :sswitch_4
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_1
        0x3ec -> :sswitch_2
        0x3ef -> :sswitch_0
    .end sparse-switch
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method public onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 352
    packed-switch p1, :pswitch_data_0

    .line 360
    :pswitch_0
    return-void

    .line 352
    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 368
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselFragment;

    .line 369
    .local v0, carousel:Lcom/htc/fragment/widget/CarouselFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isDetached()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 370
    :cond_0
    if-eqz p3, :cond_1

    .line 371
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_1
    :goto_0
    return-void

    .line 376
    :cond_2
    if-nez p3, :cond_3

    const/4 v1, 0x0

    .line 378
    .local v1, cursor:Landroid/database/Cursor;
    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 382
    :pswitch_0
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isDestroy()Z

    move-result v2

    if-nez v2, :cond_4

    .line 383
    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselFragment;->setBinAdapterCursor(Landroid/database/Cursor;)V

    .line 384
    if-nez v1, :cond_1

    .line 385
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->setMemoryMode(Z)V

    goto :goto_0

    .line 376
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_3
    new-instance v1, Lcom/htc/fragment/widget/SafeCursor;

    invoke-direct {v1, v0, p3}, Lcom/htc/fragment/widget/SafeCursor;-><init>(Lcom/htc/fragment/widget/CarouselFragment;Landroid/database/Cursor;)V

    goto :goto_1

    .line 388
    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_4
    if-eqz v1, :cond_1

    .line 389
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 398
    :pswitch_1
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isDestroy()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isMemoryMode()Z

    move-result v2

    if-nez v2, :cond_6

    .line 399
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_5

    .line 400
    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselFragment;->setWidgetAdapterCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 402
    :cond_5
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 405
    :cond_6
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 417
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselFragment;

    .line 419
    .local v0, carousel:Lcom/htc/fragment/widget/CarouselFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    .end local p2
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 423
    .restart local p2
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 434
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselFragment;->updateWidget(I)V

    goto :goto_0

    .line 426
    .restart local p2
    :pswitch_3
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->onTaskSync()V

    goto :goto_0

    .line 430
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselFragment;->updateWidget(I)V

    goto :goto_0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public prepareForInsertion(Ljava/lang/Object;Landroid/content/ContentValues;[I)V
    .locals 4
    .parameter "cookie"
    .parameter "values"
    .parameter "token"

    .prologue
    const/4 v3, 0x0

    .line 534
    move-object v0, p1

    check-cast v0, Lcom/htc/fragment/widget/TaskInfo;

    .line 535
    .local v0, task:Lcom/htc/fragment/widget/TaskInfo;
    iget v1, v0, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 536
    invoke-virtual {v0, p2}, Lcom/htc/fragment/widget/TaskInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 537
    const/16 v1, 0x44c

    aput v1, p3, v3

    .line 542
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-virtual {v0, p2}, Lcom/htc/fragment/widget/TaskInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 540
    const/16 v1, 0x44d

    aput v1, p3, v3

    goto :goto_0
.end method

.method removeTagFromDB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "s"

    .prologue
    .line 135
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mTaskUri:Landroid/net/Uri;

    .line 137
    .local v3, taskUri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, tag:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x4b0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task_tag=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method setAlternativeTabName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 8
    .parameter "context"
    .parameter "s"
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 208
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .local v4, values:Landroid/content/ContentValues;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, tag:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 214
    .local v3, taskNameUri:Landroid/net/Uri;
    const-string v0, "alternate_name"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 215
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "alternativeName"

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 219
    const-string v0, "alternate_name"

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x3ef

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 233
    return-void

    .line 221
    .end local v3           #taskNameUri:Landroid/net/Uri;
    .restart local p3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 222
    .restart local v3       #taskNameUri:Landroid/net/Uri;
    const-string v0, "alternate_name"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 223
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "alternativeName"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 227
    const-string v0, "alternate_name"

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setCountText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)I
    .locals 9
    .parameter "context"
    .parameter "s"
    .parameter "text"

    .prologue
    const/4 v8, -0x1

    .line 189
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .local v4, values:Landroid/content/ContentValues;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, tag:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 193
    .local v3, countTextUri:Landroid/net/Uri;
    const-string v0, "count_text"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 194
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "countText"

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 198
    const-string v0, "count_text"

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x3eb

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 204
    return v8
.end method

.method setCountTextVisible(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 9
    .parameter "context"
    .parameter "s"
    .parameter "enable"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    .line 164
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v4, values:Landroid/content/ContentValues;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, tag:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 168
    .local v3, countTextUri:Landroid/net/Uri;
    const-string v0, "count_text_visible"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 169
    if-ne p3, v5, :cond_1

    .line 170
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "countTextVisible"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 173
    const-string v0, "countTextVisible"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x3ec

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 185
    return v8

    .line 175
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "countTextVisible"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 178
    const-string v0, "countTextVisible"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 68
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTaskUri:Landroid/net/Uri;

    .line 70
    const-string v0, "gId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabID:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public startProcessingOperations(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 849
    new-instance v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->IsProcessingRightAway()Z

    move-result v0

    if-nez v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startProcessingOperations()V

    .line 853
    :cond_1
    return-void
.end method

.method syncTasks(Landroid/content/Context;Landroid/widget/BaseAdapter;)V
    .locals 8
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 94
    if-nez p2, :cond_1

    .line 128
    :cond_0
    return-void

    .line 98
    :cond_1
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/CarouselFragment;

    .line 100
    .local v1, carousel:Lcom/htc/fragment/widget/CarouselFragment;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 103
    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->isMemoryMode()Z

    move-result v7

    if-nez v7, :cond_0

    .line 105
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 106
    invoke-virtual {p2, v3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 107
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 110
    const-string v7, "task_tag"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 112
    .local v6, taskTagIndex:I
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, tag:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 114
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 116
    :cond_2
    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v2

    .line 117
    .local v2, host:Lcom/htc/fragment/widget/CarouselHost;
    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 118
    invoke-virtual {v2, v5}, Lcom/htc/fragment/widget/CarouselHost;->closeTabByTag(Ljava/lang/String;)V

    .line 121
    :cond_3
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselModel;->mTasks:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    .line 122
    .local v4, t:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    if-eqz v4, :cond_4

    .line 123
    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->doClean()V

    .line 105
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method updateHashTable(Landroid/database/Cursor;)V
    .locals 35
    .parameter "c"

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual/range {v31 .. v31}, Lcom/htc/fragment/widget/CarouselFragment;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v7

    .line 250
    .local v7, carouselHost:Lcom/htc/fragment/widget/CarouselHost;
    :try_start_0
    const-string v31, "task_tag"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 251
    .local v28, taskTagIndex:I
    const-string v31, "task_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 252
    .local v26, taskNameIndex:I
    const-string v31, "intent"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 253
    .local v16, intentIndex:I
    const-string v31, "res_package"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 254
    .local v20, packageIndex:I
    const-string v31, "icon_resource"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 255
    .local v13, iconIndex:I
    const-string v31, "selected_icon_resource"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 256
    .local v23, selectedIconIndex:I
    const-string v31, "overlay_resource"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 257
    .local v19, overlayIndex:I
    const-string v31, "count_text"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 258
    .local v9, countTextIndex:I
    const-string v31, "count_text_visible"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 260
    .local v10, countTextVisibleIndex:I
    const-string v31, "alternative_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 264
    .local v6, alternativeNameIndex:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 266
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v31

    if-gtz v31, :cond_1

    .line 321
    :goto_0
    return-void

    .line 269
    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 270
    .local v27, taskTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 273
    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 274
    .local v24, taskName:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 275
    .local v15, intentDescription:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 276
    .local v21, packageName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 277
    .local v12, icon:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 278
    .local v22, selectedIcon:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 279
    .local v18, overlay:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 280
    .local v8, countText:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 282
    .local v17, isCountTextVisible:I
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 285
    .local v5, alternativeName:Ljava/lang/String;
    const/16 v31, 0x0

    :try_start_1
    move/from16 v0, v31

    invoke-static {v15, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    .line 289
    .local v14, intent:Landroid/content/Intent;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mTasks:Ljava/util/Map;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    .line 290
    .local v30, ts:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    if-eqz v30, :cond_3

    .line 291
    new-instance v29, Lcom/htc/fragment/widget/TaskInfo;

    invoke-direct/range {v29 .. v29}, Lcom/htc/fragment/widget/TaskInfo;-><init>()V

    .line 293
    .local v29, ti:Lcom/htc/fragment/widget/TaskInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mTabID:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->gId:Ljava/lang/String;

    .line 294
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    .line 295
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->taskName:Ljava/lang/String;

    .line 296
    move-object/from16 v0, v29

    iput-object v15, v0, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    .line 297
    move-object/from16 v0, v21

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->resPackage:Ljava/lang/String;

    .line 298
    move-object/from16 v0, v29

    iput-object v12, v0, Lcom/htc/fragment/widget/TaskInfo;->icon:Ljava/lang/String;

    .line 299
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    .line 300
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->overlay:Ljava/lang/String;

    .line 301
    move-object/from16 v0, v29

    iput-object v8, v0, Lcom/htc/fragment/widget/TaskInfo;->countText:Ljava/lang/String;

    .line 302
    move/from16 v0, v17

    move-object/from16 v1, v29

    iput v0, v1, Lcom/htc/fragment/widget/TaskInfo;->isCountTextVisible:I

    .line 304
    move-object/from16 v0, v29

    iput-object v5, v0, Lcom/htc/fragment/widget/TaskInfo;->alternativeName:Ljava/lang/String;

    .line 306
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->removeFragmentIfRunning(Lcom/htc/fragment/widget/CarouselHost$TabSpec;Lcom/htc/fragment/widget/TaskInfo;)V

    .line 319
    .end local v14           #intent:Landroid/content/Intent;
    .end local v29           #ti:Lcom/htc/fragment/widget/TaskInfo;
    .end local v30           #ts:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v31

    if-nez v31, :cond_0

    goto/16 :goto_0

    .line 286
    :catch_0
    move-exception v11

    .line 287
    .local v11, e:Ljava/net/URISyntaxException;
    goto :goto_1

    .line 308
    .end local v11           #e:Ljava/net/URISyntaxException;
    .restart local v14       #intent:Landroid/content/Intent;
    .restart local v30       #ts:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    :cond_3
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselModel;->getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v25

    .line 309
    .local v25, taskNameIcon:Landroid/content/Intent$ShortcutIconResource;
    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/htc/fragment/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v31

    move-object/from16 v0, v21

    invoke-static {v0, v12}, Lcom/htc/fragment/widget/CarouselModel;->getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v32

    invoke-static/range {v21 .. v22}, Lcom/htc/fragment/widget/CarouselModel;->getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselModel;->getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v30

    .line 316
    if-nez v5, :cond_4

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v30

    .line 317
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mTasks:Ljava/util/Map;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 320
    .end local v5           #alternativeName:Ljava/lang/String;
    .end local v6           #alternativeNameIndex:I
    .end local v8           #countText:Ljava/lang/String;
    .end local v9           #countTextIndex:I
    .end local v10           #countTextVisibleIndex:I
    .end local v12           #icon:Ljava/lang/String;
    .end local v13           #iconIndex:I
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #intentDescription:Ljava/lang/String;
    .end local v16           #intentIndex:I
    .end local v17           #isCountTextVisible:I
    .end local v18           #overlay:Ljava/lang/String;
    .end local v19           #overlayIndex:I
    .end local v20           #packageIndex:I
    .end local v21           #packageName:Ljava/lang/String;
    .end local v22           #selectedIcon:Ljava/lang/String;
    .end local v23           #selectedIconIndex:I
    .end local v24           #taskName:Ljava/lang/String;
    .end local v25           #taskNameIcon:Landroid/content/Intent$ShortcutIconResource;
    .end local v26           #taskNameIndex:I
    .end local v27           #taskTag:Ljava/lang/String;
    .end local v28           #taskTagIndex:I
    .end local v30           #ts:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    :catchall_0
    move-exception v31

    throw v31

    .line 316
    .restart local v5       #alternativeName:Ljava/lang/String;
    .restart local v6       #alternativeNameIndex:I
    .restart local v8       #countText:Ljava/lang/String;
    .restart local v9       #countTextIndex:I
    .restart local v10       #countTextVisibleIndex:I
    .restart local v12       #icon:Ljava/lang/String;
    .restart local v13       #iconIndex:I
    .restart local v14       #intent:Landroid/content/Intent;
    .restart local v15       #intentDescription:Ljava/lang/String;
    .restart local v16       #intentIndex:I
    .restart local v17       #isCountTextVisible:I
    .restart local v18       #overlay:Ljava/lang/String;
    .restart local v19       #overlayIndex:I
    .restart local v20       #packageIndex:I
    .restart local v21       #packageName:Ljava/lang/String;
    .restart local v22       #selectedIcon:Ljava/lang/String;
    .restart local v23       #selectedIconIndex:I
    .restart local v24       #taskName:Ljava/lang/String;
    .restart local v25       #taskNameIcon:Landroid/content/Intent$ShortcutIconResource;
    .restart local v26       #taskNameIndex:I
    .restart local v27       #taskTag:Ljava/lang/String;
    .restart local v28       #taskTagIndex:I
    .restart local v30       #ts:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    :cond_4
    :try_start_3
    move-object/from16 v0, v30

    invoke-virtual {v0, v14, v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v30

    goto :goto_2
.end method

.method public updateTabMemoryMode(ILjava/lang/Object;)V
    .locals 12
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 667
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselModel;->initialMemoryModeCursor()V

    .line 668
    :cond_0
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 670
    :cond_1
    const/4 v7, 0x0

    .local v7, row:Lcom/htc/fragment/widget/CarouselModel$Row;
    move-object v9, p2

    .line 671
    check-cast v9, Landroid/net/Uri;

    .line 672
    .local v9, uri:Landroid/net/Uri;
    const-string v10, "taskTag"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 674
    .local v8, taskTag:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/htc/fragment/widget/CarouselModel;->findTag(Ljava/lang/String;)I

    move-result v6

    .line 675
    .local v6, i:I
    if-ltz v6, :cond_2

    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #row:Lcom/htc/fragment/widget/CarouselModel$Row;
    check-cast v7, Lcom/htc/fragment/widget/CarouselModel$Row;

    .line 677
    .restart local v7       #row:Lcom/htc/fragment/widget/CarouselModel$Row;
    :cond_2
    if-eqz v7, :cond_3

    .line 678
    packed-switch p1, :pswitch_data_0

    .line 697
    :cond_3
    :goto_0
    :pswitch_0
    return-void

    .line 680
    :pswitch_1
    const-string v10, "countText"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 681
    .local v2, countText:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    const-string v11, "count_text"

    invoke-virtual {v10, v11}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 682
    .local v3, countTextIndex:I
    iget-object v10, v7, Lcom/htc/fragment/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    aput-object v2, v10, v3

    goto :goto_0

    .line 685
    .end local v2           #countText:Ljava/lang/String;
    .end local v3           #countTextIndex:I
    :pswitch_2
    const-string v10, "countTextVisible"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 686
    .local v4, countTextVisible:I
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    const-string v11, "count_text_visible"

    invoke-virtual {v10, v11}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 687
    .local v5, countTextVisibleIndex:I
    iget-object v10, v7, Lcom/htc/fragment/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    goto :goto_0

    .line 690
    .end local v4           #countTextVisible:I
    .end local v5           #countTextVisibleIndex:I
    :pswitch_3
    const-string v10, "alternativeName"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, alternativeName:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    const-string v11, "alternative_name"

    invoke-virtual {v10, v11}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 692
    .local v1, alternativeNameIndex:I
    iget-object v10, v7, Lcom/htc/fragment/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    aput-object v0, v10, v1

    goto :goto_0

    .line 678
    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
