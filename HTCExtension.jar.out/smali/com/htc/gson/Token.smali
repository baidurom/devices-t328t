.class final Lcom/htc/gson/Token;
.super Ljava/lang/Object;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public endColumn:I

.field public endLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lcom/htc/gson/Token;

.field public specialToken:Lcom/htc/gson/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "kind"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/gson/Token;-><init>(ILjava/lang/String;)V

    .line 120
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "kind"
    .parameter "image"

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lcom/htc/gson/Token;->kind:I

    .line 128
    iput-object p2, p0, Lcom/htc/gson/Token;->image:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public static newToken(I)Lcom/htc/gson/Token;
    .locals 1
    .parameter "ofKind"

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/gson/Token;->newToken(ILjava/lang/String;)Lcom/htc/gson/Token;

    move-result-object v0

    return-object v0
.end method

.method public static newToken(ILjava/lang/String;)Lcom/htc/gson/Token;
    .locals 1
    .parameter "ofKind"
    .parameter "image"

    .prologue
    .line 157
    .line 159
    new-instance v0, Lcom/htc/gson/Token;

    invoke-direct {v0, p0, p1}, Lcom/htc/gson/Token;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/gson/Token;->image:Ljava/lang/String;

    return-object v0
.end method
