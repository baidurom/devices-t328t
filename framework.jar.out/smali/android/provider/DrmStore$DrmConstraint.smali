.class public final Landroid/provider/DrmStore$DrmConstraint;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DrmStore;
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

    .line 7671
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7660
    iput-object v7, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    .line 7663
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mNoConstraint:Z

    .line 7665
    const/4 v6, -0x1

    iput v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mCount:I

    .line 7666
    iput-object v7, p0, Landroid/provider/DrmStore$DrmConstraint;->mStartDate:Ljava/util/Date;

    .line 7667
    iput-object v7, p0, Landroid/provider/DrmStore$DrmConstraint;->mEndDate:Ljava/util/Date;

    .line 7668
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mInterval:J

    .line 7672
    iput-object p1, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    .line 7674
    iget-object v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    if-eqz v6, :cond_2

    .line 7678
    iget-object v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v6}, Landroid/drm/mobile1/DrmConstraintInfo;->isNoConstraint()Z

    move-result v6

    iput-boolean v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mNoConstraint:Z

    .line 7680
    const-string v6, "DrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DrmConstraint, NoConstraint = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/provider/DrmStore$DrmConstraint;->mNoConstraint:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7684
    iget-object v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v6}, Landroid/drm/mobile1/DrmConstraintInfo;->getCount()I

    move-result v6

    iput v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mCount:I

    .line 7686
    const-string v6, "DrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DrmConstraint counts = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/provider/DrmStore$DrmConstraint;->mCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7689
    iget-object v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v6}, Landroid/drm/mobile1/DrmConstraintInfo;->getStartDate()Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mStartDate:Ljava/util/Date;

    .line 7690
    iget-object v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mStartDate:Ljava/util/Date;

    if-eqz v6, :cond_0

    .line 7692
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 7693
    .local v0, calendar:Ljava/util/Calendar;
    iget-object v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 7694
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 7695
    .local v5, year:I
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 7696
    .local v4, month:I
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 7697
    .local v1, day:I
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 7698
    .local v2, hours:I
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 7699
    .local v3, mins:I
    const-string v6, "DrmStore"

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

    .line 7703
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #day:I
    .end local v2           #hours:I
    .end local v3           #mins:I
    .end local v4           #month:I
    .end local v5           #year:I
    :cond_0
    iget-object v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v6}, Landroid/drm/mobile1/DrmConstraintInfo;->getEndDate()Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mEndDate:Ljava/util/Date;

    .line 7704
    iget-object v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mEndDate:Ljava/util/Date;

    if-eqz v6, :cond_1

    .line 7706
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 7707
    .restart local v0       #calendar:Ljava/util/Calendar;
    iget-object v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 7708
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 7709
    .restart local v5       #year:I
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 7710
    .restart local v4       #month:I
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 7711
    .restart local v1       #day:I
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 7712
    .restart local v2       #hours:I
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 7713
    .restart local v3       #mins:I
    const-string v6, "DrmStore"

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

    .line 7717
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #day:I
    .end local v2           #hours:I
    .end local v3           #mins:I
    .end local v4           #month:I
    .end local v5           #year:I
    :cond_1
    iget-object v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v6}, Landroid/drm/mobile1/DrmConstraintInfo;->getInterval()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/provider/DrmStore$DrmConstraint;->mInterval:J

    .line 7719
    const-string v6, "DrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DrmConstraint, Interval = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/provider/DrmStore$DrmConstraint;->mInterval:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7722
    :cond_2
    return-void
.end method

.method static synthetic access$000(Landroid/provider/DrmStore$DrmConstraint;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 7659
    iget-boolean v0, p0, Landroid/provider/DrmStore$DrmConstraint;->mNoConstraint:Z

    return v0
.end method

.method static synthetic access$100(Landroid/provider/DrmStore$DrmConstraint;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 7659
    iget v0, p0, Landroid/provider/DrmStore$DrmConstraint;->mCount:I

    return v0
.end method

.method static synthetic access$200(Landroid/provider/DrmStore$DrmConstraint;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 7659
    iget-wide v0, p0, Landroid/provider/DrmStore$DrmConstraint;->mInterval:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/provider/DrmStore$DrmConstraint;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7659
    iget-object v0, p0, Landroid/provider/DrmStore$DrmConstraint;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$400(Landroid/provider/DrmStore$DrmConstraint;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7659
    iget-object v0, p0, Landroid/provider/DrmStore$DrmConstraint;->mEndDate:Ljava/util/Date;

    return-object v0
.end method


# virtual methods
.method public getConstraint()Landroid/drm/mobile1/DrmConstraintInfo;
    .locals 1

    .prologue
    .line 7729
    iget-object v0, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 7741
    iget-object v0, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    if-nez v0, :cond_0

    .line 7742
    const/4 v0, -0x1

    .line 7744
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v0}, Landroid/drm/mobile1/DrmConstraintInfo;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 7760
    iget-object v1, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    if-nez v1, :cond_1

    .line 7767
    :cond_0
    :goto_0
    return-object v0

    .line 7764
    :cond_1
    iget-object v1, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v1}, Landroid/drm/mobile1/DrmConstraintInfo;->getEndDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7767
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v1}, Landroid/drm/mobile1/DrmConstraintInfo;->getEndDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/provider/DrmStore$DrmConstraint;->mDifferential:J

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getInterval()J
    .locals 2

    .prologue
    .line 7772
    iget-object v0, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    if-nez v0, :cond_0

    .line 7773
    const-wide/16 v0, -0x1

    .line 7775
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v0}, Landroid/drm/mobile1/DrmConstraintInfo;->getInterval()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 7748
    iget-object v1, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    if-nez v1, :cond_1

    .line 7755
    :cond_0
    :goto_0
    return-object v0

    .line 7752
    :cond_1
    iget-object v1, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v1}, Landroid/drm/mobile1/DrmConstraintInfo;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7755
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v1}, Landroid/drm/mobile1/DrmConstraintInfo;->getStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/provider/DrmStore$DrmConstraint;->mDifferential:J

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public isNoConstraint()Z
    .locals 1

    .prologue
    .line 7733
    iget-object v0, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    if-nez v0, :cond_0

    .line 7734
    const/4 v0, 0x0

    .line 7737
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/provider/DrmStore$DrmConstraint;->mConstraint:Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-virtual {v0}, Landroid/drm/mobile1/DrmConstraintInfo;->isNoConstraint()Z

    move-result v0

    goto :goto_0
.end method

.method public setDisserential(J)V
    .locals 0
    .parameter "differential"

    .prologue
    .line 7779
    iput-wide p1, p0, Landroid/provider/DrmStore$DrmConstraint;->mDifferential:J

    .line 7780
    return-void
.end method
