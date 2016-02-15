.class Lorg/flerovium/settings/users/AppRestrictionsFragment$3;
.super Ljava/lang/Thread;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/users/AppRestrictionsFragment;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/users/AppRestrictionsFragment;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lorg/flerovium/settings/users/AppRestrictionsFragment$3;->this$0:Lorg/flerovium/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/flerovium/settings/users/AppRestrictionsFragment$3;->this$0:Lorg/flerovium/settings/users/AppRestrictionsFragment;

    # invokes: Lorg/flerovium/settings/users/AppRestrictionsFragment;->applyUserAppsStates()V
    invoke-static {v0}, Lorg/flerovium/settings/users/AppRestrictionsFragment;->access$100(Lorg/flerovium/settings/users/AppRestrictionsFragment;)V

    .line 307
    return-void
.end method
