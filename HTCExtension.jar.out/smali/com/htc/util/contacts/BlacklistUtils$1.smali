.class final Lcom/htc/util/contacts/BlacklistUtils$1;
.super Ljava/lang/Thread;
.source "BlacklistUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/BlacklistUtils;->addContactToBlacklist(Landroid/content/Context;JZZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isRuim:Z

.field final synthetic val$person_id:J


# direct methods
.method constructor <init>(JLandroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    iput-wide p1, p0, Lcom/htc/util/contacts/BlacklistUtils$1;->val$person_id:J

    iput-object p3, p0, Lcom/htc/util/contacts/BlacklistUtils$1;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/htc/util/contacts/BlacklistUtils$1;->val$isRuim:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 188
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/htc/util/contacts/BlacklistUtils$1;->val$person_id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 189
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/htc/util/contacts/BlacklistUtils$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/htc/util/contacts/BlacklistUtils$1;->val$isRuim:Z

    invoke-static {v1, v0, v2, v3}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMailForSim(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    .line 190
    return-void
.end method
