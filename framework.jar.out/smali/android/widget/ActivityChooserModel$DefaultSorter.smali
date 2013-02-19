.class final Landroid/widget/ActivityChooserModel$DefaultSorter;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Landroid/widget/ActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultSorter"
.end annotation


# static fields
.field private static final WEIGHT_DECAY_COEFFICIENT:F = 1.0f


# instance fields
.field private final mPackageNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .locals 1
    .parameter

    .prologue
    .line 1019
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1019
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .parameter "intent"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1028
    .local p2, activities:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .local p3, historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    iget-object v7, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .line 1030
    .local v7, packageNameToActivityMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 1032
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 1034
    .local v1, activityCount:I
    iget-object v8, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mIsDefaultOrder:Z
    invoke-static {v8}, Landroid/widget/ActivityChooserModel;->access$500(Landroid/widget/ActivityChooserModel;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 1035
    iget-object v8, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->this$0:Landroid/widget/ActivityChooserModel;

    const/4 v9, 0x0

    #setter for: Landroid/widget/ActivityChooserModel;->mIsDefaultOrder:Z
    invoke-static {v8, v9}, Landroid/widget/ActivityChooserModel;->access$502(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1036
    iget-object v8, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->this$0:Landroid/widget/ActivityChooserModel;

    #calls: Landroid/widget/ActivityChooserModel;->setDefaultWeight(ILjava/util/List;)V
    invoke-static {v8, v1, p2}, Landroid/widget/ActivityChooserModel;->access$600(Landroid/widget/ActivityChooserModel;ILjava/util/List;)V

    .line 1039
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1040
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 1041
    .local v0, activity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    const/4 v8, 0x0

    iput v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 1043
    iget-object v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v9, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/widget/ActivityChooserModel;->access$400(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->lable:Ljava/lang/CharSequence;

    .line 1045
    iget-object v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1046
    .local v6, packageName:Ljava/lang/String;
    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1049
    .end local v0           #activity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v6           #packageName:Ljava/lang/String;
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 1050
    .local v4, lastShareIndex:I
    const/high16 v5, 0x3f80

    .line 1051
    .local v5, nextRecordWeight:F
    move v3, v4

    :goto_1
    if-ltz v3, :cond_3

    .line 1052
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 1053
    .local v2, historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    iget-object v8, v2, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1054
    .restart local v6       #packageName:Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 1055
    .restart local v0       #activity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v0, :cond_2

    .line 1056
    iget v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v9, v2, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iput v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 1057
    const/high16 v8, 0x3f80

    mul-float/2addr v5, v8

    .line 1051
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1061
    .end local v0           #activity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v2           #historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v6           #packageName:Ljava/lang/String;
    :cond_3
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1068
    return-void
.end method
