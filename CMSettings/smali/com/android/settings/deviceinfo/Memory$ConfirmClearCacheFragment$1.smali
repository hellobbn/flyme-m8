.class Lorg/flerovium/settings/deviceinfo/Memory$ConfirmClearCacheFragment$1;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/deviceinfo/Memory$ConfirmClearCacheFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/deviceinfo/Memory$ConfirmClearCacheFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/deviceinfo/Memory$ConfirmClearCacheFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lorg/flerovium/settings/deviceinfo/Memory$ConfirmClearCacheFragment$1;->this$0:Lorg/flerovium/settings/deviceinfo/Memory$ConfirmClearCacheFragment;

    iput-object p2, p0, Lorg/flerovium/settings/deviceinfo/Memory$ConfirmClearCacheFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 480
    iget-object v6, p0, Lorg/flerovium/settings/deviceinfo/Memory$ConfirmClearCacheFragment$1;->this$0:Lorg/flerovium/settings/deviceinfo/Memory$ConfirmClearCacheFragment;

    invoke-virtual {v6}, Lorg/flerovium/settings/deviceinfo/Memory$ConfirmClearCacheFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lorg/flerovium/settings/deviceinfo/Memory;

    .line 481
    .local v5, "target":Lorg/flerovium/settings/deviceinfo/Memory;
    iget-object v6, p0, Lorg/flerovium/settings/deviceinfo/Memory$ConfirmClearCacheFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 482
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 483
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v3, Lorg/flerovium/settings/deviceinfo/Memory$ClearCacheObserver;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v5, v6}, Lorg/flerovium/settings/deviceinfo/Memory$ClearCacheObserver;-><init>(Lorg/flerovium/settings/deviceinfo/Memory;I)V

    .line 485
    .local v3, "observer":Lorg/flerovium/settings/deviceinfo/Memory$ClearCacheObserver;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 486
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_0

    .line 488
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    return-void
.end method
