.class public Lcom/htc/autotest/middleware/CSREvent;
.super Ljava/lang/Object;
.source "CSREvent.java"


# instance fields
.field private mEventString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "strInput"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/htc/autotest/middleware/CSREvent;->mEventString:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/autotest/middleware/CSREvent;->mEventString:Ljava/lang/String;

    return-object v0
.end method
