.class Lorg/flerovium/settings/SoundSettings$2;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/SoundSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/SoundSettings;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lorg/flerovium/settings/SoundSettings$2;->this$0:Lorg/flerovium/settings/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 343
    iget-object v4, p0, Lorg/flerovium/settings/SoundSettings$2;->this$0:Lorg/flerovium/settings/SoundSettings;

    # getter for: Lorg/flerovium/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/flerovium/settings/SoundSettings;->access$600(Lorg/flerovium/settings/SoundSettings;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 344
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v2, "summaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Lorg/flerovium/settings/SoundSettings$2;->this$0:Lorg/flerovium/settings/SoundSettings;

    # getter for: Lorg/flerovium/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/flerovium/settings/SoundSettings;->access$600(Lorg/flerovium/settings/SoundSettings;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/flerovium/settings/DefaultRingtonePreference;

    .line 346
    .local v1, "preference":Lorg/flerovium/settings/DefaultRingtonePreference;
    iget-object v4, p0, Lorg/flerovium/settings/SoundSettings$2;->this$0:Lorg/flerovium/settings/SoundSettings;

    # getter for: Lorg/flerovium/settings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lorg/flerovium/settings/SoundSettings;->access$700(Lorg/flerovium/settings/SoundSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lorg/flerovium/settings/DefaultRingtonePreference;->getSubId()I

    move-result v5

    # invokes: Lorg/flerovium/settings/SoundSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    invoke-static {v4, v6, v5}, Lorg/flerovium/settings/SoundSettings;->access$800(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 348
    .local v3, "summary":Ljava/lang/CharSequence;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    .end local v1    # "preference":Lorg/flerovium/settings/DefaultRingtonePreference;
    .end local v3    # "summary":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 351
    iget-object v4, p0, Lorg/flerovium/settings/SoundSettings$2;->this$0:Lorg/flerovium/settings/SoundSettings;

    # getter for: Lorg/flerovium/settings/SoundSettings;->mHandler:Lorg/flerovium/settings/SoundSettings$H;
    invoke-static {v4}, Lorg/flerovium/settings/SoundSettings;->access$200(Lorg/flerovium/settings/SoundSettings;)Lorg/flerovium/settings/SoundSettings$H;

    move-result-object v4

    invoke-virtual {v4, v6, v2}, Lorg/flerovium/settings/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 354
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "summaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_1
    iget-object v4, p0, Lorg/flerovium/settings/SoundSettings$2;->this$0:Lorg/flerovium/settings/SoundSettings;

    # getter for: Lorg/flerovium/settings/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;
    invoke-static {v4}, Lorg/flerovium/settings/SoundSettings;->access$900(Lorg/flerovium/settings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 355
    iget-object v4, p0, Lorg/flerovium/settings/SoundSettings$2;->this$0:Lorg/flerovium/settings/SoundSettings;

    # getter for: Lorg/flerovium/settings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lorg/flerovium/settings/SoundSettings;->access$700(Lorg/flerovium/settings/SoundSettings;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, -0x1

    # invokes: Lorg/flerovium/settings/SoundSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    invoke-static {v4, v7, v5}, Lorg/flerovium/settings/SoundSettings;->access$800(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 357
    .restart local v3    # "summary":Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 358
    iget-object v4, p0, Lorg/flerovium/settings/SoundSettings$2;->this$0:Lorg/flerovium/settings/SoundSettings;

    # getter for: Lorg/flerovium/settings/SoundSettings;->mHandler:Lorg/flerovium/settings/SoundSettings$H;
    invoke-static {v4}, Lorg/flerovium/settings/SoundSettings;->access$200(Lorg/flerovium/settings/SoundSettings;)Lorg/flerovium/settings/SoundSettings$H;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lorg/flerovium/settings/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 361
    .end local v3    # "summary":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method
