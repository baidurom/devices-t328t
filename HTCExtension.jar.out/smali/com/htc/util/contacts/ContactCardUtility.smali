.class public Lcom/htc/util/contacts/ContactCardUtility;
.super Ljava/lang/Object;
.source "ContactCardUtility.java"


# static fields
.field public static final CONTACT_CARD_CALL:I = 0x4

.field public static final CONTACT_CARD_DETAIL:I = 0x1

.field public static final CONTACT_CARD_MAIL:I = 0x3

.field public static final CONTACT_CARD_MESSAGE:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static final getViewUnknownContactCardWithMailIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "mail"

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/util/contacts/ContactCardUtility;->getViewUnknownContactCardWithMailIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final getViewUnknownContactCardWithMailIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5
    .parameter "mail"
    .parameter "defaultPage"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object v0

    .line 148
    :cond_1
    if-eq v2, p1, :cond_2

    if-eq v3, p1, :cond_2

    if-ne v4, p1, :cond_0

    .line 149
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/htc/provider/HtcContactsContract$UnknownContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 151
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    const-string v1, "unknown_mail_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    const-string v1, "mail"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    if-ne v3, p1, :cond_3

    .line 156
    const-string v1, "DefaultTab"

    const-string v2, "PEOPLE_DETAIL_MESSAGE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 157
    :cond_3
    if-ne v4, p1, :cond_0

    .line 158
    const-string v1, "DefaultTab"

    const-string v2, "PEOPLE_DETAIL_MAIL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static final getViewUnknownContactCardWithNumberIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "number"

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/util/contacts/ContactCardUtility;->getViewUnknownContactCardWithNumberIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final getViewUnknownContactCardWithNumberIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 4
    .parameter "number"
    .parameter "defaultPage"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    const-string v1, "-1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "-3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "-2"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    :cond_2
    invoke-static {p0}, Lcom/htc/util/contacts/ContactCardUtility;->getViewUnknownContactCardWithSpecialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_3
    const/4 v1, 0x1

    if-eq v1, p1, :cond_4

    if-eq v2, p1, :cond_4

    if-ne v3, p1, :cond_0

    .line 91
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/htc/provider/HtcContactsContract$UnknownContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 93
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    const-string v1, "number"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    if-ne v2, p1, :cond_5

    .line 97
    const-string v1, "DefaultTab"

    const-string v2, "PEOPLE_DETAIL_MESSAGE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 98
    :cond_5
    if-ne v3, p1, :cond_0

    .line 99
    const-string v1, "DefaultTab"

    const-string v2, "PEOPLE_DETAIL_CALL_HISTORY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static final getViewUnknownContactCardWithSpecialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "number"

    .prologue
    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-2"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/htc/provider/HtcContactsContract$UnknownContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 118
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    const-string v1, "number"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
