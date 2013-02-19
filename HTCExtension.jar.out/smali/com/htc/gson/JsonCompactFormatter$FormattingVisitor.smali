.class Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;
.super Ljava/lang/Object;
.source "JsonCompactFormatter.java"

# interfaces
.implements Lcom/htc/gson/JsonElementVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/gson/JsonCompactFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormattingVisitor"
.end annotation


# instance fields
.field private final escaper:Lcom/htc/gson/Escaper;

.field private final serializeNulls:Z

.field private final writer:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;Z)V
    .locals 0
    .parameter "writer"
    .parameter "escaper"
    .parameter "serializeNulls"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    .line 37
    iput-object p2, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->escaper:Lcom/htc/gson/Escaper;

    .line 38
    iput-boolean p3, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->serializeNulls:Z

    .line 39
    return-void
.end method


# virtual methods
.method public endArray(Lcom/htc/gson/JsonArray;)V
    .locals 2
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x5d

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 107
    return-void
.end method

.method public endObject(Lcom/htc/gson/JsonObject;)V
    .locals 2
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x7d

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 169
    return-void
.end method

.method public startArray(Lcom/htc/gson/JsonArray;)V
    .locals 2
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x5b

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 63
    return-void
.end method

.method public startObject(Lcom/htc/gson/JsonObject;)V
    .locals 2
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x7b

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 115
    return-void
.end method

.method public visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonArray;Z)V
    .locals 2
    .parameter "parent"
    .parameter "member"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    if-nez p3, :cond_0

    .line 80
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 82
    :cond_0
    return-void
.end method

.method public visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonObject;Z)V
    .locals 2
    .parameter "parent"
    .parameter "member"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    if-nez p3, :cond_0

    .line 87
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 89
    :cond_0
    return-void
.end method

.method public visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonPrimitive;Z)V
    .locals 2
    .parameter "parent"
    .parameter "member"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    if-nez p3, :cond_0

    .line 72
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->escaper:Lcom/htc/gson/Escaper;

    invoke-virtual {p2, v0, v1}, Lcom/htc/gson/JsonPrimitive;->toString(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;)V

    .line 75
    return-void
.end method

.method public visitNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const-string v1, "null"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 55
    return-void
.end method

.method public visitNullArrayMember(Lcom/htc/gson/JsonArray;Z)V
    .locals 2
    .parameter "parent"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    if-nez p2, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 99
    :cond_0
    return-void
.end method

.method public visitNullObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Z)V
    .locals 1
    .parameter "parent"
    .parameter "memberName"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->serializeNulls:Z

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    check-cast v0, Lcom/htc/gson/JsonObject;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonObject;Z)V

    .line 161
    :cond_0
    return-void
.end method

.method public visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonArray;Z)V
    .locals 2
    .parameter "parent"
    .parameter "memberName"
    .parameter "member"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    if-nez p4, :cond_0

    .line 135
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 138
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    invoke-interface {v0, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 139
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const-string v1, "\":"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 140
    return-void
.end method

.method public visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonObject;Z)V
    .locals 2
    .parameter "parent"
    .parameter "memberName"
    .parameter "member"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    if-nez p4, :cond_0

    .line 145
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 148
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    invoke-interface {v0, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 149
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const-string v1, "\":"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 150
    return-void
.end method

.method public visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonPrimitive;Z)V
    .locals 2
    .parameter "parent"
    .parameter "memberName"
    .parameter "member"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    if-nez p4, :cond_0

    .line 124
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 127
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    invoke-interface {v0, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 128
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const-string v1, "\":"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 129
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->escaper:Lcom/htc/gson/Escaper;

    invoke-virtual {p3, v0, v1}, Lcom/htc/gson/JsonPrimitive;->toString(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;)V

    .line 130
    return-void
.end method

.method public visitPrimitive(Lcom/htc/gson/JsonPrimitive;)V
    .locals 2
    .parameter "primitive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->escaper:Lcom/htc/gson/Escaper;

    invoke-virtual {p1, v0, v1}, Lcom/htc/gson/JsonPrimitive;->toString(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;)V

    .line 47
    return-void
.end method
