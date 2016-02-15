.class Lorg/flerovium/settings/cyanogenmod/SpamList$2;
.super Landroid/database/ContentObserver;
.source "SpamList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/cyanogenmod/SpamList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/cyanogenmod/SpamList;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/cyanogenmod/SpamList;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/flerovium/settings/cyanogenmod/SpamList$2;->this$0:Lorg/flerovium/settings/cyanogenmod/SpamList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lorg/flerovium/settings/cyanogenmod/SpamList$2;->this$0:Lorg/flerovium/settings/cyanogenmod/SpamList;

    # getter for: Lorg/flerovium/settings/cyanogenmod/SpamList;->mTask:Lorg/flerovium/settings/cyanogenmod/SpamList$FetchFilters;
    invoke-static {v0}, Lorg/flerovium/settings/cyanogenmod/SpamList;->access$200(Lorg/flerovium/settings/cyanogenmod/SpamList;)Lorg/flerovium/settings/cyanogenmod/SpamList$FetchFilters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/flerovium/settings/cyanogenmod/SpamList$2;->this$0:Lorg/flerovium/settings/cyanogenmod/SpamList;

    # getter for: Lorg/flerovium/settings/cyanogenmod/SpamList;->mTask:Lorg/flerovium/settings/cyanogenmod/SpamList$FetchFilters;
    invoke-static {v0}, Lorg/flerovium/settings/cyanogenmod/SpamList;->access$200(Lorg/flerovium/settings/cyanogenmod/SpamList;)Lorg/flerovium/settings/cyanogenmod/SpamList$FetchFilters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/flerovium/settings/cyanogenmod/SpamList$FetchFilters;->cancel(Z)Z

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/flerovium/settings/cyanogenmod/SpamList$2;->this$0:Lorg/flerovium/settings/cyanogenmod/SpamList;

    new-instance v1, Lorg/flerovium/settings/cyanogenmod/SpamList$FetchFilters;

    iget-object v2, p0, Lorg/flerovium/settings/cyanogenmod/SpamList$2;->this$0:Lorg/flerovium/settings/cyanogenmod/SpamList;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/flerovium/settings/cyanogenmod/SpamList$FetchFilters;-><init>(Lorg/flerovium/settings/cyanogenmod/SpamList;Lorg/flerovium/settings/cyanogenmod/SpamList$1;)V

    # setter for: Lorg/flerovium/settings/cyanogenmod/SpamList;->mTask:Lorg/flerovium/settings/cyanogenmod/SpamList$FetchFilters;
    invoke-static {v0, v1}, Lorg/flerovium/settings/cyanogenmod/SpamList;->access$202(Lorg/flerovium/settings/cyanogenmod/SpamList;Lorg/flerovium/settings/cyanogenmod/SpamList$FetchFilters;)Lorg/flerovium/settings/cyanogenmod/SpamList$FetchFilters;

    .line 115
    iget-object v0, p0, Lorg/flerovium/settings/cyanogenmod/SpamList$2;->this$0:Lorg/flerovium/settings/cyanogenmod/SpamList;

    # getter for: Lorg/flerovium/settings/cyanogenmod/SpamList;->mTask:Lorg/flerovium/settings/cyanogenmod/SpamList$FetchFilters;
    invoke-static {v0}, Lorg/flerovium/settings/cyanogenmod/SpamList;->access$200(Lorg/flerovium/settings/cyanogenmod/SpamList;)Lorg/flerovium/settings/cyanogenmod/SpamList$FetchFilters;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/flerovium/settings/cyanogenmod/SpamList$FetchFilters;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    return-void
.end method
