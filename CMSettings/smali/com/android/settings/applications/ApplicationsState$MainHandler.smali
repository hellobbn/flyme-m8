.class Lorg/flerovium/settings/applications/ApplicationsState$MainHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/applications/ApplicationsState;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lorg/flerovium/settings/applications/ApplicationsState$MainHandler;->this$0:Lorg/flerovium/settings/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 371
    iget-object v2, p0, Lorg/flerovium/settings/applications/ApplicationsState$MainHandler;->this$0:Lorg/flerovium/settings/applications/ApplicationsState;

    invoke-virtual {v2}, Lorg/flerovium/settings/applications/ApplicationsState;->rebuildActiveSessions()V

    .line 372
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 374
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/flerovium/settings/applications/ApplicationsState$Session;

    .line 375
    .local v1, "s":Lorg/flerovium/settings/applications/ApplicationsState$Session;
    iget-object v2, p0, Lorg/flerovium/settings/applications/ApplicationsState$MainHandler;->this$0:Lorg/flerovium/settings/applications/ApplicationsState;

    iget-object v2, v2, Lorg/flerovium/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, v1, Lorg/flerovium/settings/applications/ApplicationsState$Session;->mCallbacks:Lorg/flerovium/settings/applications/ApplicationsState$Callbacks;

    iget-object v3, v1, Lorg/flerovium/settings/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lorg/flerovium/settings/applications/ApplicationsState$Callbacks;->onRebuildComplete(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 380
    .end local v1    # "s":Lorg/flerovium/settings/applications/ApplicationsState$Session;
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/flerovium/settings/applications/ApplicationsState$MainHandler;->this$0:Lorg/flerovium/settings/applications/ApplicationsState;

    iget-object v2, v2, Lorg/flerovium/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 381
    iget-object v2, p0, Lorg/flerovium/settings/applications/ApplicationsState$MainHandler;->this$0:Lorg/flerovium/settings/applications/ApplicationsState;

    iget-object v2, v2, Lorg/flerovium/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/flerovium/settings/applications/ApplicationsState$Session;

    iget-object v2, v2, Lorg/flerovium/settings/applications/ApplicationsState$Session;->mCallbacks:Lorg/flerovium/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lorg/flerovium/settings/applications/ApplicationsState$Callbacks;->onPackageListChanged()V

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 385
    .end local v0    # "i":I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lorg/flerovium/settings/applications/ApplicationsState$MainHandler;->this$0:Lorg/flerovium/settings/applications/ApplicationsState;

    iget-object v2, v2, Lorg/flerovium/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 386
    iget-object v2, p0, Lorg/flerovium/settings/applications/ApplicationsState$MainHandler;->this$0:Lorg/flerovium/settings/applications/ApplicationsState;

    iget-object v2, v2, Lorg/flerovium/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/flerovium/settings/applications/ApplicationsState$Session;

    iget-object v2, v2, Lorg/flerovium/settings/applications/ApplicationsState$Session;->mCallbacks:Lorg/flerovium/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lorg/flerovium/settings/applications/ApplicationsState$Callbacks;->onPackageIconChanged()V

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 390
    .end local v0    # "i":I
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lorg/flerovium/settings/applications/ApplicationsState$MainHandler;->this$0:Lorg/flerovium/settings/applications/ApplicationsState;

    iget-object v2, v2, Lorg/flerovium/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 391
    iget-object v2, p0, Lorg/flerovium/settings/applications/ApplicationsState$MainHandler;->this$0:Lorg/flerovium/settings/applications/ApplicationsState;

    iget-object v2, v2, Lorg/flerovium/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/flerovium/settings/applications/ApplicationsState$Session;

    iget-object v3, v2, Lorg/flerovium/settings/applications/ApplicationsState$Session;->mCallbacks:Lorg/flerovium/settings/applications/ApplicationsState$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lorg/flerovium/settings/applications/ApplicationsState$Callbacks;->onPackageSizeChanged(Ljava/lang/String;)V

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 396
    .end local v0    # "i":I
    :pswitch_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lorg/flerovium/settings/applications/ApplicationsState$MainHandler;->this$0:Lorg/flerovium/settings/applications/ApplicationsState;

    iget-object v2, v2, Lorg/flerovium/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 397
    iget-object v2, p0, Lorg/flerovium/settings/applications/ApplicationsState$MainHandler;->this$0:Lorg/flerovium/settings/applications/ApplicationsState;

    iget-object v2, v2, Lorg/flerovium/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/flerovium/settings/applications/ApplicationsState$Session;

    iget-object v2, v2, Lorg/flerovium/settings/applications/ApplicationsState$Session;->mCallbacks:Lorg/flerovium/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lorg/flerovium/settings/applications/ApplicationsState$Callbacks;->onAllSizesComputed()V

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 401
    .end local v0    # "i":I
    :pswitch_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v2, p0, Lorg/flerovium/settings/applications/ApplicationsState$MainHandler;->this$0:Lorg/flerovium/settings/applications/ApplicationsState;

    iget-object v2, v2, Lorg/flerovium/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 402
    iget-object v2, p0, Lorg/flerovium/settings/applications/ApplicationsState$MainHandler;->this$0:Lorg/flerovium/settings/applications/ApplicationsState;

    iget-object v2, v2, Lorg/flerovium/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/flerovium/settings/applications/ApplicationsState$Session;

    iget-object v3, v2, Lorg/flerovium/settings/applications/ApplicationsState$Session;->mCallbacks:Lorg/flerovium/settings/applications/ApplicationsState$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_6
    invoke-interface {v3, v2}, Lorg/flerovium/settings/applications/ApplicationsState$Callbacks;->onRunningStateChanged(Z)V

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 402
    :cond_1
    const/4 v2, 0x0

    goto :goto_6

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
