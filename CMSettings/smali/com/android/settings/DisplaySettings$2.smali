.class Lorg/flerovium/settings/DisplaySettings$2;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lorg/flerovium/settings/DisplaySettings$2;->this$0:Lorg/flerovium/settings/DisplaySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/flerovium/settings/DisplaySettings$2;->this$0:Lorg/flerovium/settings/DisplaySettings;

    # invokes: Lorg/flerovium/settings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V
    invoke-static {v0}, Lorg/flerovium/settings/DisplaySettings;->access$000(Lorg/flerovium/settings/DisplaySettings;)V

    .line 142
    return-void
.end method
