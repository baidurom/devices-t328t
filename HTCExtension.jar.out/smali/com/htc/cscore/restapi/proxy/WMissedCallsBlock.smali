.class public Lcom/htc/cscore/restapi/proxy/WMissedCallsBlock;
.super Ljava/lang/Object;
.source "WMissedCallsBlock.java"


# instance fields
.field public Contact:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson;

.field public MissedCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDeviceMissedCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson;)V
    .locals 0
    .parameter
    .parameter "person"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDeviceMissedCall;",
            ">;",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDeviceMissedCall;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/htc/cscore/restapi/proxy/WMissedCallsBlock;->MissedCalls:Ljava/util/ArrayList;

    .line 25
    iput-object p2, p0, Lcom/htc/cscore/restapi/proxy/WMissedCallsBlock;->Contact:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson;

    .line 26
    return-void
.end method
