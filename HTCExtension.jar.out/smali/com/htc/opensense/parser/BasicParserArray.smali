.class public abstract Lcom/htc/opensense/parser/BasicParserArray;
.super Lcom/htc/opensense/parser/BasicParser;
.source "BasicParserArray.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/htc/opensense/parser/BasicParser;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAsJoinString()Ljava/lang/String;
.end method

.method public abstract parseInt(I)I
.end method

.method public abstract parseObject(I)Lcom/htc/opensense/parser/BasicParserObj;
.end method

.method public abstract parseString(I)Ljava/lang/String;
.end method

.method public abstract size()I
.end method
