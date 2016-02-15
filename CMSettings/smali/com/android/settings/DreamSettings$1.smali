.class Lorg/flerovium/settings/DreamSettings$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/DreamSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/DreamSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/DreamSettings;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lorg/flerovium/settings/DreamSettings$1;->this$0:Lorg/flerovium/settings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/flerovium/settings/DreamSettings$1;->this$0:Lorg/flerovium/settings/DreamSettings;

    # getter for: Lorg/flerovium/settings/DreamSettings;->mBackend:Lorg/flerovium/settings/DreamBackend;
    invoke-static {v0}, Lorg/flerovium/settings/DreamSettings;->access$100(Lorg/flerovium/settings/DreamSettings;)Lorg/flerovium/settings/DreamBackend;

    move-result-object v0

    invoke-virtual {v0}, Lorg/flerovium/settings/DreamBackend;->startDreaming()V

    .line 146
    return-void
.end method
