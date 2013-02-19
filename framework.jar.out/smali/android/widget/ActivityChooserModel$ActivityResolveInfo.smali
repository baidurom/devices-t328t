.class public final Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActivityResolveInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public lable:Ljava/lang/CharSequence;

.field public final resolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Landroid/widget/ActivityChooserModel;

.field public weight:F


# direct methods
.method public constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .parameter
    .parameter "resolveInfo"

    .prologue
    .line 964
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 965
    iput-object p2, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 966
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/widget/ActivityChooserModel$ActivityResolveInfo;)I
    .locals 4
    .parameter "another"

    .prologue
    .line 993
    iget v2, p1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 995
    .local v1, weightOrder:I
    if-nez v1, :cond_0

    .line 996
    iget-object v2, p1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/ActivityChooserModel;->access$400(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, lab:Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->lable:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 1001
    .end local v0           #lab:Ljava/lang/String;
    .end local v1           #weightOrder:I
    :cond_0
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 943
    check-cast p1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->compareTo(Landroid/widget/ActivityChooserModel$ActivityResolveInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 975
    if-ne p0, p1, :cond_1

    .line 988
    :cond_0
    :goto_0
    return v1

    .line 978
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 979
    goto :goto_0

    .line 981
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 982
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 984
    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 985
    .local v0, other:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget v3, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 986
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 970
    iget v0, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    const-string/jumbo v1, "resolveInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    const-string v1, "; weight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    iget v3, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    float-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1011
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
