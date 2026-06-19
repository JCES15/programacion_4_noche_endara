import 'package:flutter/material.dart';

class CatalogoBasicos extends StatelessWidget {
  const CatalogoBasicos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widgets básicos')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // ── Text básico ───────────────────────────────────────────────────────
          const Text(
            'nginx-proxy: En línea',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold, // .w100–.w900  ·  .bold = .w700
              color: Color.fromARGB(255, 156, 24, 123),
              letterSpacing: 0.5,
              fontStyle: FontStyle.normal, // .italic
              decoration: TextDecoration.underline,
              shadows: [
                Shadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(2, 2),
                ),
              ],
              //             .underline  .lineThrough  .overline
            ),
          ),
          const SizedBox(height: 8),

          // ── Alineación y desbordamiento ───────────────────────────────────────
          SizedBox(
            width: double.infinity,
            child: Text(
              'api-gateway-produccion-region-us-east → sin respuesta',
              textAlign:
                  TextAlign.left, // .left  .right  .justify  .start  .end
              maxLines: 3,
              overflow: TextOverflow.fade, // .clip  .fade  .visible  ellipsis
            ),
          ),
          const SizedBox(height: 8),

          // ── Text.rich — estilos distintos en un solo widget ───────────────────
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Estado: ',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                TextSpan(
                  text: 'CRÍTICO',
                  style: TextStyle(
                    color: Color.fromARGB(255, 223, 178, 31),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' — última revisión hace 5 min',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),

          // ── SelectableText — el usuario puede seleccionar y copiar ───────────
          const SelectableText(
            '10.0.0.12:5432',
            style: TextStyle(fontFamily: 'monospace', fontSize: 14),
          ),
          const Divider(height: 32),

          // Agrega a children: [ ... ]
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.check_circle, size: 80, color: Colors.green),
              Icon(Icons.cancel, size: 40, color: Colors.red),
              Icon(
                Icons.warning_amber,
                size: 14,
                color: Color.fromARGB(255, 124, 91, 41),
              ),
              Icon(
                Icons.dns,
                size: 40,
                color: Color.fromARGB(255, 216, 98, 19),
              ),
              Icon(
                Icons.wifi_off,
                size: 25,
                color: Color.fromARGB(255, 170, 10, 10),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Icon(
            Icons.settings,
            size: 24,
            color: Colors.blueGrey,
            semanticLabel: 'Configuración',
          ), // leído por lectores de pantalla
          Tooltip(
            message: 'Servidor activo por Siempre',
            child: Icon(
              Icons.warning_amber,
              size: 40,
              color: Color.fromARGB(255, 13, 105, 25),
            ),
          ),
          const Divider(height: 32),
          // Agrega a children: [ ... ]

          //   BOTONES   //

          // ── Cuatro variantes ──────────────────────────────────────────────────
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('ElevatedButton'),
              ),
              FilledButton(onPressed: () {}, child: const Text('FilledButton')),
              OutlinedButton(
                onPressed: () {},
                child: const Text('OutlinedButton'),
              ),
              TextButton(onPressed: () {}, child: const Text('TextButton')),
              ElevatedButton(onPressed: null, child: const Text('Desactivado')),
              //             ↑ onPressed: null → desactiva el botón visualmente
            ],
          ),
          const SizedBox(height: 40),

          // ── Variantes .icon ───────────────────────────────────────────────────
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.refresh, size: 18),
                label: const Text('Reiniciar'),
              ),
              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.stop, size: 18),
                label: const Text('Detener'),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings),
                color: const Color.fromARGB(255, 226, 188, 16),
                iconSize: 40,
              ),
            ],
          ),
          const SizedBox(height: 12),

          // ── Botón con estilo personalizado ────────────────────────────────────
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 17, 223, 86),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 10,
              minimumSize: const Size(
                double.infinity,
                5,
              ), // ocupa todo el ancho
            ),
            child: const Text(
              'Acción crítica',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(height: 32),

          // Agrega a children: [ ... ]
          Card(
            elevation: 0,
            color: const Color.fromARGB(255, 161, 146, 7),
            margin: const EdgeInsets.only(bottom: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.dns, color: Colors.indigo),
              title: const Text('nginx-proxy'),
              subtitle: const Text('10.0.0.5 · 45ms'),
              trailing: const Icon(
                Icons.circle,
                color: Color.fromARGB(255, 17, 106, 223),
                size: 12,
              ),
              onTap: () {}, // toda la fila queda tocable
            ),
          ),
          Card(
            elevation: 12,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 35, 204, 196),
                child: const Icon(
                  Icons.cancel,
                  color: Color.fromARGB(255, 228, 81, 71),
                  size: 30,
                ),
              ),
              title: const Text('backup-worker'),

              subtitle: const Text('sin respuesta · 10.0.0.30'),
              trailing: TextButton(
                onPressed: () {},
                child: const Text('MIRAR'),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
            ),
          ),
          const Divider(height: 32),

          // Agrega a children: [ ... ]
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              const Chip(label: Text('nginx')),

              const Chip(
                avatar: Icon(Icons.check, size: 16, color: Colors.white),
                label: Text('TLS 1.3'),
                backgroundColor: Colors.green,
                labelStyle: TextStyle(color: Colors.white, fontSize: 12),
              ),
              FilterChip(
                label: const Text('HTTP/2'),
                selected: false,
                onSelected: (_) {},
              ),
              ActionChip(
                label: const Text('Ver logs'),
                avatar: const Icon(Icons.open_in_new, size: 16),
                onPressed: () {},
              ),
            ],
          ),
          const Divider(height: 32),




          // Agrega a children: [ ... ]

          // ── Circular ──────────────────────────────────────────────────────────
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              SizedBox(
                width: 48,
                height: 48,
                child: CircularProgressIndicator(),
                
              ), // value: null → animación continua
              SizedBox(
                width: 48,
                height: 48,
                child: CircularProgressIndicator(
                  backgroundColor: Color.fromARGB(255, 224, 99, 99),
                  value: null, // 70 %
                  color: Colors.green,
                  strokeWidth: 6,
                ),
              ),
              SizedBox(
                width: 48,
                height: 48,
                child: CircularProgressIndicator(
                  value: 0.3,
                  color: Colors.red,
                  strokeWidth: 3,
                  strokeCap: StrokeCap.round, // puntas redondeadas
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // ── Lineal ────────────────────────────────────────────────────────────
          const LinearProgressIndicator(), // indeterminado
          const SizedBox(height: 8),
          const LinearProgressIndicator(
            value: 0.6,
            color: Colors.indigo,
          ), // 60 %
          const SizedBox(height: 8),
          const LinearProgressIndicator(
            value: 1.0,
            color: Colors.green,
            minHeight: 12, // barra más gruesa (default: 4)
          ),
          const Divider(height: 32),
        ],
      ),
    );
  }
}
