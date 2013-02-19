.class Lcom/htc/app/FileScanner$1;
.super Ljava/lang/Object;
.source "FileScanner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FileScanner;->sortByComparator(Ljava/util/Map;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FileScanner;


# direct methods
.method constructor <init>(Lcom/htc/app/FileScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, Lcom/htc/app/FileScanner$1;->this$0:Lcom/htc/app/FileScanner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 700
    check-cast p2, Ljava/util/Map$Entry;

    .end local p2
    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 701
    .local v1, object2:Ljava/lang/Comparable;
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 702
    .local v0, object1:Ljava/lang/Object;
    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method
