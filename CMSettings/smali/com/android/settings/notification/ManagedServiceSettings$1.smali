.class Lorg/flerovium/settings/notification/ManagedServiceSettings$1;
.super Landroid/database/ContentObserver;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/notification/ManagedServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/notification/ManagedServiceSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/notification/ManagedServiceSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/flerovium/settings/notification/ManagedServiceSettings$1;->this$0:Lorg/flerovium/settings/notification/ManagedServiceSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/flerovium/settings/notification/ManagedServiceSettings$1;->this$0:Lorg/flerovium/settings/notification/ManagedServiceSettings;

    # invokes: Lorg/flerovium/settings/notification/ManagedServiceSettings;->updateList()V
    invoke-static {v0}, Lorg/flerovium/settings/notification/ManagedServiceSettings;->access$000(Lorg/flerovium/settings/notification/ManagedServiceSettings;)V

    .line 76
    return-void
.end method
