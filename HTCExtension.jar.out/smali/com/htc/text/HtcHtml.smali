.class public Lcom/htc/text/HtcHtml;
.super Ljava/lang/Object;
.source "HtcHtml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/text/HtcHtml$HtmlParser;,
        Lcom/htc/text/HtcHtml$TagHandler;,
        Lcom/htc/text/HtcHtml$ImageGetter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromHtml(Lcom/htc/text/HtcHtmlToSpannedConverter;)Landroid/text/Spanned;
    .locals 1
    .parameter "converter"

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/htc/text/HtcHtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-static {p0, v0, v0}, Lcom/htc/text/HtcHtml;->fromHtml(Ljava/lang/String;Lcom/htc/text/HtcHtml$ImageGetter;Lcom/htc/text/HtcHtml$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;Lcom/htc/text/HtcHtml$ImageGetter;Lcom/htc/text/HtcHtml$TagHandler;)Landroid/text/Spanned;
    .locals 5
    .parameter "source"
    .parameter "imageGetter"
    .parameter "tagHandler"

    .prologue
    .line 120
    new-instance v2, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v2}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    .line 122
    .local v2, parser:Lorg/ccil/cowan/tagsoup/Parser;
    :try_start_0
    const-string v3, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Lcom/htc/text/HtcHtml$HtmlParser;->access$000()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    new-instance v0, Lcom/htc/text/HtcHtmlToSpannedConverter;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/htc/text/HtcHtmlToSpannedConverter;-><init>(Ljava/lang/String;Lcom/htc/text/HtcHtml$ImageGetter;Lcom/htc/text/HtcHtml$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;)V

    .line 134
    .local v0, converter:Lcom/htc/text/HtcHtmlToSpannedConverter;
    invoke-virtual {v0}, Lcom/htc/text/HtcHtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object v3

    return-object v3

    .line 123
    .end local v0           #converter:Lcom/htc/text/HtcHtmlToSpannedConverter;
    :catch_0
    move-exception v1

    .line 125
    .local v1, e:Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 126
    .end local v1           #e:Lorg/xml/sax/SAXNotRecognizedException;
    :catch_1
    move-exception v1

    .line 128
    .local v1, e:Lorg/xml/sax/SAXNotSupportedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getParserInstance()Lorg/ccil/cowan/tagsoup/Parser;
    .locals 4

    .prologue
    .line 142
    new-instance v1, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v1}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    .line 144
    .local v1, parser:Lorg/ccil/cowan/tagsoup/Parser;
    :try_start_0
    const-string v2, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Lcom/htc/text/HtcHtml$HtmlParser;->access$000()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    return-object v1

    .line 145
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 148
    .end local v0           #e:Lorg/xml/sax/SAXNotRecognizedException;
    :catch_1
    move-exception v0

    .line 150
    .local v0, e:Lorg/xml/sax/SAXNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v0, out:Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/htc/text/HtcHtml;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 8
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0xa

    .line 226
    const-string v0, "<p>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    move v2, p2

    .local v2, i:I
    :goto_0
    if-ge v2, p3, :cond_3

    .line 230
    invoke-static {p1, v7, v2, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    .line 231
    .local v6, next:I
    if-gez v6, :cond_0

    .line 232
    move v6, p3

    .line 235
    :cond_0
    const/4 v4, 0x0

    .line 237
    .local v4, nl:I
    :goto_1
    if-ge v6, p3, :cond_1

    invoke-interface {p1, v6}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_1

    .line 238
    add-int/lit8 v4, v4, 0x1

    .line 239
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 242
    :cond_1
    sub-int v3, v6, v4

    if-ne v6, p3, :cond_2

    const/4 v5, 0x1

    :goto_2
    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/text/HtcHtml;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V

    .line 229
    move v2, v6

    goto :goto_0

    .line 242
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 245
    .end local v4           #nl:I
    .end local v6           #next:I
    :cond_3
    const-string v0, "</p>\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    return-void
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 8
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 208
    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 209
    const-class v7, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v1, p3, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 210
    .local v4, next:I
    const-class v7, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v1, v4, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/QuoteSpan;

    .line 212
    .local v6, quotes:[Landroid/text/style/QuoteSpan;
    move-object v0, v6

    .local v0, arr$:[Landroid/text/style/QuoteSpan;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 213
    .local v5, quote:Landroid/text/style/QuoteSpan;
    const-string v7, "<blockquote>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 216
    .end local v5           #quote:Landroid/text/style/QuoteSpan;
    :cond_0
    invoke-static {p0, p1, v1, v4}, Lcom/htc/text/HtcHtml;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 218
    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 219
    .restart local v5       #quote:Landroid/text/style/QuoteSpan;
    const-string v7, "</blockquote>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 208
    .end local v5           #quote:Landroid/text/style/QuoteSpan;
    :cond_1
    move v1, v4

    goto :goto_0

    .line 222
    .end local v0           #arr$:[Landroid/text/style/QuoteSpan;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #next:I
    .end local v6           #quotes:[Landroid/text/style/QuoteSpan;
    :cond_2
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V
    .locals 10
    .parameter "out"
    .parameter "text"

    .prologue
    .line 170
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v4

    .line 173
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v8

    if-ge v2, v8, :cond_6

    .line 174
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v4, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 175
    .local v6, next:I
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v6, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ParagraphStyle;

    .line 176
    .local v7, style:[Landroid/text/style/ParagraphStyle;
    const-string v1, " "

    .line 177
    .local v1, elements:Ljava/lang/String;
    const/4 v5, 0x0

    .line 179
    .local v5, needDiv:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_3

    .line 180
    aget-object v8, v7, v3

    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v8, :cond_0

    .line 181
    aget-object v8, v7, v3

    check-cast v8, Landroid/text/style/AlignmentSpan;

    invoke-interface {v8}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 183
    .local v0, align:Landroid/text/Layout$Alignment;
    const/4 v5, 0x1

    .line 184
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_1

    .line 185
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"center\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .end local v0           #align:Landroid/text/Layout$Alignment;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 186
    .restart local v0       #align:Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_2

    .line 187
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"right\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 189
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"left\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 193
    .end local v0           #align:Landroid/text/Layout$Alignment;
    :cond_3
    if-eqz v5, :cond_4

    .line 194
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<div "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_4
    invoke-static {p0, p1, v2, v6}, Lcom/htc/text/HtcHtml;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 199
    if-eqz v5, :cond_5

    .line 200
    const-string v8, "</div>"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_5
    move v2, v6

    goto/16 :goto_0

    .line 203
    .end local v1           #elements:Ljava/lang/String;
    .end local v3           #j:I
    .end local v5           #needDiv:Z
    .end local v6           #next:I
    .end local v7           #style:[Landroid/text/style/ParagraphStyle;
    :cond_6
    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V
    .locals 9
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "nl"
    .parameter "last"

    .prologue
    .line 252
    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_18

    .line 253
    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v1, p3, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 254
    .local v3, next:I
    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v1, v3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/CharacterStyle;

    .line 257
    .local v6, style:[Landroid/text/style/CharacterStyle;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_c

    .line 258
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StyleSpan;

    if-eqz v7, :cond_1

    .line 259
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/StyleSpan;

    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v5

    .line 261
    .local v5, s:I
    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_0

    .line 262
    const-string v7, "<b>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_0
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_1

    .line 265
    const-string v7, "<i>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .end local v5           #s:I
    :cond_1
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/TypefaceSpan;

    if-eqz v7, :cond_2

    .line 269
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v7}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, s:Ljava/lang/String;
    const-string v7, "monospace"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 272
    const-string v7, "<tt>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .end local v5           #s:Ljava/lang/String;
    :cond_2
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SuperscriptSpan;

    if-eqz v7, :cond_3

    .line 276
    const-string v7, "<sup>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_3
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SubscriptSpan;

    if-eqz v7, :cond_4

    .line 279
    const-string v7, "<sub>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_4
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_5

    .line 282
    const-string v7, "<u>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_5
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StrikethroughSpan;

    if-eqz v7, :cond_6

    .line 285
    const-string v7, "<strike>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_6
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/URLSpan;

    if-eqz v7, :cond_7

    .line 288
    const-string v7, "<a href=\""

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/URLSpan;

    invoke-virtual {v7}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_7
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/ImageSpan;

    if-eqz v7, :cond_8

    .line 293
    const-string v7, "<img src=\""

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/ImageSpan;

    invoke-virtual {v7}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    move v1, v3

    .line 300
    :cond_8
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v7, :cond_9

    .line 301
    const-string v7, "<font size =\""

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v7}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v7

    div-int/lit8 v7, v7, 0x6

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    const-string v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_9
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_b

    .line 306
    const-string v7, "<font color =\"#"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    const/high16 v8, 0x100

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, color:Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-ge v7, v8, :cond_a

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 312
    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .end local v0           #color:Ljava/lang/String;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 317
    :cond_c
    invoke-static {p0, p1, v1, v3}, Lcom/htc/text/HtcHtml;->withinStyle(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 319
    array-length v7, v6

    add-int/lit8 v2, v7, -0x1

    :goto_3
    if-ltz v2, :cond_17

    .line 320
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_d

    .line 321
    const-string v7, "</font>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_d
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v7, :cond_e

    .line 324
    const-string v7, "</font>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_e
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/URLSpan;

    if-eqz v7, :cond_f

    .line 327
    const-string v7, "</a>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_f
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StrikethroughSpan;

    if-eqz v7, :cond_10

    .line 330
    const-string v7, "</strike>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_10
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_11

    .line 333
    const-string v7, "</u>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_11
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SubscriptSpan;

    if-eqz v7, :cond_12

    .line 336
    const-string v7, "</sub>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_12
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SuperscriptSpan;

    if-eqz v7, :cond_13

    .line 339
    const-string v7, "</sup>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_13
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/TypefaceSpan;

    if-eqz v7, :cond_14

    .line 342
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v7}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    .line 344
    .restart local v5       #s:Ljava/lang/String;
    const-string v7, "monospace"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 345
    const-string v7, "</tt>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .end local v5           #s:Ljava/lang/String;
    :cond_14
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StyleSpan;

    if-eqz v7, :cond_16

    .line 349
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/StyleSpan;

    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v5

    .line 351
    .local v5, s:I
    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_15

    .line 352
    const-string v7, "</b>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_15
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_16

    .line 355
    const-string v7, "</i>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .end local v5           #s:I
    :cond_16
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_3

    .line 252
    :cond_17
    move v1, v3

    goto/16 :goto_0

    .line 361
    .end local v2           #j:I
    .end local v3           #next:I
    .end local v6           #style:[Landroid/text/style/CharacterStyle;
    :cond_18
    if-eqz p5, :cond_19

    const-string v4, ""

    .line 363
    .local v4, p:Ljava/lang/String;
    :goto_4
    const/4 v7, 0x1

    if-ne p4, v7, :cond_1a

    .line 364
    const-string v7, "<br>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :goto_5
    return-void

    .line 361
    .end local v4           #p:Ljava/lang/String;
    :cond_19
    const-string v4, "</p>\n<p>"

    goto :goto_4

    .line 365
    .restart local v4       #p:Ljava/lang/String;
    :cond_1a
    const/4 v7, 0x2

    if-ne p4, v7, :cond_1b

    .line 366
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 368
    :cond_1b
    const/4 v1, 0x2

    :goto_6
    if-ge v1, p4, :cond_1c

    .line 369
    const-string v7, "<br>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 372
    :cond_1c
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 5
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v4, 0x20

    .line 378
    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_7

    .line 379
    invoke-interface {p1, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 381
    .local v0, c:C
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_0

    .line 382
    const-string v2, "&lt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_0
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_1

    .line 384
    const-string v2, "&gt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 385
    :cond_1
    const/16 v2, 0x26

    if-ne v0, v2, :cond_2

    .line 386
    const-string v2, "&amp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 387
    :cond_2
    const/16 v2, 0x7e

    if-gt v0, v2, :cond_3

    if-ge v0, v4, :cond_4

    .line 388
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 389
    :cond_4
    if-ne v0, v4, :cond_6

    .line 390
    :goto_2
    add-int/lit8 v2, v1, 0x1

    if-ge v2, p3, :cond_5

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_5

    .line 391
    const-string v2, "&nbsp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 395
    :cond_5
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 397
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 400
    .end local v0           #c:C
    :cond_7
    return-void
.end method
