<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <Title>Znackovací jazyky - Semestrální práce</Title>
  </head>
  <body>
  <Header>
    <h1>Heroes of the Storm</h1>
  </Header>
  <xsl:for-each select="Settings/Options">
    <h2>Graphics</h2>
    <table border="1">
      <tr bgcolor="lightblue">
        <th>Nastavovaná vlastnost</th>
        <th>Hodnota</th>
      </tr>
      <tr>
        <th colspan="2">Display</th>
      </tr>
        <tr>
          <td>Display Mode:</td>
          <td><xsl:value-of select="Graphics/Display/DisplayMode"/></td>
        </tr>
        <tr>
          <td>Resolution:</td>
          <td><xsl:value-of select="Graphics/Display/Resolution"/></td>
        </tr>
        <tr>
          <td>Vertical Sync:</td>
          <td><xsl:value-of select="Graphics/Display/VerticalSync/@Enabled"/></td>
        </tr>
        <tr>
          <td>RefreshRate:</td>
          <td><xsl:value-of select="Graphics/Display/RefreshRate"/></td>
        </tr>
        <xsl:if test="Graphics/Display/Gamma &gt; 40">
          <tr>
            <td>Gamma:</td>
            <td><xsl:value-of select="Graphics/Display/Gamma"/></td>
          </tr>
        </xsl:if>
         <tr>
          <td>Antialias:</td>
          <td><xsl:value-of select="Graphics/Display/Antialias"/></td>
        </tr>
        <tr>
        <th colspan="2">Graphics</th>
      </tr>
        <tr>
          <td>GraphicsQuality:</td>
          <td><xsl:value-of select="Graphics/Graphics/GraphicsQuality"/></td>
        </tr>
        <tr>
          <td>Shaders:</td>
          <td><xsl:value-of select="Graphics/Graphics/Shaders"/></td>
        </tr>
        <tr>
          <td>Shadows:</td>
          <td><xsl:value-of select="Graphics/Graphics/Shadows"/></td>
        </tr>
        <tr>
          <td>Models:</td>
          <td><xsl:value-of select="Graphics/Graphics/Models"/></td>
        </tr>
        <tr>
          <td>Lightning:</td>
          <td><xsl:value-of select="Graphics/Graphics/Lightning"/></td>
        </tr>
        <tr>
          <td>Reflection:</td>
          <td><xsl:value-of select="Graphics/Graphics/Reflection"/></td>
        </tr>
        <tr>
          <td>IndirectShadows:</td>
          <td><xsl:value-of select="Graphics/Graphics/IndirectShadows"/></td>
        </tr>
        <tr>
          <td>TextureQuality:</td>
          <td><xsl:value-of select="Graphics/Graphics/TextureQuality"/></td>
        </tr>
        <tr>
          <td>Post-Processing:</td>
          <td><xsl:value-of select="Graphics/Graphics/Post-Processing"/></td>
        </tr>
        <tr>
          <td>Physics:</td>
          <td><xsl:value-of select="Graphics/Graphics/Physics"/></td>
        </tr>
        <tr>
          <td>Terrain:</td>
          <td><xsl:value-of select="Graphics/Graphics/Terrain"/></td>
        </tr>
        <tr>
          <td>Movies:</td>
          <td><xsl:value-of select="Graphics/Graphics/Movies"/></td>
        </tr>
        <tr>
          <td>Effects:</td>
          <td><xsl:value-of select="Graphics/Graphics/Effects"/></td>
        </tr>
    </table>
    <h2>Sound</h2>
    <table border="1">
      <tr bgcolor="lightblue">
        <th>Nastavovaná vlastnost</th>
        <th>Hodnota</th>
        <th>Povolené</th>
      </tr>
      <tr>
        <th colspan="3">Setup</th>
      </tr>
      <tr>
        <td>Output Device:</td>
        <td colspan="2"><xsl:value-of select="Sound/Setup/OutputDevice"/></td>
      </tr>
      <tr>
        <td>Enable Reverb:</td>
        <td colspan="2"><xsl:value-of select="Sound/Setup/OutputDevice/@EnableReverb"/></td>
      </tr>
      <tr>
        <td>Play In Background:</td>
        <td colspan="2"><xsl:value-of select="Sound/Setup/OutputDevice/@PlayInBackground"/></td>
      </tr>
      <tr>
         <td> Headphone Mode:</td>
        <td colspan="2"><xsl:value-of select="Sound/Setup/OutputDevice/@ HeadphoneMode"/></td>
      </tr> 
      <tr>
        <th colspan="3">Quality</th>
      </tr>  
      <tr>
        <td>SoundQuality:</td>
        <td colspan="2"><xsl:value-of select="Sound/Quality/SoundQuality"/></td>
      </tr>
      <tr>
        <td>Speaker Setup:</td>
        <td colspan="2"><xsl:value-of select="Sound/Quality/SpeakerSetup"/></td>
      </tr>
      <tr>
        <td>Sound Channels:</td>
        <td colspan="2"><xsl:value-of select="Sound/Quality/SoundChannels"/></td>
      </tr>
      <tr>
        <th colspan="3">Volume</th>
      </tr>
      <tr>
        <td>MasterVolume:</td>
        <td colspan="2"><xsl:value-of select="Sound/Volume/MasterVolume"/></td>
       </tr>
       <tr>
        <td>Music:</td>
        <td><xsl:value-of select="Sound/Volume/Music"/></td>
        <td><xsl:value-of select="Sound/Volume/Music/@Enabled"/></td>
       </tr>
       <tr>
        <td>Sound:</td>
        <td colspan="2"><xsl:value-of select="Sound/Volume/Sound/@Enabled"/></td>
       </tr>
       <tr>
        <td>Ambient Sounds:</td>
        <td><xsl:value-of select="Sound/Volume/AmbientSounds"/></td>
        <td><xsl:value-of select="Sound/Volume/AmbientSounds/@Enabled"/></td>
       </tr>
       <tr>
        <td>Sound Effects:</td>
        <td><xsl:value-of select="Sound/Volume/SoundEffects"/></td>
        <td><xsl:value-of select="Sound/Volume/SoundEffects/@Enabled"/></td>
       </tr>
       <tr>
        <td>Error Sounds:</td>
        <td colspan="2"><xsl:value-of select="Sound/Volume/ErrorSounds/@Enabled"/></td>
       </tr>
       <tr>
        <td>Interface Sounds:</td>
        <td><xsl:value-of select="Sound/Volume/InterfaceSounds"/></td>
        <td><xsl:value-of select="Sound/Volume/InterfaceSounds/@Enabled"/></td>
       </tr>
       <tr>
        <td>Voices:</td>
        <td><xsl:value-of select="Sound/Volume/Voices"/></td>
        <td><xsl:value-of select="Sound/Volume/Voices/@Enabled"/></td>
       </tr>
       <tr>
        <td>Respone Sounds:</td>
        <td colspan="2"><xsl:value-of select="Sound/Volume/ResponeSounds/@Enabled"/></td>
       </tr>
       <tr>
        <td>Announcer:</td>
        <td><xsl:value-of select="Sound/Volume/Announcer"/></td>
        <td><xsl:value-of select="Sound/Volume/Announcer/@Enabled"/></td>
       </tr>
      <tr>
        <th colspan="3">Subtitles</th>   
       </tr>
       <tr>
        <td>Display Subtitles:</td>
        <td colspan="2"><xsl:value-of select="Sound/Subtitles/@DisplaySubtitles"/></td>   
       </tr>
    </table>
    <h2>Mouse and Keyboard</h2>
    <table border="1">
      <tr bgcolor="lightblue">
        <th>Nastavovaná vlastnost</th>
        <th>Hodnota</th>
      </tr>
      <tr>
        <th colspan="2">Mouse</th>
      </tr>
      <tr>
        <td>Enable Mouse Sensitivity:</td>
        <td><xsl:value-of select="MouseandKeyboard/Mouse/@EnableMouseSensitivity"/></td>
      </tr>
      <tr>
        <td>Value:</td>
        <td><xsl:value-of select="MouseandKeyboard/Mouse/@Value"/></td>
      </tr>
      <tr>
        <td>Enable Mouse Wheel Zoom:</td>
        <td><xsl:value-of select="MouseandKeyboard/Mouse/@EnableMouseWheelZoom"/></td>
      </tr>
      <tr>
        <td>Reduce Mouse Lag:</td>
        <td><xsl:value-of select="MouseandKeyboard/Mouse/@ReduceMouseLag"/></td>
      </tr>
      <tr>
        <td>Confine Mouse Cursor:</td>
        <td><xsl:value-of select="MouseandKeyboard/Mouse/@ConfineMouseCursor"/></td>
      </tr>
      <tr>
        <td>Cursor Size:</td>
        <td><xsl:value-of select="MouseandKeyboard/Mouse/@CursorSize"/></td>
      </tr>
    </table>
    <h2>Gameplay</h2>
    <table border="1">
      <tr bgcolor="lightblue">
        <th>Nastavovaná vlastnost</th>
        <th>Hodnota</th>
      </tr>
      <tr>
        <th colspan="2">UserInterface</th>
      </tr>
      <tr>
        <td>Color Blind Mode:</td>
        <td><xsl:value-of select="Gameplay/UserInterface/@ColorBlindMode"/></td>
      </tr>
      <tr>
        <td>Right-Click Through Minimap:</td>
        <td><xsl:value-of select="Gameplay/UserInterface/@Right-ClickThroughMinimap"/></td>
      </tr>
    </table>
    <h2>Social</h2>
    <table border="1">
      <tr bgcolor="lightblue">
        <th>Nastavovaná vlastnost</th>
        <th>Hodnota</th>
      </tr>
      <tr>
        <th colspan="2">Chat</th>
      </tr>
      <tr>
        <td>Enable Mature Language Filter:</td>
        <td><xsl:value-of select="Social/Chat/@EnableMatureLanguageFilter"/></td>
      </tr>
      <tr>
        <td>Enable Allied Chat:</td>
        <td><xsl:value-of select="Social/Chat/@EnableAlliedChat"/></td>
      </tr>
      <tr>
        <th colspan="2">Chat Channels</th>
      </tr>
      <tr>
        <td>Rejoin Channels on Login:</td>
        <td><xsl:value-of select="Social/ChatChannels/@RejoinChannelsonLogin"/></td>
      </tr>
      <tr>
        <td>Show Blizzard Channels in-game:</td>
        <td><xsl:value-of select="Social/ChatChannels/@ShowBlizzardChannelsin-game"/></td>
      </tr>
      <tr>
        <td>Show non-Blizzard Channels in-game:</td>
        <td><xsl:value-of select="Social/ChatChannels/@Shownon-BlizzardChannelsin-game"/></td>
      </tr>
      <tr>
        <th colspan="2">Privacy</th>
      </tr>
      <tr>
        <td>Only Allow Friends To Send Me Invites:</td>
        <td><xsl:value-of select="Social/Privacy/@OnlyAllowFriendsToSendMeInvites"/></td>
      </tr>
      <tr>
        <td>Only Allow Friends To Send Me Messages:</td>
        <td><xsl:value-of select="Social/Privacy/@OnlyAllowFriendsToSendMeMessages"/></td>
      </tr>
    </table>
    <hr/>
  </xsl:for-each>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
