.class public Lcom/htc/wrap/android/content/HtcWrapContentValues;
.super Ljava/lang/Object;
.source "HtcWrapContentValues.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStringArrayList(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "values"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public putStringArrayList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "values"
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p3, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 28
    return-void
.end method
