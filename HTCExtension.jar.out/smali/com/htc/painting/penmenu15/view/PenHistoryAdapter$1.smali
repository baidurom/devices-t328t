.class Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$1;
.super Ljava/lang/Object;
.source "PenHistoryAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$1;->this$0:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/painting/penmenu15/core/PenRepresentation;Lcom/htc/painting/penmenu15/core/PenRepresentation;)I
    .locals 9
    .parameter "object1"
    .parameter "object2"

    .prologue
    const-wide/16 v7, 0x0

    .line 113
    invoke-interface {p2}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getLastUsedTime()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getLastUsedTime()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 114
    .local v0, difference:J
    const/4 v2, 0x0

    .line 115
    .local v2, result:I
    cmp-long v3, v0, v7

    if-gez v3, :cond_1

    .line 116
    const/4 v2, -0x1

    .line 120
    :cond_0
    :goto_0
    return v2

    .line 117
    :cond_1
    cmp-long v3, v0, v7

    if-lez v3, :cond_0

    .line 118
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    check-cast p1, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .end local p1
    check-cast p2, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$1;->compare(Lcom/htc/painting/penmenu15/core/PenRepresentation;Lcom/htc/painting/penmenu15/core/PenRepresentation;)I

    move-result v0

    return v0
.end method
