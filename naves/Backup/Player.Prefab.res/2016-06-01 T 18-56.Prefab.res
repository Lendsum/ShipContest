<root dataType="Struct" type="Duality.Resources.Prefab" id="129723834">
  <assetInfo />
  <objTree dataType="Struct" type="Duality.GameObject" id="2347849529">
    <active dataType="Bool">true</active>
    <children />
    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="879143282">
      <_items dataType="Array" type="Duality.Component[]" id="2048893136" length="8">
        <item dataType="Struct" type="Duality.Components.Transform" id="413197165">
          <active dataType="Bool">true</active>
          <angle dataType="Float">0.003061029</angle>
          <angleAbs dataType="Float">0.003061029</angleAbs>
          <angleVel dataType="Float">0</angleVel>
          <angleVelAbs dataType="Float">0</angleVelAbs>
          <deriveAngle dataType="Bool">true</deriveAngle>
          <gameobj dataType="ObjectRef">2347849529</gameobj>
          <ignoreParent dataType="Bool">false</ignoreParent>
          <parentTransform />
          <pos dataType="Struct" type="Duality.Vector3">
            <X dataType="Float">100.794441</X>
            <Y dataType="Float">67.30885</Y>
            <Z dataType="Float">0</Z>
          </pos>
          <posAbs dataType="Struct" type="Duality.Vector3">
            <X dataType="Float">100.794441</X>
            <Y dataType="Float">67.30885</Y>
            <Z dataType="Float">0</Z>
          </posAbs>
          <scale dataType="Float">0.906190157</scale>
          <scaleAbs dataType="Float">0.906190157</scaleAbs>
          <vel dataType="Struct" type="Duality.Vector3">
            <X dataType="Float">0</X>
            <Y dataType="Float">0</Y>
            <Z dataType="Float">0</Z>
          </vel>
          <velAbs dataType="Struct" type="Duality.Vector3">
            <X dataType="Float">0</X>
            <Y dataType="Float">0</Y>
            <Z dataType="Float">0</Z>
          </velAbs>
        </item>
        <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3990016097">
          <active dataType="Bool">true</active>
          <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
            <A dataType="Byte">255</A>
            <B dataType="Byte">255</B>
            <G dataType="Byte">255</G>
            <R dataType="Byte">255</R>
          </colorTint>
          <customMat />
          <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
          <gameobj dataType="ObjectRef">2347849529</gameobj>
          <offset dataType="Int">0</offset>
          <pixelGrid dataType="Bool">false</pixelGrid>
          <rect dataType="Struct" type="Duality.Rect">
            <H dataType="Float">38</H>
            <W dataType="Float">43</W>
            <X dataType="Float">-21.5</X>
            <Y dataType="Float">-19</Y>
          </rect>
          <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
          <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
            <contentPath dataType="String">Data\ShipOne.Material.res</contentPath>
          </sharedMat>
          <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
        </item>
        <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1115658757">
          <active dataType="Bool">true</active>
          <angularDamp dataType="Float">0.3</angularDamp>
          <angularVel dataType="Float">0</angularVel>
          <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
          <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
          <colFilter />
          <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
          <continous dataType="Bool">false</continous>
          <explicitInertia dataType="Float">0</explicitInertia>
          <explicitMass dataType="Float">0</explicitMass>
          <fixedAngle dataType="Bool">false</fixedAngle>
          <gameobj dataType="ObjectRef">2347849529</gameobj>
          <ignoreGravity dataType="Bool">false</ignoreGravity>
          <joints />
          <linearDamp dataType="Float">0.3</linearDamp>
          <linearVel dataType="Struct" type="Duality.Vector2">
            <X dataType="Float">0</X>
            <Y dataType="Float">0</Y>
          </linearVel>
          <revolutions dataType="Float">0</revolutions>
          <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2613806737">
            <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="52422126">
              <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="3215599184">
                <density dataType="Float">1</density>
                <friction dataType="Float">0.3</friction>
                <parent dataType="ObjectRef">1115658757</parent>
                <restitution dataType="Float">0.3</restitution>
                <sensor dataType="Bool">false</sensor>
                <vertices dataType="Array" type="Duality.Vector2[]" id="4224159164">
                  <item dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-0.8737386</X>
                    <Y dataType="Float">-17.75641</Y>
                  </item>
                  <item dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-5.22240734</X>
                    <Y dataType="Float">3.12484884</Y>
                  </item>
                  <item dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">3.10014486</X>
                    <Y dataType="Float">2.99173713</Y>
                  </item>
                </vertices>
              </item>
              <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="3115560302">
                <density dataType="Float">1</density>
                <friction dataType="Float">0.3</friction>
                <parent dataType="ObjectRef">1115658757</parent>
                <restitution dataType="Float">0.3</restitution>
                <sensor dataType="Bool">false</sensor>
                <vertices dataType="Array" type="Duality.Vector2[]" id="2778381090">
                  <item dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-20.0053635</X>
                    <Y dataType="Float">5.96274662</Y>
                  </item>
                  <item dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">19.5226078</X>
                    <Y dataType="Float">5.070406</Y>
                  </item>
                  <item dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-0.828193545</X>
                    <Y dataType="Float">17.6227665</Y>
                  </item>
                </vertices>
              </item>
              <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1990670380">
                <density dataType="Float">1</density>
                <friction dataType="Float">0.3</friction>
                <parent dataType="ObjectRef">1115658757</parent>
                <position dataType="Struct" type="Duality.Vector2">
                  <X dataType="Float">-2.42383814</X>
                  <Y dataType="Float">5.7515955</Y>
                </position>
                <radius dataType="Float">437.929321</radius>
                <restitution dataType="Float">0.3</restitution>
                <sensor dataType="Bool">true</sensor>
              </item>
            </_items>
            <_size dataType="Int">3</_size>
            <_version dataType="Int">3</_version>
          </shapes>
        </item>
        <item dataType="Struct" type="naves.Player" id="1432440839">
          <_x003C_AceleratePower_x003E_k__BackingField dataType="Float">0</_x003C_AceleratePower_x003E_k__BackingField>
          <_x003C_AvailablePower_x003E_k__BackingField dataType="Float">100</_x003C_AvailablePower_x003E_k__BackingField>
          <_x003C_BulletPrefab_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
            <contentPath dataType="String">Data\Bullet.Prefab.res</contentPath>
          </_x003C_BulletPrefab_x003E_k__BackingField>
          <_x003C_FiringDelay_x003E_k__BackingField dataType="Float">10</_x003C_FiringDelay_x003E_k__BackingField>
          <_x003C_FollowCamera_x003E_k__BackingField dataType="Bool">true</_x003C_FollowCamera_x003E_k__BackingField>
          <_x003C_KeyboardControl_x003E_k__BackingField dataType="Bool">true</_x003C_KeyboardControl_x003E_k__BackingField>
          <_x003C_RadarTargets_x003E_k__BackingField dataType="Struct" type="System.Collections.Generic.List`1[[naves.ZombieController]]" id="3315662179">
            <_items dataType="Array" type="naves.ZombieController[]" id="457846502" length="0" />
            <_size dataType="Int">0</_size>
            <_version dataType="Int">0</_version>
          </_x003C_RadarTargets_x003E_k__BackingField>
          <_x003C_WeaponPower_x003E_k__BackingField dataType="Float">0</_x003C_WeaponPower_x003E_k__BackingField>
          <active dataType="Bool">true</active>
          <camera dataType="Struct" type="Duality.GameObject" id="3835831138">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2758503459">
              <_items dataType="Array" type="Duality.Component[]" id="3244043366" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="1901178774">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">3835831138</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform />
                  <pos dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">-500</Z>
                  </pos>
                  <posAbs dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">-500</Z>
                  </posAbs>
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">0</Z>
                  </vel>
                  <velAbs dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">0</Z>
                  </velAbs>
                </item>
                <item dataType="Struct" type="Duality.Components.Camera" id="78139649">
                  <active dataType="Bool">true</active>
                  <farZ dataType="Float">100000</farZ>
                  <focusDist dataType="Float">500</focusDist>
                  <gameobj dataType="ObjectRef">3835831138</gameobj>
                  <nearZ dataType="Float">0</nearZ>
                  <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="2025105473">
                    <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="1499966894" length="4">
                      <item dataType="Struct" type="Duality.Components.Camera+Pass" id="4084745552">
                        <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba">
                          <A dataType="Byte">0</A>
                          <B dataType="Byte">0</B>
                          <G dataType="Byte">0</G>
                          <R dataType="Byte">0</R>
                        </clearColor>
                        <clearDepth dataType="Float">1</clearDepth>
                        <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                        <input />
                        <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                        <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                          <contentPath />
                        </output>
                        <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                      </item>
                      <item dataType="Struct" type="Duality.Components.Camera+Pass" id="1180286830">
                        <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba">
                          <A dataType="Byte">0</A>
                          <B dataType="Byte">0</B>
                          <G dataType="Byte">0</G>
                          <R dataType="Byte">0</R>
                        </clearColor>
                        <clearDepth dataType="Float">1</clearDepth>
                        <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="None" value="0" />
                        <input />
                        <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="OrthoScreen" value="1" />
                        <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                          <contentPath />
                        </output>
                        <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
                      </item>
                    </_items>
                    <_size dataType="Int">2</_size>
                    <_version dataType="Int">2</_version>
                  </passes>
                  <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Parallax" value="1" />
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
                </item>
              </_items>
              <_size dataType="Int">2</_size>
              <_version dataType="Int">4</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3178927224" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3062406473">
                  <item dataType="Type" id="2487712654" value="Duality.Components.Transform" />
                  <item dataType="Type" id="105575498" value="Duality.Components.Camera" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="1931144000">
                  <item dataType="ObjectRef">1901178774</item>
                  <item dataType="ObjectRef">78139649</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">1901178774</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="1835636587">8mNdFP8BhUCkSPG6sxtEFQ==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Camera</name>
            <parent />
            <prefabLink />
          </camera>
          <gameobj dataType="ObjectRef">2347849529</gameobj>
          <m_FiringDelayCounter dataType="Float">0</m_FiringDelayCounter>
          <navigation dataType="Struct" type="naves.NavigationSystem" id="1799098616">
            <player dataType="ObjectRef">1432440839</player>
            <ship dataType="ObjectRef">2347849529</ship>
          </navigation>
          <power dataType="Struct" type="naves.PowerSystem" id="3604261577">
            <player dataType="ObjectRef">1432440839</player>
          </power>
          <radarSystem dataType="Struct" type="naves.RadarSystem" id="3746475942">
            <player dataType="ObjectRef">1432440839</player>
            <ship dataType="ObjectRef">2347849529</ship>
          </radarSystem>
          <text dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="4090478351">
            <active dataType="Bool">true</active>
            <blockAlign dataType="Enum" type="Duality.Alignment" name="BottomRight" value="10" />
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <gameobj dataType="ObjectRef">2347849529</gameobj>
            <iconMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath />
            </iconMat>
            <offset dataType="Int">0</offset>
            <text dataType="Struct" type="Duality.Drawing.FormattedText" id="643361922">
              <flowAreas />
              <fonts dataType="Array" type="Duality.ContentRef`1[[Duality.Resources.Font]][]" id="2369299088">
                <item dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Font]]">
                  <contentPath dataType="String">Default:Font:GenericMonospace10</contentPath>
                </item>
              </fonts>
              <icons />
              <lineAlign dataType="Enum" type="Duality.Alignment" name="Left" value="1" />
              <maxHeight dataType="Int">0</maxHeight>
              <maxWidth dataType="Int">0</maxWidth>
              <sourceText dataType="String">hola</sourceText>
              <wrapMode dataType="Enum" type="Duality.Drawing.FormattedText+WrapMode" name="Word" value="1" />
            </text>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </text>
        </item>
        <item dataType="ObjectRef">4090478351</item>
      </_items>
      <_size dataType="Int">5</_size>
      <_version dataType="Int">5</_version>
    </compList>
    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1629941834" surrogate="true">
      <header />
      <body>
        <keys dataType="Array" type="System.Object[]" id="3885427560">
          <item dataType="ObjectRef">2487712654</item>
          <item dataType="Type" id="890898988" value="Duality.Components.Renderers.SpriteRenderer" />
          <item dataType="Type" id="3007249334" value="Duality.Components.Physics.RigidBody" />
          <item dataType="Type" id="2514604664" value="naves.Player" />
          <item dataType="Type" id="2320090514" value="Duality.Components.Renderers.TextRenderer" />
        </keys>
        <values dataType="Array" type="System.Object[]" id="1744614686">
          <item dataType="ObjectRef">413197165</item>
          <item dataType="ObjectRef">3990016097</item>
          <item dataType="ObjectRef">1115658757</item>
          <item dataType="ObjectRef">1432440839</item>
          <item dataType="ObjectRef">4090478351</item>
        </values>
      </body>
    </compMap>
    <compTransform dataType="ObjectRef">413197165</compTransform>
    <identifier dataType="Struct" type="System.Guid" surrogate="true">
      <header>
        <data dataType="Array" type="System.Byte[]" id="2469330388">FRFDYrILAEayyeL90uBwLA==</data>
      </header>
      <body />
    </identifier>
    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
    <name dataType="String">ShipOne</name>
    <parent />
    <prefabLink />
  </objTree>
</root>
<!-- XmlFormatterBase Document Separator -->
