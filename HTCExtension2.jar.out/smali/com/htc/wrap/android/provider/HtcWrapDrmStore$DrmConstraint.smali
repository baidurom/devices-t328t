.class public final Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
.super Ljava/lang/Object;
.source "HtcWrapDrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapDrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrmConstraint"
.end annotation


# instance fields
.field private mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

.field private mCount:I

.field private mDifferential:J

.field private mEndDate:Ljava/util/Date;

.field private mInterval:J

.field private mNoConstraint:Z

.field private mStartDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/drm/mobile1/DrmConstraintInfo;)V
    .locals 13
    .parameter "constraint"

    .prologue
    const/16 v12, 0xb

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 688
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-object v7, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    .line 676
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mNoConstraint:Z

    .line 678
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mCount:I

    .line 679
    iput-object v7, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mStartDate:Ljava/util/Date;

    .line 680
    iput-object v7, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mEndDate:Ljava/util/Date;

    .line 681
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mInterval:J

    .line 689
    iput-object p1, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    .line 691
    iget-object v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    if-eqz v6, :cond_2

    .line 695
    iget-object v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v6}, Landroid/drm/mobile1/DrmConstraintInfo;->isNoConstraint()Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mNoConstraint:Z

    .line 697
    const-string v6, "HtcWrapDrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DrmConstraint, NoConstraint = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mNoConstraint:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v6}, Landroid/drm/mobile1/DrmConstraintInfo;->getCount()I

    move-result v6

    iput v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mCount:I

    .line 703
    const-string v6, "HtcWrapDrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DrmConstraint counts = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v6}, Landroid/drm/mobile1/DrmConstraintInfo;->getStartDate()Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mStartDate:Ljava/util/Date;

    .line 707
    iget-object v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mStartDate:Ljava/util/Date;

    if-eqz v6, :cond_0

    .line 709
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 710
    .local v0, calendar:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 711
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 712
    .local v5, year:I
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 713
    .local v4, month:I
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 714
    .local v1, day:I
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 715
    .local v2, hours:I
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 716
    .local v3, mins:I
    const-string v6, "HtcWrapDrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DrmConstraint, StartDate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #day:I
    .end local v2           #hours:I
    .end local v3           #mins:I
    .end local v4           #month:I
    .end local v5           #year:I
    :cond_0
    iget-object v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v6}, Landroid/drm/mobile1/DrmConstraintInfo;->getEndDate()Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mEndDate:Ljava/util/Date;

    .line 721
    iget-object v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mEndDate:Ljava/util/Date;

    if-eqz v6, :cond_1

    .line 723
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 724
    .restart local v0       #calendar:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 725
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 726
    .restart local v5       #year:I
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 727
    .restart local v4       #month:I
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 728
    .restart local v1       #day:I
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 729
    .restart local v2       #hours:I
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 730
    .restart local v3       #mins:I
    const-string v6, "HtcWrapDrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DrmConstraint, EndDate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #day:I
    .end local v2           #hours:I
    .end local v3           #mins:I
    .end local v4           #month:I
    .end local v5           #year:I
    :cond_1
    iget-object v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v6}, Landroid/drm/mobile1/DrmConstraintInfo;->getInterval()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mInterval:J

    .line 736
    const-string v6, "HtcWrapDrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DrmConstraint, Interval = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mInterval:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_2
    return-void
.end method


# virtual methods
.method public getConstraint()Landroid/drm/mobile1/DrmConstraintInfo;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    if-nez v0, :cond_0

    .line 767
    const/4 v0, -0x1

    .line 769
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v0}, Landroid/drm/mobile1/DrmConstraintInfo;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 793
    iget-object v1, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    if-nez v1, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-object v0

    .line 797
    :cond_1
    iget-object v1, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v1}, Landroid/drm/mobile1/DrmConstraintInfo;->getEndDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 800
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v1}, Landroid/drm/mobile1/DrmConstraintInfo;->getEndDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mDifferential:J

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getInterval()J
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    if-nez v0, :cond_0

    .line 810
    const-wide/16 v0, -0x1

    .line 812
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v0}, Landroid/drm/mobile1/DrmConstraintInfo;->getInterval()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 777
    iget-object v1, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    if-nez v1, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-object v0

    .line 781
    :cond_1
    iget-object v1, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v1}, Landroid/drm/mobile1/DrmConstraintInfo;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 784
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v1}, Landroid/drm/mobile1/DrmConstraintInfo;->getStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mDifferential:J

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public isNoConstraint()Z
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    if-nez v0, :cond_0

    .line 755
    const/4 v0, 0x0

    .line 758
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v0}, Landroid/drm/mobile1/DrmConstraintInfo;->isNoConstraint()Z

    move-result v0

    goto :goto_0
.end method

.method public setDisserential(J)V
    .locals 0
    .parameter "differential"

    .prologue
    .line 820
    iput-wide p1, p0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->mDifferential:J

    .line 821
    return-void
.end method
